cask "clauderig-ui" do
  version "0.1.0"
  sha256 "e1c5318f23d111586c416ad253e4d7f7efb5cdd84988118728a77de29842090a"

  url "https://github.com/rigsmith/rigsmith/releases/download/v1.15.5/claudeRigUi_0.1.0_darwin_universal.zip"
  name "claudeRigUi"
  desc "Menu bar app for claudeRig: sync status and your Claude Code sessions"
  homepage "https://rigsmith.dev/clauderig/"

  depends_on macos: ">= :monterey"

  app "claudeRigUi.app"

  zap trash: [
    "~/Library/Application Support/claudeRigUi",
    "~/Library/Caches/dev.rigsmith.clauderig-ui",
    "~/Library/Preferences/dev.rigsmith.clauderig-ui.plist",
    "~/Library/Saved Application State/dev.rigsmith.clauderig-ui.savedState",
  ]
end
