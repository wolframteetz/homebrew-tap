class Macdup < Formula
  desc "Macintosh Dossier UPloader for World of Tanks - vBAddict"
  homepage "https://github.com/wolframteetz/macdup"
  url "https://github.com/wolframteetz/macdup/archive/1.0.3.tar.gz"
  version "1.0.3"
  sha256 "45f6262057f3b03c2d8bce18964d99fb410e9a7321142dd507f5e3a3b4f27cb1"

  depends_on "jq"
  
  def install
    ENV.deparallelize
    ENV.no_optimization
    bin.install "macdup"
    #chmod 0555, Dir["#{bin}/macdup"]
  end

  test do
      #system "chmod 0555 /usr/local/bin/macdup"
      #puts "Please enter your WOT Server (e.g. eu) : "
      #userServer = gets.chomp
      #inreplace "macdup", "userServer", userServer
      chmod 0755, Dir["#{bin}/macdup"]
      system "/Applications/TextEdit.app/Contents/MacOS/TextEdit /usr/local/bin/macdup"
      chmod 0555, Dir["#{bin}/macdup"]
      puts "Installation complete."
    # Run the test with `brew test macdup`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    # system "false"
    # system "macdup"
  end
end
