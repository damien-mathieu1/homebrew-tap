class Earwig < Formula
  desc "Content-based music recommendation engine: similar tracks, moods and styles from the audio"
  homepage "https://github.com/damien-mathieu1/earwig"
  version "2026.11.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    # Apple Silicon only: Intel Macs can 
    depends_on arch: :arm64
    url "https://github.com/damien-mathieu1/earwig/releases/download/v2026.11.1/earwig-v2026.11.1-aarch64-apple-darwin.tar.gz"
    sha256 "b390741a26d6a517dc434c5e2c99d6c38b42599bbeaf4e6f36439f303ea9928f"
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/damien-mathieu1/earwig/releases/download/v2026.11.1/earwig-v2026.11.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c6840053ba636b10037f38c51074c487b560856044f9014fa324f6b7b5d38aa"
    else
      url "https://github.com/damien-mathieu1/earwig/releases/download/v2026.11.1/earwig-v2026.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cbd64ff6251c4e57465fc4c2246ea8b7be9cc462dd7a9ac352aa31da44a0b3a6"
    end
  end

  def install
    bin.install "earwig"
  end

  def caveats
    <<~TXT
      The analysis models (~700 MB) are downloaded on the first `earwig index`,
      or ahead of time with `earwig models`, into ~/.cache/earwig ($EARWIG_CACHE).
    TXT
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/earwig --version")
  end
end
