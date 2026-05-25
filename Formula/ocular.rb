class Ocular < Formula
  desc "TUI tool for real-time visualization of middleware traffic"
  homepage "https://github.com/beyondlex/ocular"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/beyondlex/ocular/releases/download/v#{version}/ocular-macos-arm64"
      sha256 "587d4e2bc74e872879560ff5031ccebb03027144ea30035f2c2c570e9f575a9e"
    end
    on_intel do
      url "https://github.com/beyondlex/ocular/releases/download/v#{version}/ocular-macos-amd64"
      sha256 "ea80069d13a8a0f9581fc076b9d8c8e52d7ba39b8c92363544d79741e0292d49"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/beyondlex/ocular/releases/download/v#{version}/ocular-linux-amd64"
      sha256 "2ffa6a71444bd08cdef1afb6750290ff53934e22e49e3d1ae0a3f4812db03166"
    end
  end

  def install
    bin.install Dir["ocular*"].first => "ocular"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ocular --version 2>&1", 2)
  end
end
