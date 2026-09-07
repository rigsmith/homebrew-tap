cask "clauderig-ui" do
  version "0.1.1"
  sha256 "8f0952e48e53aee5858bbbb4ca18392df5c978b3884d32c18c337af86f5854e7"

  url "https://github.com/rigsmith/rigsmith/releases/download/v1.16.0/claudeRigUi_0.1.1_darwin_universal.zip"
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
