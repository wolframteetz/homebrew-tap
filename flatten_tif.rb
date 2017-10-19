class FlattenTif < Formula
  desc "Flatten_tif - Flatten TIFF files on OSX"
  homepage "https://github.com/wolframteetz/ocrtools"
  url "https://api.github.com/repos/wolframteetz/ocrtools/tarball/master"
  version "1.2.1"
  sha256 "b164ed022e687cf55ecf552bb3c63d69022066f573c2f3978cd2db905edee7d8"

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
