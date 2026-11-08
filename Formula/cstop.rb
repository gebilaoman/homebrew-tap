class Cstop < Formula
  desc "Claude Code session monitor (TUI): sessions, memory, disk usage"
  homepage "https://github.com/gebilaoman/claude-session-monitor"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gebilaoman/claude-session-monitor/releases/download/v0.1.2/cstop_0.1.2_darwin_amd64.tar.gz"
      sha256 "40625c3a105d27598c497084572972bf1e376b792f7634e5fa401c37e8b59569"
    end
    if Hardware::CPU.arm?
      url "https://github.com/gebilaoman/claude-session-monitor/releases/download/v0.1.2/cstop_0.1.2_darwin_arm64.tar.gz"
      sha256 "32fb586b30c564c1d70ca4a2500aedf4a21d67c8a48e2be3095b477fc4a34606"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gebilaoman/claude-session-monitor/releases/download/v0.1.2/cstop_0.1.2_linux_amd64.tar.gz"
      sha256 "2aa9256a8f3bb67635885849de3532c079cd9fe5999cda3f9d91e6844db272ca"
    end
    if Hardware::CPU.arm?
      url "https://github.com/gebilaoman/claude-session-monitor/releases/download/v0.1.2/cstop_0.1.2_linux_arm64.tar.gz"
      sha256 "f17a8442bfc3f7ff8899ddddf31ec996243e2b6b77a2a4dae844bc9ab56191f4"
    end
  end

  def install
    bin.install "cstop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cstop --version")
  end
end
