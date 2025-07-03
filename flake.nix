{
  description = "System76 scheduler for gnome.";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
        extensionUuid = "s76-scheduler-plugin@makindotcc.github.com";
      in
      {
        packages.default = pkgs.stdenv.mkDerivation {
          name = "gnome-shell-extension-s76-scheduler-plugin";
          extensionUuid = extensionUuid;
          src = ./.;
          meta = with pkgs.lib; {
            description = "System76 scheduler for gnome.";
            license = licenses.gpl3;
          };
          nativeBuildInputs = with pkgs; [ buildPackages.glib ];
          installPhase = ''
            runHook preInstall
            mkdir -p $out/share/gnome-shell/extensions/
            cp -r -T . $out/share/gnome-shell/extensions/${extensionUuid}
            runHook postInstall
          '';
        };
      }
    );
}
