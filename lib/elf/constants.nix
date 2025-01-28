# NOTE: no `lib`, only numeric (and list) constants here.
{
  # Identification
  EI_MAG = [
    127 69 76 70 # | 7f 45 4c 46 | .ELF
  ];
  EI_CLASS = {
    ELFCLASSNONE = 0;
    ELFCLASS32   = 1;
    ELFCLASS64   = 2;
  };
  EI_DATA = {
    ELFDATANONE = 0; # Invalid data encoding
    ELFDATA2LSB = 1; # Encoding ELFDATA2LSB specifies 2's complement values, with the least significant byte occupying the lowest address.
    ELFDATA2MSB = 2; # Encoding ELFDATA2MSB specifies 2's complement values, with the most significant byte occupying the lowest address.
  };
  EI_VERSION = {
    EV_NONE =    0;
    EV_CURRENT = 1;
  };
  EI_OSABI = {
    ELFOSABI_NONE    =  0; # No extensions or unspecified
    ELFOSABI_HPUX    =  1; # Hewlett-Packard HP-UX
    ELFOSABI_NETBSD  =  2; # NetBSD
    ELFOSABI_LINUX   =  3; # Linux
    ELFOSABI_SOLARIS =  6; # Sun Solaris
    ELFOSABI_AIX     =  7; # AIX
    ELFOSABI_IRIX    =  8; # IRIX
    ELFOSABI_FREEBSD =  9; # FreeBSD
    ELFOSABI_TRU64   = 10; # Compaq TRU64 UNIX
    ELFOSABI_MODESTO = 11; # Novell Modesto
    ELFOSABI_OPENBSD = 12; # Open BSD
    ELFOSABI_OPENVMS = 13; # Open VMS
    ELFOSABI_NSK     = 14; # Hewlett-Packard Non-Stop Kernel
    # 64-255 # Architecture-specific value range
  };
  EI_ABIVERSION = {
    unspecified = 0;
  };
  # Computed, but trivial.
  EI_PAD = builtins.genList (_: 0) (16 - 9);

  # Type
  ET_NONE = 0; # No file type
  ET_REL  = 1; # Relocatable file
  ET_EXEC = 2; # Executable file
  ET_DYN  = 3; # Shared object file
  ET_CORE = 4; # Core file
  #ET_LOOS   = 0xfe00; # Operating system-specific
  #ET_HIOS   = 0xfeff; # Operating system-specific
  #ET_LOPROC = 0xff00; # Processor-specific
  #ET_HIPROC = 0xffff; # Processor-specific

  # Machine
  EM_NONE          =   0; # No machine
  EM_M32           =   1; # AT&T WE 32100
  EM_SPARC         =   2; # SPARC
  EM_386           =   3; # Intel 80386
  EM_68K           =   4; # Motorola 68000
  EM_88K           =   5; # Motorola 88000
  EM_860           =   7; # Intel 80860
  EM_MIPS          =   8; # MIPS I Architecture
  EM_S370          =   9; # IBM System/370 Processor
  EM_MIPS_RS3_LE   =  10; # MIPS RS3000 Little-endian
  EM_PARISC        =  15; # Hewlett-Packard PA-RISC
  EM_VPP500        =  17; # Fujitsu VPP500
  EM_SPARC32PLUS   =  18; # Enhanced instruction set SPARC
  EM_960           =  19; # Intel 80960
  EM_PPC           =  20; # PowerPC
  EM_PPC64         =  21; # 64-bit PowerPC
  EM_S390          =  22; # IBM System/390 Processor
  EM_V800          =  36; # NEC V800
  EM_FR20          =  37; # Fujitsu FR20
  EM_RH32          =  38; # TRW RH-32
  EM_RCE           =  39; # Motorola RCE
  EM_ARM           =  40; # Advanced RISC Machines ARM
  EM_ALPHA         =  41; # Digital Alpha
  EM_SH            =  42; # Hitachi SH
  EM_SPARCV9       =  43; # SPARC Version 9
  EM_TRICORE       =  44; # Siemens TriCore embedded processor
  EM_ARC           =  45; # Argonaut RISC Core, Argonaut Technologies Inc.
  EM_H8_300        =  46; # Hitachi H8/300
  EM_H8_300H       =  47; # Hitachi H8/300H
  EM_H8S           =  48; # Hitachi H8S
  EM_H8_500        =  49; # Hitachi H8/500
  EM_IA_64         =  50; # Intel IA-64 processor architecture
  EM_MIPS_X        =  51; # Stanford MIPS-X
  EM_COLDFIRE      =  52; # Motorola ColdFire
  EM_68HC12        =  53; # Motorola M68HC12
  EM_MMA           =  54; # Fujitsu MMA Multimedia Accelerator
  EM_PCP           =  55; # Siemens PCP
  EM_NCPU          =  56; # Sony nCPU embedded RISC processor
  EM_NDR1          =  57; # Denso NDR1 microprocessor
  EM_STARCORE      =  58; # Motorola Star*Core processor
  EM_ME16          =  59; # Toyota ME16 processor
  EM_ST100         =  60; # STMicroelectronics ST100 processor
  EM_TINYJ         =  61; # Advanced Logic Corp. TinyJ embedded processor family
  EM_X86_64        =  62; # AMD x86-64 architecture
  EM_PDSP          =  63; # Sony DSP Processor
  EM_PDP10         =  64; # Digital Equipment Corp. PDP-10
  EM_PDP11         =  65; # Digital Equipment Corp. PDP-11
  EM_FX66          =  66; # Siemens FX66 microcontroller
  EM_ST9PLUS       =  67; # STMicroelectronics ST9+ 8/16 bit microcontroller
  EM_ST7           =  68; # STMicroelectronics ST7 8-bit microcontroller
  EM_68HC16        =  69; # Motorola MC68HC16 Microcontroller
  EM_68HC11        =  70; # Motorola MC68HC11 Microcontroller
  EM_68HC08        =  71; # Motorola MC68HC08 Microcontroller
  EM_68HC05        =  72; # Motorola MC68HC05 Microcontroller
  EM_SVX           =  73; # Silicon Graphics SVx
  EM_ST19          =  74; # STMicroelectronics ST19 8-bit microcontroller
  EM_VAX           =  75; # Digital VAX
  EM_CRIS          =  76; # Axis Communications 32-bit embedded processor
  EM_JAVELIN       =  77; # Infineon Technologies 32-bit embedded processor
  EM_FIREPATH      =  78; # Element 14 64-bit DSP Processor
  EM_ZSP           =  79; # LSI Logic 16-bit DSP Processor
  EM_MMIX          =  80; # Donald Knuth's educational 64-bit processor
  EM_HUANY         =  81; # Harvard University machine-independent object files
  EM_PRISM         =  82; # SiTera Prism
  EM_AVR           =  83; # Atmel AVR 8-bit microcontroller
  EM_FR30          =  84; # Fujitsu FR30
  EM_D10V          =  85; # Mitsubishi D10V
  EM_D30V          =  86; # Mitsubishi D30V
  EM_V850          =  87; # NEC v850
  EM_M32R          =  88; # Mitsubishi M32R
  EM_MN10300       =  89; # Matsushita MN10300
  EM_MN10200       =  90; # Matsushita MN10200
  EM_PJ            =  91; # picoJava
  EM_OPENRISC      =  92; # OpenRISC 32-bit embedded processor
  EM_ARC_A5        =  93; # ARC Cores Tangent-A5
  EM_XTENSA        =  94; # Tensilica Xtensa Architecture
  EM_VIDEOCORE     =  95; # Alphamosaic VideoCore processor
  EM_TMM_GPP       =  96; # Thompson Multimedia General Purpose Processor
  EM_NS32K         =  97; # National Semiconductor 32000 series
  EM_TPC           =  98; # Tenor Network TPC processor
  EM_SNP1K         =  99; # Trebia SNP 1000 processor
  EM_ST200         = 100; # STMicroelectronics (www.st.com) ST200 microcontroller

  # Version
  EV_NONE    = 0;
  EV_CURRENT = 1;

  ELF_PHDR = {
    # p_type
    PT_NULL    = 0; # Unused
    PT_LOAD    = 1; # Loadable segment (i.e. an executable)
    PT_DYNAMIC = 2; # Dynamic linking information
    PT_INTERP  = 3; # Pathname of interpreter
    PT_NOTE    = 4; # Auxiliary information
    PT_SHLIB   = 5; # (not used)
    PT_PHDR    = 6; # Location of the program header
    PT_TLS     = 7; # Thread local storage
    #PT_LOOS   = 0x60000000;
    #PT_HIOS   = 0x6fffffff;
    #PT_LOPROC = 0x70000000;
    #PT_HIPROC = 0x7fffffff;
    # p_flags
    PF_X = 1; # Execute
    PF_W = 2; # Write
    PF_R = 4; # Read
    #PF_MASKOS   = 0x0ff00000 # Unspecified
    #PF_MASKPROC = 0xf0000000 # Unspecified
  };

  ELF_SHDR = {
    # sh_type
    SHT_NULL             =  0; # inactive
    SHT_PROGBITS         =  1; # program defined information
    SHT_SYMTAB           =  2; # symbol table section
    SHT_STRTAB           =  3; # string table section
    SHT_RELA             =  4; # relocation section with addends
    SHT_HASH             =  5; # symbol hash table section
    SHT_DYNAMIC          =  6; # dynamic section
    SHT_NOTE             =  7; # note section
    SHT_NOBITS           =  8; # no space section
    SHT_REL              =  9; # relocation section - no addends
    SHT_SHLIB            = 10; # reserved - purpose unknown
    SHT_DYNSYM           = 11; # dynamic symbol table section
    SHT_INIT_ARRAY       = 14; # Initialization function pointers.
    SHT_FINI_ARRAY       = 15; # Termination function pointers.
    SHT_PREINIT_ARRAY    = 16; # Pre-initialization function ptrs.
    SHT_GROUP            = 17; # Section group.
    SHT_SYMTAB_SHNDX     = 18; # Section indexes (see SHN_XINDEX).
    #SHT_LOOS             = 0x60000000; # First of OS specific semantics
    #SHT_LOSUNW           = 0x6ffffff4;
    #SHT_SUNW_dof         = 0x6ffffff4;
    #SHT_SUNW_cap         = 0x6ffffff5;
    #SHT_GNU_ATTRIBUTES   = 0x6ffffff5;
    #SHT_SUNW_SIGNATURE   = 0x6ffffff6;
    #SHT_GNU_HASH         = 0x6ffffff6;
    #SHT_GNU_LIBLIST      = 0x6ffffff7;
    #SHT_SUNW_ANNOTATE    = 0x6ffffff7;
    #SHT_SUNW_DEBUGSTR    = 0x6ffffff8;
    #SHT_SUNW_DEBUG       = 0x6ffffff9;
    #SHT_SUNW_move        = 0x6ffffffa;
    #SHT_SUNW_COMDAT      = 0x6ffffffb;
    #SHT_SUNW_syminfo     = 0x6ffffffc;
    #SHT_SUNW_verdef      = 0x6ffffffd;
    #SHT_GNU_verdef       = 0x6ffffffd; # Symbol versions provided
    #SHT_SUNW_verneed     = 0x6ffffffe;
    #SHT_GNU_verneed      = 0x6ffffffe; # Symbol versions required
    #SHT_SUNW_versym      = 0x6fffffff;
    #SHT_GNU_versym       = 0x6fffffff; # Symbol version table
    #SHT_HISUNW           = 0x6fffffff;
    #SHT_HIOS             = 0x6fffffff; # Last of OS specific semantics
    #SHT_LOPROC           = 0x70000000; # reserved range for processor
    #SHT_X86_64_UNWIND    = 0x70000001; # unwind information
    #SHT_AMD64_UNWIND     = SHT_X86_64_UNWIND;

    SHN_UNDEF  = 0;

    SHF_WRITE            =     1; # Section contains writable data.
    SHF_ALLOC            =     2; # Section occupies memory.
    SHF_EXECINSTR        =     4; # Section contains instructions.
    SHF_MERGE            =    16; # Section may be merged.
    SHF_STRINGS          =    32; # Section contains strings.
    SHF_INFO_LINK        =    64; # sh_info holds section index.
    SHF_LINK_ORDER       =   128; # Special ordering requirements.
    SHF_OS_NONCONFORMING =   256; # OS-specific processing required.
    SHF_GROUP            =   512; # Member of section group.
    SHF_TLS              =  1024; # Section contains TLS data.
    SHF_COMPRESSED       =  2048; # Section contains compressed data.
    #SHF_MASKOS           = 0x0ff00000; # OS-specific semantics.
    #SHF_MASKPROC         = 0xf0000000; # Processor-specific semantics.
  };
}
