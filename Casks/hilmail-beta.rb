cask "hilmail-beta" do
  version "0.24"
  sha256 "2c51b6aee358a40c3e8f4b7533914f942361a920124faa42bd53d785a69f3153"

  url "https://github.com/HilMail/hilmail-ios/releases/download/v#{version}/HilMail-v#{version}-macOS-arm64-Preview.dmg"
  name "HilMail Beta"
  desc "Private email service beta client"
  homepage "https://hilmail.co/"

  # The release workflow currently produces only an Apple-silicon macOS binary.
  depends_on arch: :arm64
  depends_on :macos

  app "HilMail.app"

  # Beta previews are ad hoc signed until the production Developer ID and notarization pipeline is configured.
  caveats <<~EOS
    This is a HilMail prerelease for internal testing.
    The app is ad hoc signed and may require a Gatekeeper confirmation before first launch.
  EOS
end
