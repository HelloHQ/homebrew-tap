cask "hellohq" do
  version "0.3.0"
  sha256 "b14ac430c67db3f07eccf05498896bf2478831949178f3e70d3f1ab1568576aa"

  url "https://releases.hellohq.com/releases/HelloHQ-0.3.0.dmg"
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
