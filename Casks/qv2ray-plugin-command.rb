cask "qv2ray-plugin-command" do
  version "3.0.0-pre3"
  sha256 "4db4c44fc2d3d6a34651f3be73a23fb0e8367241deae8a3d3af70c25e5209c4e"

  url "https://github.com/Qv2ray/QvPlugin-Command/releases/download/v#{version}/QvPlugin-Command.v#{version}.macOS-x64.so"
  name "Qv2ray Command Plugin"
  desc "Add command triggers to Qv2ray"
  homepage "https://github.com/Qv2ray/QvPlugin-Command/releases"

  depends_on cask: "qv2ray/qv2ray/qv2ray"

  artifact "QvPlugin-Command.v#{version}.macOS-x64.so", target: "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugins/command.so"

  caveats <<~EOS
    Run the following command to allow the plugin to activate:
    xattr -d -r com.apple.quarantine ~/Library/Preferences/qv2ray/plugins/command.so
  EOS
end
