cask "hellohq" do
  version "0.2.12"
  sha256 "09abd72e72d73642833b1ca31f352d83fe53579edc9c7f394e0ee56fb63daf9e"

  url "https://releases.hellohq.com/releases/HelloHQ-0.2.12.dmg"
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
