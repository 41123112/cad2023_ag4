{ pkgs }: {
  deps = [
    pkgs.libev
    pkgs.vimHugeX
    pkgs.gd
    pkgs.gnuplot
    pkgs.raylib
  ];
  env = {
    PYTHON_LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath [
      pkgs.libev
    ];
  };
}