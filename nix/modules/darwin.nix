# nix/modules/darwin.nix — auto-generated from smallvec.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.smallvec; in {
  options.services.smallvec = {
    enable = lib.mkEnableOption "smallvec";
    package = lib.mkOption { type = lib.types.package; default = pkgs.smallvec or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
