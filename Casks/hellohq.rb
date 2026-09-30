cask "hellohq" do
  version "0.2.3"
  sha256 "1a9befbf08d515adb8f10f0a5b5f2af7d5781693119e69755dcdd62b755677d0"

  url "https://releases.hellohq.com/releases/HelloHQ-0.2.3.dmg"
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
