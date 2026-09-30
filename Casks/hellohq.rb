cask "hellohq" do
  version "0.2.4"
  sha256 "50bbc3d1d8eb3687a412e066cbfca5c7a1ad41c82ce572ea55228628aeada556"

  url "https://releases.hellohq.com/releases/HelloHQ-0.2.4.dmg"
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
