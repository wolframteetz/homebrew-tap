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
    system "find .. -name macdup"
    system "pwd"
  end

  test do
  system "chmod 0555 bin/macdup"
    # Run the test with `brew test macdup`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    # system "false"
    # system "macdup"
  end
end
