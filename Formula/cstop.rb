class Cstop < Formula
  desc "Claude Code session monitor (TUI): sessions, memory, disk usage"
  homepage "https://github.com/gebilaoman/claude-session-monitor"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gebilaoman/claude-session-monitor/releases/download/v0.1.0/cstop_0.1.0_darwin_amd64.tar.gz"
      sha256 "ab6e58098bb9ed71af86a86fab00f4f32d54f598cf87530e77dde83bd968ff24"
    end
    if Hardware::CPU.arm?
      url "https://github.com/gebilaoman/claude-session-monitor/releases/download/v0.1.0/cstop_0.1.0_darwin_arm64.tar.gz"
      sha256 "df9da6e9d501054f69af21bd8405066d69f7e932675001d65e172af102e10d4b"
    end
  end
  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/gebilaoman/claude-session-monitor/releases/download/v0.1.0/cstop_0.1.0_linux_amd64.tar.gz"
      sha256 "d8d9b546daf83abdedca10518cd69367a4fbe08e1c38d14aa3721453f5851991"
    end
    if Hardware::CPU.arm?
      url "https://github.com/gebilaoman/claude-session-monitor/releases/download/v0.1.0/cstop_0.1.0_linux_arm64.tar.gz"
      sha256 "102838f034a15c53d957ba1ef847134637fe75ef040b984100568914365e2f3d"
    end
  end

  def install
    bin.install "cstop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cstop --version")
  end
end
