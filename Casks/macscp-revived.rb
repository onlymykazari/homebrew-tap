cask "macscp-revived" do
  version "1.1.0"
  sha256 "4be766d93a52af85ecc2c28009da7d1176c68061495aa62aab4fb89352e23243"

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
