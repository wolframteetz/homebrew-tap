class FlattenTif < Formula
  desc "Flatten_tif - Flatten TIFF files on OSX"
  homepage "https://github.com/wolframteetz/ocrtools"
  url "https://api.github.com/repos/wolframteetz/ocrtools/tarball/master"
  version "1.0.9"
  sha256 "ff8fee4a3836a101b234a3ce7c7f3719d67baf527393b23ef60f99ee50cc8422"

  depends_on "imagemagick"
  
  def install
    ENV.deparallelize
    bin.install "flatten_tif"
    bin.install "flatten_all_tifs"
    bin.install "clapton"
    bin.install "Clapton.py"
    bin.install "Hackathon_RS.json"
  end

  test do
    ENV.deparallelize
      puts "Installation complete, run with e.g. bash> flatten_all_tifs *.tif"
  end
end
