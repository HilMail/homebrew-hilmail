cask "hilmail@beta" do
  version "0.43"
  sha256 "c59e103dee582d03adeafc8e202cce1e0cdfe527ab060f3a3d501600e357d487"

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
