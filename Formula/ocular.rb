class Ocular < Formula
  desc "TUI tool for real-time visualization of middleware traffic"
  homepage "https://github.com/beyondlex/ocular"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/beyondlex/ocular/releases/download/v#{version}/ocular-macos-arm64"
      sha256 "de7f0b944af774babf24691676ab8875ee6aa46017be83b61e5efbf0144990a8"
    end
    on_intel do
      url "https://github.com/beyondlex/ocular/releases/download/v#{version}/ocular-macos-amd64"
      sha256 "ff2eea965ee4e708275bf771387177d785043fd494031a23dbcc8afed584e5e1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/beyondlex/ocular/releases/download/v#{version}/ocular-linux-amd64"
      sha256 "e6c2c9defe8c9aaeef8fb21d5dd5caa5063bf3f6a2312d4705e65709670ccca8"
    end
  end

  def install
    bin.install Dir["ocular*"].first => "ocular"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ocular --version 2>&1", 2)
  end
end
