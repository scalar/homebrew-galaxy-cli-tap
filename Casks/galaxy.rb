cask "galaxy" do
  version "0.3.2"

  on_macos do
    on_arm do
      sha256 "943879c7c620da089c8611efe62b095093244501951d71ab1605e05e21ed1083"
      url "https://github.com/scalar/galaxy-cli/releases/download/v#{version}/galaxy-darwin-arm64.tar.gz"
    end
    on_intel do
      sha256 "5022b88a0d4b32748a48377b07c527c05ed3f850a4bb5d0b280ffa6cf472b60a"
      url "https://github.com/scalar/galaxy-cli/releases/download/v#{version}/galaxy-darwin-x64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "92fe727628d42dbc4d7441bea184b8bc488a142a866d0f68724a173ede9dda6e"
      url "https://github.com/scalar/galaxy-cli/releases/download/v#{version}/galaxy-linux-arm64.tar.gz"
    end
    on_intel do
      sha256 "624df4e13029c4f86d0a4141283c26ec768d444440253ed1c6cb24436124e844"
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
