class Pathvisio < Formula
  homepage "http://www.pathvisio.org/"
  # tag "bioinformatics"
  # doi "10.1186/1471-2105-9-399"
  url "http://www.pathvisio.org/data/releases/3.1.3/pathvisio_bin-3.1.3-r3968.zip"
  sha1 "02c67ffa783cf91e8b1a7e775ee1b23759fffae6"

  depends_on :java => "1.7"

  def install
    inreplace "pathvisio.sh", "$(dirname $0)", libexec
    libexec.install %W[LICENSE-2.0.txt NOTICE.txt pathvisio.jar pathvisio.sh]
    bin.install_symlink libexec/"pathvisio.sh" => "pathvisio"
    doc.install "readme.txt"
  end
end
