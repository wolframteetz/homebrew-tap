class Fixpoint < Formula
  desc "Fixpoint - Powerpoint video fix for iPhone/MOV videos recorded on OSX so they play nicely on windows"
  homepage "https://github.com/wolframteetz/fixpoint"
  url "https://github.com/wolframteetz/fixpoint/archive/1.0.0.tar.gz"
  version "1.0.1"
#  sha256 "45f6262057f3b03c2d8bce18964d99fb410e9a7321142dd507f5e3a3b4f27cb1"

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
