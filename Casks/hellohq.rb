cask "hellohq" do
  version "0.2.6"
  sha256 "32c35c08d507d202d6b4fe105b606d8cf910aa5db483850550bdb94cc818a57a"

  url "https://releases.hellohq.com/releases/HelloHQ-0.2.6.dmg"
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
