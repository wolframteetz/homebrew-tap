class Fixpoint < Formula
  desc "Fixpoint - Powerpoint video fix for iPhone/MOV videos recorded on OSX so they play nicely on windows"
  homepage "https://github.com/wolframteetz/fixpoint"
  url "https://codeload.github.com/wolframteetz/FixPoint/zip/master"
  version "1.0.2"
  sha256 "6f978b9ba1d80cbc66ebe6e0ce0d71d0c789132011c7525d6afe807e691ec62c"

  depends_on "ffmpeg"
  
  def install
    ENV.deparallelize
    ENV.no_optimization
    bin.install "fixpoint"
    #chmod 0555, Dir["#{bin}/macdup"]
  end

  test do
    ENV.deparallelize
    ENV.no_optimization
      puts "Installation complete, run with e.g. bash> fixpoint test.pptx"
  end
end
