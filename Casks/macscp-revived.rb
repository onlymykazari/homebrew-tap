cask "macscp-revived" do
  version "1.2.0"
  sha256 "d7f11445bea2fbdc47e81504feb14ff66be6a2ddd627088aac464e8153488090"

  url "https://github.com/onlymykazari/macSCP-Revived/releases/download/v#{version}/macSCP-Revived-#{version}.dmg"
  name "macSCP-Revived"
  desc "Native macOS SFTP/S3 client with SSH terminal"
  homepage "https://github.com/onlymykazari/macSCP-Revived"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "macSCP-Revived.app"

  zap trash: [
    "~/Library/Application Support/macSCP",
    "~/Library/Caches/com.onlymykazari.macscp-revived",
    "~/Library/Preferences/com.onlymykazari.macscp-revived.plist",
    "~/Library/Saved Application State/com.onlymykazari.macscp-revived.savedState",
    "~/Library/Containers/com.onlymykazari.macscp-revived",
  ]
end
