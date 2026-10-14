cask "katharos" do
  version "1.0.0"
  sha256 "cc39fb5449552f96240e79b848a046170bc89a6a14d1b06a3b28e95628f35b1b"

  url "https://downloads.syncwhite.com/katharos/Katharos-#{version}.dmg"
  name "Katharos"
  desc "Cleaner, disk space analyzer, uninstaller and maintenance tool"
  homepage "https://katharos.syncwhite.com/"

  livecheck do
    url "https://downloads.syncwhite.com/katharos/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Katharos.app"

  uninstall quit: "com.syncwhite.Katharos"

  zap trash: [
    "~/Library/Caches/com.syncwhite.Katharos",
    "~/Library/HTTPStorages/com.syncwhite.Katharos",
    "~/Library/Logs/Katharos",
    "~/Library/Preferences/com.syncwhite.Katharos.plist",
    "~/Library/Saved Application State/com.syncwhite.Katharos.savedState",
  ]
end
