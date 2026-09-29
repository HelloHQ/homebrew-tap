cask "hellohq" do
  version "0.2.2"
  sha256 "4449007ad87793cf56993d37cd740ce0c52cc57988167e7b901cd21c661bdabc"

  url "https://releases.hellohq.com/releases/HelloHQ-0.2.2.dmg"
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
