cask "hellohq" do
  version "0.2.10"
  sha256 "8a904bc7e3b5a3fef5860c82f4a117fc5da5aa6de3800a5d5ca2e8f0b20b0858"

  url "https://releases.hellohq.com/releases/HelloHQ-0.2.10.dmg"
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
