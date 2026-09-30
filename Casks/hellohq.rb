cask "hellohq" do
  version "0.2.5"
  sha256 "d1a7d49007b0f9f9669c2de3d2db0166fbffcd18e4cb3bfd0facb753511bb437"

  url "https://releases.hellohq.com/releases/HelloHQ-0.2.5.dmg"
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
