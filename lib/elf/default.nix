{ lib }:

let
  constants = import ./constants.nix;
  K = constants;

  # FIXME figure out better or appropriate defaults to use.
  DEFAULT_LOAD_ADDR = 10 * 16 * 1024;

  elfCtypes = with lib.ctypes; {
    Elf32_Addr  = toUint32;
    Elf32_Half  = toUint16;
    Elf32_Off   = toUint32;
    Elf32_Sword = toInt32;
    Elf32_Word  = toUint32;
    Elf32_Lword = toUint64;

    Elf64_Addr   = toUint64;
    Elf64_Half   = toUint16;
    Elf64_Off    = toUint64;
    Elf64_Sword  = toInt32;
    Elf64_Sxword = toInt64;
    Elf64_Word   = toUint32;
    Elf64_Lword  = toUint64;
    Elf64_Xword  = toUint64;
  };

  sized_types = {
    "64" = with elfCtypes; {
      ElfMach_Addr = Elf64_Addr;
      ElfMach_Half = Elf64_Half;
      ElfMach_Off = Elf64_Off;
      #ElfMach_ = Elf64_Sword;
      #ElfMach_ = Elf64_Sxword;
      ElfMach_Word = Elf64_Word;
      ElfMach_Lword = Elf64_Lword;
      ElfMach_Xword = Elf64_Xword;
    };
    "32" = with elfCtypes; {
      ElfMach_Addr   = Elf32_Addr;
      ElfMach_Half   = Elf32_Half;
      ElfMach_Off    = Elf32_Off;
      #ElfMach_Sword = Elf32_Sword;
      ElfMach_Sxword = throw "No Elf32_Sxword";
      ElfMach_Word   = Elf32_Word;
      ElfMach_Lword  = Elf32_Lword;
      ElfMach_Xword  = throw "No Elf32_Xword";
    };
  };
in
rec {
  ELF = {
    inherit constants;

    # Size of the types defined afterward.
    sizeof = {
      Elf64_Ehdr = builtins.length (ELF.mkElfHeader { bits = 64; e_entry = 0; e_ehsize = 0; });
      Elf64_Phdr = builtins.length (ELF.mkProgramHeader { bits = 64; load_addr = 0; p_filesz = 0; });
      Elf64_Shdr = builtins.length (ELF.mkSectionHeader { bits = 64; });
    };

    # ELF header, first thing in an ELF file.
    mkElfHeader =
      { bits    # 32 or 64
      , e_entry
      , e_flags ? 0

      , e_ehsize ? ELF.sizeof."Elf${toString bits}_Ehdr"

      , e_phoff ? e_ehsize
      , e_phentsize ? ELF.sizeof."Elf${toString bits}_Phdr"

      , e_shoff ? (e_phoff + e_phentsize)
      , e_shentsize ? ELF.sizeof."Elf${toString bits}_Shdr"
      , e_shnum ? 0
      , e_shstrndx ? K.ELF_SHDR.SHN_UNDEF
      }:
      let
        inherit (sized_types."${toString bits}")
          ElfMach_Addr
          ElfMach_Off
          ElfMach_Word
          ElfMach_Half
        ;
      in
      builtins.concatLists [
        # https://refspecs.linuxfoundation.org/elf/gabi4+/ch4.eheader.html
        /* 0x0000 */
        K.EI_MAG
        [
          /* 0x04 */ K.EI_CLASS.ELFCLASS64
          /* 0x05 */ K.EI_DATA.ELFDATA2LSB
          /* 0x06 */ K.EI_VERSION.EV_CURRENT
          /* 0x07 */ K.EI_OSABI.ELFOSABI_NONE
          /* 0x08 */ K.EI_ABIVERSION.unspecified
        ]
        /* 0x0009 */
        K.EI_PAD

        /* 0x000010 */
        (ElfMach_Half K.ET_EXEC)
        (ElfMach_Half K.EM_X86_64)
        (ElfMach_Word K.EV_CURRENT)

        /* 0x000018 */
        # e_entry      Entry point.
        (ElfMach_Addr        e_entry)
        /* 0x000020 */
        (ElfMach_Off         e_phoff) # e_phoff      Program header file offset.
        /* 0x000028 */
        (ElfMach_Off         e_shoff) # e_shoff      Section header file offset.

        (ElfMach_Word        e_flags) # e_flags      Architecture-specific flags.
        (ElfMach_Half       e_ehsize) # e_ehsize     Size of ELF header in bytes.
        (ElfMach_Half    e_phentsize) # e_phentsize  Size of program header entry.
        (ElfMach_Half              1) # e_phnum      Number of program header entries.
        (ElfMach_Half    e_shentsize) # e_shentsize  Size of section header entry.
        (ElfMach_Half        e_shnum) # e_shnum      Number of section header entries.
        (ElfMach_Half     e_shstrndx) # e_shstrndx   String table section header index. (NOTE: 0 == undefined, missing, irrelevant)
      ]
    ;
    mkProgramHeader =
      { load_addr
      , bits
      , type ? "PT_LOAD"
      , p_filesz
      , p_memsz ? p_filesz
      }:
      let
        inherit (constants) ELF_PHDR;
        # TODO: when type != PT_LOAD, some other flags?
        flags = with constants.ELF_PHDR; PF_X + PF_R;
      in
      builtins.concatLists (
        let
          inherit (sized_types."${toString bits}")
            ElfMach_Addr
            ElfMach_Off
            ElfMach_Word
            ElfMach_Xword
          ;
        in
        [
          (ElfMach_Word        ELF_PHDR.${type}) # p_type   Entry type.
          (ElfMach_Word                   flags) # p_flags  Access permission flags.
          (ElfMach_Off                        0) # p_offset File offset of contents.
          (ElfMach_Addr               load_addr) # p_vaddr  Virtual address in memory image.
          (ElfMach_Addr               load_addr) # p_paddr  Physical address (not used).
          (ElfMach_Xword               p_filesz) # p_filesz Size of contents in file.
          (ElfMach_Xword                p_memsz) # p_memsz  Size of contents in memory.
          (ElfMach_Xword      (2 * 1024 * 1024)) # p_align  Alignment in memory and file.
        ]
      )
    ;
    mkSectionHeader =
      { bits
      , sh_name ? 0
      , sh_type ? K.ELF_SHDR.SHT_NULL
      , sh_offset ? 0
      , sh_addr ? 0
      , sh_size ? 0
      , sh_flags ? 0
      }:
      builtins.concatLists (
        let
          inherit (sized_types."${toString bits}")
            ElfMach_Addr
            ElfMach_Off
            ElfMach_Word
            ElfMach_Xword
          ;
        in
        [
          (ElfMach_Word           sh_name) # sh_name        Name index in string table
          (ElfMach_Word           sh_type) # sh_type        Section content and semantics
          (ElfMach_Xword         sh_flags) # sh_flags       Misc section attribtues
          (ElfMach_Addr           sh_addr) # sh_addr        Address of first byte, or 0 if not in memory
          (ElfMach_Off          sh_offset) # sh_offset      Section offset from beginning of file
          (ElfMach_Xword          sh_size) # sh_size        Length of section in file
          (ElfMach_Word                 0) # sh_link        (Type-dependent data)
          (ElfMach_Word                 0) # sh_info        (Type-dependent info)
          (ElfMach_Xword                0) # sh_addralign   Alignment constraints (powers of two)
          (ElfMach_Xword                0) # sh_entsize     Entry size for fixed-size entries, or 0
        ]
      )
    ;
    mkShFlags =
      let
        # Same as `readelf` uses.
        #    W (write), A (alloc), X (execute), M (merge), S (strings), I (info),
        #    L (link order), O (extra OS processing required), G (group), T (TLS),
        #    C (compressed), x (unknown), o (OS specific), E (exclude),
        #    D (mbind), l (large), p (processor specific)
        letterValues = {
          "W" = K.ELF_SHDR.SHF_WRITE;
          "A" = K.ELF_SHDR.SHF_ALLOC;
          "X" = K.ELF_SHDR.SHF_EXECINSTR;
          "M" = K.ELF_SHDR.SHF_MERGE;
          "S" = K.ELF_SHDR.SHF_STRINGS;
          "I" = K.ELF_SHDR.SHF_INFO_LINK;

          "L" = K.ELF_SHDR.SHF_LINK_ORDER;
          "O" = K.ELF_SHDR.SHF_OS_NONCONFORMING;
          "G" = K.ELF_SHDR.SHF_GROUP;
          "T" = K.ELF_SHDR.SHF_TLS;

          "C" = K.ELF_SHDR.SHF_COMPRESSED;
        };
      in
      flags:
      if builtins.isInt flags
      then flags
      else if builtins.isString flags
      then (
        builtins.foldl'
        (
          flags: letter:
          flags + letterValues."${letter}"
        )
        0
        (lib.chars flags)
      ) else (throw "argument of unexpected type (${builtins.typeOf flags}) given to mkShFlags")
    ;
    defaultSectionFlags = {
      # Some default flags...
      ".text" = "AX"; #K.ELF_SHDR.SHF_ALLOC + K.ELF_SHDR.SHF_EXECINSTR; # FIXME: use "AX"
      ".rodata" = "A"; # K.ELF_SHDR.SHF_ALLOC; # FIXME: use "A"
    };
  };

  # Given a `bytes` function for a section...
  #   - When a list, returns it
  #   - When a function, calls it with all required arguments set to `0`.
  bogusSectionBytes =
    bytes:
    if builtins.isList bytes
    then bytes
    else if builtins.isFunction bytes
    then (
      let
        fnArgs = builtins.functionArgs bytes;
        requiredArgs =
          builtins.filter
          (name: fnArgs."${name}" == false)
          (builtins.attrNames fnArgs)
        ;
        args =
          builtins.listToAttrs (
            builtins.map
            (name: { inherit name; value = 0; })
            (requiredArgs)
          )
        ;
      in
      bytes args
    ) else (throw "`bytes` attribute of unexpected type (${builtins.typeOf bytes})")
  ;

  mkElfSection =
    { name ? null  # Name of the section, or null for unnamed section.
    , type         # Type, either the constant name (SHT_PROGBITS) or the value (1).
    , bytes        # bytes, either a list of bytes, or a set-pattern function returning a list of bytes.
    , flags ? null # Flags for the section
    }:
    let type' = type; in # Break reference
    let
      # Eagerly resolve to integer type
      type =
        if builtins.isInt type'
        then type'
        else K.ELF_SHDR."${type'}"
      ;
    in
    {
      inherit name;
      inherit bytes;
      inherit type;
      # Pick appropirate default flag for some well-known sections
      flags =
        ELF.mkShFlags (
          if !builtins.isNull flags
          then flags
          else
            if type == K.ELF_SHDR."SHT_PROGBITS"
            then ELF.defaultSectionFlags."${name}" or 0
            else 0
        )
      ;
      length = builtins.length (bogusSectionBytes bytes);
    }
  ;

  #
  # NOTE: section names *must be unique*, or else expect unexpected behaviour.
  #       (repeating null section bytes is fine.)
  #
  mkElf =
    { bits ? 64 /* FIXME: determine how we expose the architecture */
    , load_addr ? DEFAULT_LOAD_ADDR
    , type ? "PT_LOAD" # An executable
    , sections # ***list*** of sections
    }:
    # Algorithm:
    #   - Pick all sections.
    #   - Collect offsets into attrs.
    #   - Collect section headers.
    #   - Collect program bytes by calling bytes section appropriately.
    let sections' = sections; in
    let
      dot_text_section =
        sections_by_name.".text" or null
      ;

      entry_point =
        if builtins.isNull dot_text_section
        then 0
        else dot_text_section.addr
      ;

      elf_headers_length =
        ELF.sizeof."Elf${toString bits}_Ehdr"
        + ELF.sizeof."Elf${toString bits}_Phdr"
      ;

      elf_header = ELF.mkElfHeader {
        inherit bits;
        e_entry = entry_point;
        e_shoff = elf_headers_length;
        e_shnum = sections_count;
        e_shstrndx = 1; # hardcoded since we know it's .shstrtab is first (after null)
      };

      program_header = ELF.mkProgramHeader {
        inherit bits;
        inherit load_addr;
        p_filesz =
          let
            last = lib.last sections;
          in
          last.offset + last.length
        ;
      };

      section_names =
        lib.cstrings.mkCStrings (
          [
            "(unnamed)"
            ".shstrtab"
          ] ++
          (
            builtins.filter 
            (name: name != null)
            (builtins.map (section: section.name) sections')
          )
        )
      ;

      shstrtab =
        mkElfSection {
          name = ".shstrtab";
          type = "SHT_STRTAB";
          bytes = section_names.bytes;
        }
      ;

      # FIXME: find doc about whether this is needed or just a useful workaround for e_shstrndx
      null_section =
        mkElfSection {
          type = "SHT_NULL";
          bytes = [];
        }
      ;

      innate_sections = [ null_section shstrtab ];

      sections =
        (
          builtins.foldl'
          (prev: section:
            {
              offset = prev.offset + section.length;
              sections = prev.sections ++ [
                (section // {
                  # FIXME: this is not right for things that want to be loaded elsewhere
                  addr = load_addr + prev.offset;
                  inherit (prev) offset;
                })
              ];
            }
          )
          {
            offset = total_headers_length;
            sections = [];
          }
          (innate_sections ++ sections')
        ).sections
      ;

      sections_by_name =
        builtins.listToAttrs (
          lib.mapReverse (section: { inherit (section) name; value = section; }) (
            builtins.filter
            (section: section.name != null)
            sections
          )
        )
      ;

      sections_count =
        (builtins.length sections') + (builtins.length innate_sections)
      ;

      # NOTE: we cannot rely on `section_headers` since it needs this length to compute offsets.
      section_headers_length = ELF.sizeof."Elf${toString bits}_Shdr" * sections_count;

      total_headers_length =
        elf_headers_length + section_headers_length
      ;

      section_headers =
        let
          headers =
            builtins.map (
              section:
              ELF.mkSectionHeader {
                sh_name =
                  if builtins.isString section.name
                  then section_names.offsets."${section.name}"
                  else 0
                ;
                inherit bits;
                sh_type = section.type;
                sh_offset = section.offset;
                sh_size = section.length;
                sh_flags = section.flags;
                sh_addr = section.addr;
              }
            ) sections
          ;
        in
        rec {
          bytes = builtins.concatLists headers;
          length = builtins.length bytes;
        }
      ;

      sections_bytes = builtins.concatLists (
        builtins.map (
          section:
          if builtins.isList section.bytes
          then section.bytes
          else (section.bytes {
            load_addr = load_addr;
            section_addr = section.add;
            sections = sections_by_name;
          })
        ) sections
      );
    in
    {
      inherit section_names;
      inherit section_headers;
      inherit section_headers_length;
      inherit total_headers_length;
      bytes = builtins.concatLists [
        elf_header
        program_header
        section_headers.bytes
        sections_bytes
      ];
      inherit sections;
    }
  ;
}
