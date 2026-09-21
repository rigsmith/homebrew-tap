cask "clauderig-ui" do
  version "0.4.0"
  sha256 "3afa234eb3bb8deb76c20d57b81ca707161cec9b721b80349f099fb8e98b9d33"

  url "https://github.com/rigsmith/rigsmith/releases/download/ui/v0.4.0/claudeRigUi_0.4.0_darwin_universal.zip"
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
