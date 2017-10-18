class FlattenTif < Formula
  desc "Flatten_tif - Flatten TIFF files on OSX"
  homepage "https://github.com/wolframteetz/ocrtools"
  url "https://api.github.com/repos/wolframteetz/ocrtools/tarball/master"
  version "1.0.5"
  sha256 "9cb391f462c2b5e638853ef3d1b4889dba1ab90bcbb96163e8a441fd87703dab"

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
