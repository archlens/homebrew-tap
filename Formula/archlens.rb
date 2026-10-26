class Archlens < Formula
  desc "Generate architectural views from lightweight specifications"
  homepage "https://github.com/archlens/ArchLensGo"
  url "https://github.com/archlens/ArchLensGo/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "c7062b82bc72f64e75cd2b0723a11e94ba1dcceea5bac9228cdf8c0f4de997b4"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./src"
  end

  test do
    system "#{bin}/archlens"
  end
end
