class Flatten_tif < Formula
  desc "Flatten_tif - Flatten TIFF files on OSX"
  homepage "https://github.com/wolframteetz/ocrtools"
  url "https://api.github.com/repos/wolframteetz/ocrtools/tarball/master"
  version "1.0.0"
  sha256 "1e43e27b6b4d33834ce15998b4a921f7b94b75981c0cebb04b88da74cc559834"

  depends_on "imagemagick"
  
  def install
    ENV.deparallelize
    ENV.no_optimization
    bin.install "flatten_tif"
    bin.install "flatten_all_tifs"
    #chmod 0555, Dir["#{bin}/macdup"]
  end

  test do
    ENV.deparallelize
    ENV.no_optimization
      puts "Installation complete, run with e.g. bash> flatten_all_tifs *.tif"
  end
end
