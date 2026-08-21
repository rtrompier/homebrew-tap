class WizCli < Formula
  desc "CLI for the Wiz GraphQL API"
  homepage "https://github.com/rtrompier/wiz-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rtrompier/wiz-cli/releases/download/v0.1.0/wiz-cli-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "c1f0b6f3c281a002b487b84c097146d2441afb0247af027ce3ab594796690540"
    else
      url "https://github.com/rtrompier/wiz-cli/releases/download/v0.1.0/wiz-cli-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "f8470af05fbc91317d2df94511b4d6453621b8b6987f34067a196f449c7200bd"
    end
  end

  on_linux do
    url "https://github.com/rtrompier/wiz-cli/releases/download/v0.1.0/wiz-cli-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "548180870aee6e034c801efa52f22ddf1c6f42e050420ab23f3e9b86a1506144"
  end

  def install
    bin.install "wiz-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wiz-cli --version")
  end
end
