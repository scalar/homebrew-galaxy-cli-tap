cask "galaxy" do
  version "0.3.1"

  on_macos do
    on_arm do
      sha256 "4bffa6263da53d4acf7ba68ae272e91d5a05df19752455321b94224b1160ee22"
      url "https://github.com/scalar/galaxy-cli/releases/download/v#{version}/galaxy-darwin-arm64.tar.gz"
    end
    on_intel do
      sha256 "3d799dd97210b73d07ce0b45b18beb35a8eb5286b5bb68eac918447f51dcdeba"
      url "https://github.com/scalar/galaxy-cli/releases/download/v#{version}/galaxy-darwin-x64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "09178187a787f041547118d5c2132bc5281b2c9c2a67eef3de1eac2df5f1b7f1"
      url "https://github.com/scalar/galaxy-cli/releases/download/v#{version}/galaxy-linux-arm64.tar.gz"
    end
    on_intel do
      sha256 "25182f2418ac14a3d470a5b9ca9b99c5c237f149c12b2c19a21090de6f24dfbb"
      url "https://github.com/scalar/galaxy-cli/releases/download/v#{version}/galaxy-linux-x64.tar.gz"
    end
  end

  name "galaxy"
  desc "The Scalar Galaxy CLI Interface"
  homepage "https://scalar.com/"

  binary "galaxy"
  manpage "man/galaxy-authentication-create-token.1"
  manpage "man/galaxy-authentication-create-user.1"
  manpage "man/galaxy-authentication-list-me.1"
  manpage "man/galaxy-celestial-bodies-create.1"
  manpage "man/galaxy-completion.1"
  manpage "man/galaxy-environments.1"
  manpage "man/galaxy-login.1"
  manpage "man/galaxy-logout.1"
  manpage "man/galaxy-planets-create.1"
  manpage "man/galaxy-planets-delete.1"
  manpage "man/galaxy-planets-delte-image.1"
  manpage "man/galaxy-planets-list-all-data.1"
  manpage "man/galaxy-planets-retrieve.1"
  manpage "man/galaxy-planets-update.1"
  manpage "man/galaxy.1"
  generate_completions_from_executable "galaxy", "completion"
end
