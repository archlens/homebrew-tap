class Archlens < Formula
  desc "Generate architectural views from lightweight specifications"
  homepage "https://github.com/archlens/ArchLensGo"
  url "https://github.com/archlens/ArchLensGo/archive/refs/tags/v0.3.1.tar.gz"
  
  sha256 "b4cfd680cae824af813037ffc575521edcbebf3588615172f0ea7e8d8ee7b86b"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./src"
  end

  test do
    system "#{bin}/archlens"
  end
end
