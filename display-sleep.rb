class DisplaySleep < Formula
  desc ""
  homepage ""
  head "https://gist.github.com/03118d6691e66f0451d8.git", :using => :git
  version ""
  sha256 ""

  def install
    system "clang++", "-framework" ,"CoreFoundation", "-framework", "IOKIT", "display_sleep.cc", "-o", "display-sleep"
    bin.install "display-sleep"
  end

end
