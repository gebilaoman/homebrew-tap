class Cstop < Formula
  desc "Claude Code session monitor (TUI): sessions, memory, disk usage"
  homepage "https://github.com/gebilaoman/claude-session-monitor"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gebilaoman/claude-session-monitor/releases/download/v0.1.3/cstop_0.1.3_darwin_amd64.tar.gz"
      sha256 "f1c0436ad23cd2a7e0fe131c1ff474bfbaf8dab30002d0378074b138d894ae71"
    end
    if Hardware::CPU.arm?
      url "https://github.com/gebilaoman/claude-session-monitor/releases/download/v0.1.3/cstop_0.1.3_darwin_arm64.tar.gz"
      sha256 "af98459827cfb22092d637815db4af852795dcfbf9b9d5d695f67bc7bb6e57ab"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gebilaoman/claude-session-monitor/releases/download/v0.1.3/cstop_0.1.3_linux_amd64.tar.gz"
      sha256 "542baa62417c557f1fbce89e5d52ef46866bd049dd5ba840fa27fb862cda4bcb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/gebilaoman/claude-session-monitor/releases/download/v0.1.3/cstop_0.1.3_linux_arm64.tar.gz"
      sha256 "d89ad8586fe02575a054e4cfd821fec8534b7ef5c6a47a8e3f25ed44b1666514"
    end
  end

  def install
    bin.install "cstop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cstop --version")
  end
end
