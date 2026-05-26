class Ocular < Formula
  desc "TUI tool for real-time visualization of middleware traffic"
  homepage "https://github.com/beyondlex/ocular"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/beyondlex/ocular/releases/download/v#{version}/ocular-macos-arm64"
      sha256 "edda526afb2d44d1516e200868d5d73d13a6a7ed76367943d6fe11ba2a50a00c"
    end
    on_intel do
      url "https://github.com/beyondlex/ocular/releases/download/v#{version}/ocular-macos-amd64"
      sha256 "4720078a4c525a2b654f0ec55a842f43169375f2fa09a703b5f98e391f4e4eca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/beyondlex/ocular/releases/download/v#{version}/ocular-linux-amd64"
      sha256 "5cc33aa895165ec5fe69a3afe422d4b7490349244534269de3a49a4b72f3e502"
    end
  end

  def install
    bin.install Dir["ocular*"].first => "ocular"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ocular --version 2>&1", 2)
  end
end
