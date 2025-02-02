{ lib }:

{
  linux = {
    # Architecture-independent constants and implementation details.
    generic = {
      STDIN  = 0;
      STDOUT = 1;
      STDERR = 2;
      # Special value used to indicate openat should use the current working directory.
      AT_FDCWD = -100;

      dataModels = {
        LP64 =
          let
            dataModel = lib.ctypes.dataModels.LP64;
          in
          dataModel // {
            # Most 32 bit architectures use "unsigned int" size_t,
            # and all 64 bit architectures use "unsigned long" size_t.
            "size_t"  = dataModel."unsigned long";
            "umode_t" = dataModel."unsigned short";
          }
        ;
      };
    };
  };
}
