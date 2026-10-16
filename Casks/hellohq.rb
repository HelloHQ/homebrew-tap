cask "hellohq" do
  version "0.4.2"
  sha256 "90cea1d298d144f9c0d5c2c8719d40ef0fd079e43d014cf44b1707a4ff680e7b"

  url "https://releases.hellohq.com/releases/HelloHQ-0.4.2.dmg"
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
