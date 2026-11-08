class Cstop < Formula
  desc "Claude Code session monitor (TUI): sessions, memory, disk usage"
  homepage "https://github.com/gebilaoman/claude-session-monitor"
  url "https://github.com/gebilaoman/claude-session-monitor/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "6362b9abba206528c6e5171565b8ab08d38fbdc3b7f30bfb60da1835b0beb426"
  version "0.1.0"

  depends_on "go" => :build

  def install
    cd "code" do
      system "go", "build", "-mod=vendor", "-trimpath",
             "-ldflags", "-s -w -X main.version=#{version}",
             "-o", "../cstop", "./cmd/cstop"
    end
    bin.install "cstop"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cstop --version")
  end
end
