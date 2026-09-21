class WizCli < Formula
  desc "CLI for the Wiz GraphQL API"
  homepage "https://github.com/rtrompier/wiz-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtrompier/wiz-cli/releases/download/v0.1.1/wiz-cli-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "d90934eadaf57e95fdf840096a49058985f0dd619c4095ad96866b0d2b8b0818"
    else
      url "https://github.com/rtrompier/wiz-cli/releases/download/v0.1.1/wiz-cli-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "e190b6e8c8aaba8ca25b2707cf24e7a4ace8a49ba6d65c40f9431052dd1db3b6"
    end
  end

  on_linux do
    url "https://github.com/rtrompier/wiz-cli/releases/download/v0.1.1/wiz-cli-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "cc103777d882ac568abd9684adf5967454e00b0520229ddfa554b3fa8335279f"
  end

  def install
    bin.install "wiz-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiz-cli --version")
  end
end
