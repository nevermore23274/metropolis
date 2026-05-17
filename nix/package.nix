{ lib, rustPlatform, fetchFromGitHub }:

rustPlatform.buildRustPackage rec {
  pname = "metropolis";
  version = "0.1.3";

  src = fetchFromGitHub {
    owner = "5c0";
    repo = "metropolis";
    rev = "v${version}";
    hash = "sha256-h7WyxeM7Z0lhyO8WgNwfyxxtGS0w+qUhE/l1wMeqgHI=";
  };

  cargoHash = "sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA="; # Placeholder

  meta = with lib; {
    description = "The cyberpunk system monitor for your terminal.";
    homepage = "https://github.com/5c0/metropolis";
    license = licenses.mit;
    maintainers = with maintainers; [ ];
    mainProgram = "metropolis";
  };
}
