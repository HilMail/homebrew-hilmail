# HilMail Homebrew Tap

Install the continuously updated internal beta on Apple silicon:

```sh
brew tap HilMail/hilmail
brew install --cask hilmail@beta
```

`hilmail@beta` tracks every verified prerelease from `HilMail/hilmail-ios`. It is ad hoc signed for internal testing and may need a Gatekeeper confirmation on first launch.

The stable `hilmail` cask is intentionally absent until HilMail publishes its first non-prerelease, Developer ID-signed macOS release. That prevents Homebrew users from receiving a prerelease through the stable command.

Every cask update is proposed through a pull request and validated with Homebrew style and strict cask audit before merge.
