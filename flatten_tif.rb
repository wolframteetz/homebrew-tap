class FlattenTif < Formula
  desc "Flatten_tif - Flatten TIFF files on OSX"
  homepage "https://github.com/wolframteetz/ocrtools"
  url "https://api.github.com/repos/wolframteetz/ocrtools/tarball/master"
  version "1.1.7"
  sha256 "d6069eecc912e3dd1e744d495e5fc5a123f620803f366324f50cb5cf3d3c9b35"

  depends_on "imagemagick"
  depends_on "python3"
  depends_on "pyqt"
  depends_on "jq"
  
  def install
    ENV.deparallelize
    bin.install "flatten_tif"
    bin.install "flatten_all_tifs"
    bin.install "clapton"
    bin.install "Clapton.py"
    bin.install "Hackathon_RS.json"
    bin.install "rubberbandenhancedlabel.py"
    bin.install "mainwindow.py"
  end

  test do
    ENV.deparallelize
      puts "Installation complete, run with e.g. bash> flatten_all_tifs *.tif"
  end
end
