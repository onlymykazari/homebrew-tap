cask "macscp-revived" do
  version "1.0.1"
  sha256 "21eb3f541f818f16d7944f0dd3ae07893c9672b9771f3953173bfaa010546b3f"

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
  ]
end
