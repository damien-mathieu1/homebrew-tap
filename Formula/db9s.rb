class Db9s < Formula
  desc "Terminal UI to browse and edit Postgres, MySQL, MongoDB, Redis and RabbitMQ"
  homepage "https://github.com/damien-mathieu1/db9s"
  version "2026.11.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/damien-mathieu1/db9s/releases/download/v2026.11.3/db9s-v2026.11.3-aarch64-apple-darwin.tar.gz"
      sha256 "cce3389fe9262f93e3b78297f58ccd87414a887d1cded9bbe2b4dd3908beb7e5"
    else
      url "https://github.com/damien-mathieu1/db9s/releases/download/v2026.11.3/db9s-v2026.11.3-x86_64-apple-darwin.tar.gz"
      sha256 "63d0755918c198347ccc91b8569e9df1949ebb13acebd32b023cfcbc77f06e49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/damien-mathieu1/db9s/releases/download/v2026.11.3/db9s-v2026.11.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "74693dc76aa0cc86124471064de5895172fc56318cbd5d0c1316ed9e28626140"
    else
      url "https://github.com/damien-mathieu1/db9s/releases/download/v2026.11.3/db9s-v2026.11.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa78a95ab8049fe94707255d0c3d27a7cf611812d23b140ae827c80c29dd31ae"
    end
  end

  def install
    bin.install "db9s"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/db9s --version")
  end
end
