class Galaxy < Formula
  desc "The Scalar Galaxy CLI Interface"
  homepage "https://scalar.com"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/scalar/galaxy-cli/releases/download/v0.3.0/galaxy-darwin-arm64.tar.gz"
      sha256 "07ad014cd2d49a2777174a38f9f66ac109d02720df9bd1979c5f37403415174c"
    end
    on_intel do
      url "https://github.com/scalar/galaxy-cli/releases/download/v0.3.0/galaxy-darwin-x64.tar.gz"
      sha256 "c86a6333f50144f1852a88c03b300aa645c95f7f67636b6952109625d5043fec"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/scalar/galaxy-cli/releases/download/v0.3.0/galaxy-linux-arm64.tar.gz"
      sha256 "96d90e157a343ed00dd6b4201cda967ff8a293a391271a08ca167f0d1fefd565"
    end
    on_intel do
      url "https://github.com/scalar/galaxy-cli/releases/download/v0.3.0/galaxy-linux-x64.tar.gz"
      sha256 "cb3c9a4acd11b0d41206ffa4f603e5f9f34052ee6dca08b092831452592d5e1a"
    end
  end

  def install
    bin.install "galaxy"
  end

  test do
    system "#{bin}/galaxy", "--help"
  end
end
