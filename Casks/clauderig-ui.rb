cask "clauderig-ui" do
  version "0.2.0"
  sha256 "6c3b5bb3692a398fbcc04a256652311e39688a8643c2aabdf36f9b4d8a9df354"

  url "https://github.com/rigsmith/rigsmith/releases/download/ui/v0.2.0/claudeRigUi_0.2.0_darwin_universal.zip"
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
