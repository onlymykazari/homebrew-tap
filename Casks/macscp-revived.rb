cask "macscp-revived" do
  version "1.0.0"
  sha256 "ea581899b7e1c52bdd6e4fa186131d922634ed650310f2a202c277470513c846"

  url "https://github.com/onlymykazari/macSCP-Revived/releases/download/v#{version}/macSCP-Revived-#{version}.dmg"
  name "macSCP-Revived"
  desc "Native macOS SFTP/S3 client with SSH terminal"
  homepage "https://github.com/onlymykazari/macSCP-Revived"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "macSCP-Revived.app"

  zap trash: [
    "~/Library/Application Support/macSCP",
    "~/Library/Caches/com.onlymykazari.macscp-revived",
    "~/Library/Preferences/com.onlymykazari.macscp-revived.plist",
    "~/Library/Saved Application State/com.onlymykazari.macscp-revived.savedState",
  ]
end
