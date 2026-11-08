class Cstop < Formula
  desc "Claude Code session monitor (TUI): sessions, memory, disk usage"
  homepage "https://github.com/gebilaoman/claude-session-monitor"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gebilaoman/claude-session-monitor/releases/download/v0.1.1/cstop_0.1.1_darwin_amd64.tar.gz"
      sha256 "2f33e57e834f2639092b2ada208166d8aa2041cb03058f3e34eacd8286f642d5"
    end
    if Hardware::CPU.arm?
      url "https://github.com/gebilaoman/claude-session-monitor/releases/download/v0.1.1/cstop_0.1.1_darwin_arm64.tar.gz"
      sha256 "3f57c6d41e3e84056f453a441840693131210ada809249fe99a60ebfb3ea5139"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gebilaoman/claude-session-monitor/releases/download/v0.1.1/cstop_0.1.1_linux_amd64.tar.gz"
      sha256 "f45d0eac124ed46ccdfe3c38d19f5b417628e8fc552b2601faf7042a719bc76f"
    end
    if Hardware::CPU.arm?
      url "https://github.com/gebilaoman/claude-session-monitor/releases/download/v0.1.1/cstop_0.1.1_linux_arm64.tar.gz"
      sha256 "0141f17139ae9488302472124dcd1a843293d1f96842fc1677ec9b41896e42c2"
    end
  end

  def install
    bin.install "cstop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cstop --version")
  end
end
