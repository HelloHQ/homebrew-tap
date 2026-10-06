cask "hellohq" do
  version "0.2.15"
  sha256 "46f133d52f14d6842ea17b69bbeeea35a402eaa1f8cfc03ef0fec1ebd2b70cab"

  url "https://releases.hellohq.com/releases/HelloHQ-0.2.15.dmg"
  name "HelloHQ"
  desc "Grow and protect your wealth — local-first, plugin-extensible"
  homepage "https://hellohq.com"

  # Homebrew is the update manager for cask installs; suppress in-app Sparkle.
  auto_updates false

  depends_on macos: :sonoma

  app "HelloHQ.app"

  zap trash: [
    "~/Library/Application Support/com.hellohq.hellohq",
    "~/Library/Caches/com.hellohq.hellohq",
    "~/Library/Preferences/com.hellohq.hellohq.plist",
  ]
end
