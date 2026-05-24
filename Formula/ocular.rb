class Ocular < Formula
  desc "TUI tool for real-time visualization of middleware traffic"
  homepage "https://github.com/beyondlex/ocular"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/beyondlex/ocular/releases/download/v#{version}/ocular-macos-arm64"
      sha256 "PLACEHOLDER_SHA256_MACOS_ARM64"
    end
    on_intel do
      url "https://github.com/beyondlex/ocular/releases/download/v#{version}/ocular-macos-amd64"
      sha256 "PLACEHOLDER_SHA256_MACOS_AMD64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/beyondlex/ocular/releases/download/v#{version}/ocular-linux-amd64"
      sha256 "PLACEHOLDER_SHA256_LINUX_AMD64"
    end
  end

  def install
    bin.install Dir["ocular*"].first => "ocular"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ocular --version 2>&1", 2)
  end
end
