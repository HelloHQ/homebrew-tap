cask "hellohq" do
  version "0.2.8"
  sha256 "d77ca77b93a9876cebe7dd73d29ba4aa299b2963dd64572b1ebb75ea851e1db1"

  url "https://releases.hellohq.com/releases/HelloHQ-0.2.8.dmg"
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
