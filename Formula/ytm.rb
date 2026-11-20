class Ytm < Formula
  desc "YouTube Music in your macOS terminal"
  homepage "https://github.com/ishu86/ytm"
  url "https://github.com/ishu86/ytm/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "d005e2215c0bb73dcb64949ab39047d058c139f45b80f2dc213b565230f2143c"
  license "MIT"

  depends_on "jq"
  depends_on :macos
  depends_on "uv"
  depends_on "yt-dlp"

  def install
    libexec.install "ytm", "src"
    bin.install_symlink libexec/"ytm"
  end

  test do
    assert_match "YouTube Music", shell_output("#{bin}/ytm --help")
  end
end
