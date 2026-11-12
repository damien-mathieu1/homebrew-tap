class Db9s < Formula
  desc "Terminal UI to browse and edit Postgres, MySQL, MongoDB, Redis and RabbitMQ"
  homepage "https://github.com/damien-mathieu1/db9s"
  version "2026.11.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/damien-mathieu1/db9s/releases/download/v2026.11.4/db9s-v2026.11.4-aarch64-apple-darwin.tar.gz"
      sha256 "d0564a24bc87ffbecd7579acd9cadae62d59e4b024e40927473a825d89cf1af8"
    else
      url "https://github.com/damien-mathieu1/db9s/releases/download/v2026.11.4/db9s-v2026.11.4-x86_64-apple-darwin.tar.gz"
      sha256 "4fbc9f762a3a5bb312a963f827f7b1a3c32af22105851bb15674f817d3b36024"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/damien-mathieu1/db9s/releases/download/v2026.11.4/db9s-v2026.11.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ab07ab3ed9df002fe5ba82cf22748c9ab96df30ed4f85f75c0884d8bc2f56d0c"
    else
      url "https://github.com/damien-mathieu1/db9s/releases/download/v2026.11.4/db9s-v2026.11.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3c29f2d2eb802ce9907c16f574b4c06276acf17b69a828a839b8c4491a0b00e"
    end
  end

  def install
    bin.install "db9s"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/db9s --version")
  end
end
