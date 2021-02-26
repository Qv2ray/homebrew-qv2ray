cask "qv2ray-plugin-ssr" do
  version "3.0.0-pre3"
  sha256 "4d61bd076dba375aed188bbd58ea9ba6629793061b9abad9a0d05c3b64063ca6"

  url "https://github.com/Qv2ray/QvPlugin-SSR/releases/download/v#{version}/QvPlugin-SSR.v#{version}.macOS-x64.so"
  name "Qv2ray ShadowsocksR Plugin"
  desc "Add ShadowsocksR support to Qv2ray"
  homepage "https://github.com/Qv2ray/QvPlugin-SSR"

  depends_on cask: "qv2ray/qv2ray/qv2ray"

  artifact "QvPlugin-SSR.v#{version}.macOS-x64.so", target: "#{ENV["HOME"]}/Library/Preferences/qv2ray/plugins/ssr.so"

  caveats <<~EOS
    Run the following command to allow the plugin to activate:
    xattr -d -r com.apple.quarantine ~/Library/Preferences/qv2ray/plugins/ssr.so
  EOS
end
