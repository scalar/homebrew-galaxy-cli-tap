class Galaxy < Formula
  desc "The Scalar Galaxy CLI Interface"
  homepage "https://scalar.com"
  version "0.2.4"

  on_macos do
    on_arm do
      url "https://github.com/scalar/galaxy-cli/releases/download/v0.2.4/galaxy-darwin-arm64.tar.gz"
      sha256 "17be12a226c942a7869b55c0d76339182e0faa0a9d66766b6bc1d10f137968fc"
    end
    on_intel do
      url "https://github.com/scalar/galaxy-cli/releases/download/v0.2.4/galaxy-darwin-x64.tar.gz"
      sha256 "42b2afc16fcbf40512b1b6d09a120515edcfb8e79d38f6b110b739bce932fdc0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/scalar/galaxy-cli/releases/download/v0.2.4/galaxy-linux-arm64.tar.gz"
      sha256 "ab92be1142798a03c98fa4bcfb9e7913d609ff2a90c5c28058017bfbda80ff5e"
    end
    on_intel do
      url "https://github.com/scalar/galaxy-cli/releases/download/v0.2.4/galaxy-linux-x64.tar.gz"
      sha256 "be8dc5a40f59d0f16ad2e7e310f5b60d5dd7448ace28c06bb94a561aa930e5c0"
    end
  end

  def install
    bin.install "galaxy"
  end

  test do
    system "#{bin}/galaxy", "--help"
  end
end
