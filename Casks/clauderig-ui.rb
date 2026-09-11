cask "clauderig-ui" do
  version "0.3.0"
  sha256 "966676d5bb819862fc4f4186c6bdbb2afc2c0a162e0a94db4319371299c6447e"

  url "https://github.com/rigsmith/rigsmith/releases/download/ui/v0.3.0/claudeRigUi_0.3.0_darwin_universal.zip"
  name "claudeRigUi"
  desc "Menu bar app for claudeRig: sync status and your Claude Code sessions"
  homepage "https://rigsmith.dev/clauderig/"

  depends_on macos: :monterey

  app "claudeRigUi.app"

  zap trash: [
    "~/Library/Application Support/claudeRigUi",
    "~/Library/Caches/dev.rigsmith.clauderig-ui",
    "~/Library/Preferences/dev.rigsmith.clauderig-ui.plist",
    "~/Library/Saved Application State/dev.rigsmith.clauderig-ui.savedState",
  ]
end
