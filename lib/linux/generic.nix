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
    };
  };
}
