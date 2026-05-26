class Ocular < Formula
  desc "TUI tool for real-time visualization of middleware traffic"
  homepage "https://github.com/beyondlex/ocular"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/beyondlex/ocular/releases/download/v#{version}/ocular-macos-arm64"
      sha256 "c70473c2f0b770b32cbb297b2112f00dced5219682f65a54804f6a9be91e2bc0"
    end
    on_intel do
      url "https://github.com/beyondlex/ocular/releases/download/v#{version}/ocular-macos-amd64"
      sha256 "aac21428c7b57127a28e64fe5c2fcb2b6d475965c318859cd7746da9b93f344f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/beyondlex/ocular/releases/download/v#{version}/ocular-linux-amd64"
      sha256 "40c0d7cfce04fee7f8e51ce10d68b17fe7fcf68116d4465ca0fea9537fabced1"
    end
  end

  def install
    bin.install Dir["ocular*"].first => "ocular"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ocular --version 2>&1", 2)
  end
end
