class Macdup < Formula
  desc "Macintosh Dossier UPloader for World of Tanks - vBAddict"
  homepage "https://github.com/wolframteetz/macdup"
  url "https://github.com/wolframteetz/macdup/archive/1.0.1.tar.gz"
  version "1.0.1"
  sha256 "98a4d08320b3142e5af33e8286272c3378b43c4f1780e0aba42187bca929bc5d"

  depends_on "jq"
  
  def install
    ENV.deparallelize
    ENV.no_optimization
    bin.install "macdup"
    chmod 0555, Dir["#{bin}/macdup"]
  end

  test do
      #system "chmod 0555 /usr/local/bin/macdup"
      #puts "Please enter your WOT Server (e.g. eu) : "
      #userServer = gets.chomp
      #inreplace "macdup", "userServer", userServer
      chmod 0555, Dir["#{bin}/macdup"]
      system "open /Applications/TextEdit.app/ /usr/local/bin/macdup"
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
