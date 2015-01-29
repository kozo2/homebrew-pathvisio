class Pathvisio < Formula
  homepage "http://www.pathvisio.org/"
  # tag "bioinformatics"
  # doi "10.1186/1471-2105-9-399"
  url "http://pathvisio.org/data/releases/current/pathvisio_bin-3.1.3-r3968.tar.gz"
  sha1 "54b14c34464c2714fc4455dd933038f03985ddcd"
  version "3.1.3"

  depends_on :java => "1.7"

  def install
    inreplace "pathvisio.sh", "$(dirname $0)", libexec
    chmod "+x", "pathvisio.sh"
    libexec.install %W[LICENSE-2.0.txt NOTICE.txt pathvisio.jar pathvisio.sh]
    bin.install_symlink libexec/"pathvisio.sh" => "pathvisio"
    doc.install "readme.txt"
  end

  test do
    system "#{bin}/pathvisio", "-v"
  end
end
