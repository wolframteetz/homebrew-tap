class FlattenTif < Formula
  desc "Flatten_tif - Flatten TIFF files on OSX"
  homepage "https://github.com/wolframteetz/ocrtools"
  url "https://api.github.com/repos/wolframteetz/ocrtools/tarball/master"
  version "1.0.0"
  sha256 "70622796b6805bdf3717d7be495bd6ab2c5adf31b7c465fcaa5152a8224dffc4"

  depends_on "imagemagick"
  
  def install
    ENV.deparallelize
    bin.install "flatten_tif"
    bin.install "flatten_all_tifs"
  end

  test do
    ENV.deparallelize
      puts "Installation complete, run with e.g. bash> flatten_all_tifs *.tif"
  end
end
