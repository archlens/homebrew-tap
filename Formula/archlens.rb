class Archlens < Formula
  desc "Generate architectural views from lightweight specifications"
  homepage "https://github.com/archlens/ArchLens"
  url "https://github.com/archlens/ArchLensGo/archive/refs/tags/v0.5.4.tar.gz"
  
  sha256 "979678baf97c3ad0a3c7e0c27c090ff0404beb293c558fa6c1f30bdaec5f38e0"
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
