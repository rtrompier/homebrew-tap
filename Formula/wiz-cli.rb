class WizCli < Formula
  desc "CLI for the Wiz GraphQL API"
  homepage "https://github.com/rtrompier/wiz-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtrompier/wiz-cli/releases/download/v0.1.0/wiz-cli-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "e4543c523556dfb5b0f3d51df63aaa6d719adea2982b664821805149cea5cfd9"
    else
      url "https://github.com/rtrompier/wiz-cli/releases/download/v0.1.0/wiz-cli-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "18c0de29d2fec491a451137d11f5b8f2b18c9f7f134236d3840cd214ab7e3c14"
    end
  end

  on_linux do
    url "https://github.com/rtrompier/wiz-cli/releases/download/v0.1.0/wiz-cli-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "93755cf08151aa52e4e7a0adb63130591fde5ece73a2fccd0f3afb886edd92b5"
  end

  def install
    bin.install "wiz-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiz-cli --version")
  end
end
