class GfComplete < Formula
  desc ""
  homepage "http://jerasure.org/jerasure/gf-complete"
  head "http://lab.jerasure.org/jerasure/gf-complete.git", :using => :git
  version ""
  sha256 ""

  depends_on "autoconf"
  depends_on "automake"
  depends_on "libtool"

  def install
    system "./autogen.sh"
    system "./configure", "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "#{bin}/gf_add", "1", "2", "32"
  end
end
