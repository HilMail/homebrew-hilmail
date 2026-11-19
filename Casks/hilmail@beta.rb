cask "hilmail@beta" do
  version "0.36"
  sha256 "0587a97f2bf712cb758b5428d71b492a4eadf31b549f264a8949bcaf16d2fe12"

  url "https://github.com/HilMail/homebrew-hilmail/releases/download/v#{version}/HilMail-v#{version}-macOS-arm64-Preview.dmg"
  name "HilMail Beta"
  desc "Private email service beta client"
  homepage "https://hilmail.co/"

  # The release workflow currently produces only an Apple-silicon macOS binary.
  depends_on arch: :arm64
  depends_on :macos

  app "HilMail.app"

  # Preview builds are intentionally kept distinct from a future notarized stable channel.
  caveats <<~EOS
    This is a HilMail prerelease for internal testing.
    The app is ad hoc signed and may require a Gatekeeper confirmation before first launch.
  EOS
end
