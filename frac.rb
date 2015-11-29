class Frac < Formula
  desc ""
  homepage "http://projects.laas.fr/fiacre/home.php"
  url "https://github.com/ahamez/frac-binary/raw/master/frac-2.3.0.tar.gz"
  sha256 "c9628e2600212e80142ff0eede816ac7f494b1168e984f725d7337fe5a2b2bb7"

  bottle :unneeded

  def install
    bin.install "frac"
    (include/"frac").mkpath
    (include/"frac").install Dir["lib/*"]
  end

  test do
    system "#{bin}/frac", "-h"
  end
end
