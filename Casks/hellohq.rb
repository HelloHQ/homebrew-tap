cask "hellohq" do
  version "0.2.14"
  sha256 "d6867ba295231edb8e94b7d1964e36e81ff219da554b0fbe5a90be754571288b"

  url "https://releases.hellohq.com/releases/HelloHQ-0.2.14.dmg"
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
