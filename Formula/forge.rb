# Placeholder — goreleaser overwrites this on each release.
# To install before the first release, use: go install github.com/samahlstrom/forge-cli@latest
class Forge < Formula
  desc "Agent harness scaffolding for Claude Code"
  homepage "https://github.com/samahlstrom/forge-cli"
  license "MIT"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/samahlstrom/forge-cli/releases/download/v0.2.0/forge_0.2.0_darwin_arm64.tar.gz"
    else
      url "https://github.com/samahlstrom/forge-cli/releases/download/v0.2.0/forge_0.2.0_darwin_amd64.tar.gz"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/samahlstrom/forge-cli/releases/download/v0.2.0/forge_0.2.0_linux_arm64.tar.gz"
    else
      url "https://github.com/samahlstrom/forge-cli/releases/download/v0.2.0/forge_0.2.0_linux_amd64.tar.gz"
    end
  end

  def install
    bin.install "forge"
  end

  test do
    assert_match "forge version", shell_output("#{bin}/forge --version")
  end
end
