# nix/modules/home-manager.nix — auto-generated from smallvec.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.smallvec; in {
  options.programs.smallvec = {
    enable = lib.mkEnableOption "smallvec";
    package = lib.mkOption { type = lib.types.package; default = pkgs.smallvec or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
