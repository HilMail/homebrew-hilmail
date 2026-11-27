cask "hilmail@beta" do
  version "0.68"
  sha256 "d3a2b0c6f882974d51372edde8f1156eba897cbf1f55b6029127cb899c7a478f"

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
