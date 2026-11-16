class Archlens < Formula
  desc "Generate architectural views from lightweight specifications"
  homepage "https://github.com/archlens/ArchLens"
  url "https://github.com/archlens/ArchLensGo/archive/refs/tags/v0.5.4.tar.gz"
  
  sha256 "33230c59dc9e8cfedd13a13006d939a44bcf05264a233d6f87077344fc7bd6b4"
  license "MIT"

  depends_on "go" => :build

def install
  cd "src" do
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end
end

  test do
    system "#{bin}/archlens"
  end
end
