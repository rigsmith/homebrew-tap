cask "clauderig-ui" do
  version "0.1.1"
  sha256 "3324d6d7746c7855299d54484240a777a69eba3fbf18f82b3a5292575e830c7a"

  url "https://github.com/rigsmith/rigsmith/releases/download/v1.17.0/claudeRigUi_0.1.1_darwin_universal.zip"
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
