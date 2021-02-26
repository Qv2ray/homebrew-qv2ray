cask "qv2ray-plugin-ss" do
  version "3.0.0-pre3"
  sha256 "8264df5ce46e59ea50b7ffb8c7dd23530485f5b28011fe94f28c1efc51f9b0cc"

  url "https://github.com/Qv2ray/QvPlugin-SS/releases/download/v#{version}/QvPlugin-SS.v#{version}.macOS-x64.so"
  name "Qv2ray Shadowsocks Plugin"
  desc "Extend Qv2ray's Shadowsocks functionality"
  homepage "https://github.com/Qv2ray/QvPlugin-SS"

  depends_on cask: "qv2ray/qv2ray/qv2ray"

  artifact "QvPlugin-SS.v#{version}.macOS-x64.so", target: "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugins/ss.so"

  caveats <<~EOS
    Run the following command to allow the plugin to activate:
    xattr -d -r com.apple.quarantine ~/Library/Preferences/qv2ray/plugins/ss.so
  EOS
end
