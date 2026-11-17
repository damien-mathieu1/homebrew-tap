cask "db9s-gui" do
  version "2026.11.5"

  on_arm do
    url "https://github.com/damien-mathieu1/db9s/releases/download/v2026.11.5/db9s-gui-v2026.11.5-aarch64-apple-darwin.zip"
    sha256 "c13c40223082729468aa73ee5d31333d454adf6262a6656a7f94c09b2fdff95b"
  end
  on_intel do
    url "https://github.com/damien-mathieu1/db9s/releases/download/v2026.11.5/db9s-gui-v2026.11.5-x86_64-apple-darwin.zip"
    sha256 "89021f4b316241912fbeb93416739b7a9a5ab529ab7e6d44e3c93a988d7effc1"
  end

  name "db9s"
  desc "Desktop client for Postgres, MySQL, SQLite, MongoDB, Redis and RabbitMQ"
  homepage "https://github.com/damien-mathieu1/db9s"

  app "db9s.app"

  caveats <<~TXT
    db9s.app is not notarized. If macOS says it can't be opened, run:
      xattr -dr com.apple.quarantine "#{appdir}/db9s.app"
  TXT
end
