cask "clauderig-ui" do
  version "0.2.1"
  sha256 "2803decf95af930355cec162c2773cda781e3f9aae7353d384dbab0f03823b4e"

  url "https://github.com/rigsmith/rigsmith/releases/download/ui/v0.2.1/claudeRigUi_0.2.1_darwin_universal.zip"
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
