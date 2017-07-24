class Fixpoint < Formula
  desc "Fixpoint - Powerpoint video fix for iPhone/MOV videos recorded on OSX so they play nicely on windows"
  homepage "https://github.com/wolframteetz/fixpoint"
  url "https://api.github.com/repos/wolframteetz/FixPoint/tarball/master"
  version "1.0.4"
  sha256 "1e43e27b6b4d33834ce15998b4a921f7b94b75981c0cebb04b88da74cc559834"

  depends_on "ffmpeg"
  
  def install
    ENV.deparallelize
    ENV.no_optimization
    bin.install "fixpoint.sh"
    #chmod 0555, Dir["#{bin}/macdup"]
  end

  test do
    ENV.deparallelize
    ENV.no_optimization
      puts "Installation complete, run with e.g. bash> fixpoint test.pptx"
  end
end
