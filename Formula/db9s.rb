class Db9s < Formula
  desc "Terminal UI to browse and edit Postgres, MySQL, MongoDB, Redis and RabbitMQ"
  homepage "https://github.com/damien-mathieu1/db9s"
  version "2026.11.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/damien-mathieu1/db9s/releases/download/v2026.11.5/db9s-v2026.11.5-aarch64-apple-darwin.tar.gz"
      sha256 "7c737e516ed659eae66422c77c62f1a5f833bb0236d42a4821bd93c520f57d2f"
    else
      url "https://github.com/damien-mathieu1/db9s/releases/download/v2026.11.5/db9s-v2026.11.5-x86_64-apple-darwin.tar.gz"
      sha256 "7e063cf411d9ab92c06203d8d7b7dc7a74b1237dee7bd2ecdc4f070039016310"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/damien-mathieu1/db9s/releases/download/v2026.11.5/db9s-v2026.11.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "08b77ecc11021e2436655dcd562a06d2e47761618af951c73f0cfa246634fb13"
    else
      url "https://github.com/damien-mathieu1/db9s/releases/download/v2026.11.5/db9s-v2026.11.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "556c341d10135b286044e1ec9564e5c6422f8ca6d653bef3923c3934299964b8"
    end
  end

  def install
    bin.install "db9s"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/db9s --version")
  end
end
