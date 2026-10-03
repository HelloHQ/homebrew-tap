cask "hellohq" do
  version "0.2.7"
  sha256 "0119dea0910818242e7e50d2dc046a94da4a7cc40a7a2900570c993a7078bd09"

  url "https://releases.hellohq.com/releases/HelloHQ-0.2.7.dmg"
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
