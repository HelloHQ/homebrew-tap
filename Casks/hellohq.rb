cask "hellohq" do
  version "0.2.11"
  sha256 "edc45c32bb417a2aaa424df67406f9fb22be829f0b2fe2a923bd55c097ea4f17"

  url "https://releases.hellohq.com/releases/HelloHQ-0.2.11.dmg"
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
