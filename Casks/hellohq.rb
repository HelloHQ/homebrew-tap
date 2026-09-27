cask "hellohq" do
  version "0.2.0"
  sha256 "00f84001ec2d038b5abc343ee04a21ae7be87bfd88f54eab4d710de4159a406d"

  url "https://releases.hellohq.com/releases/HelloHQ-0.2.0.dmg"
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
