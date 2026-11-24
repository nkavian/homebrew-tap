cask "inflow" do
  version "0.16.0"
  arch arm: "arm64", intel: "x64"

  sha256 arm:   "4a20f5b3cdc2f140e3465c608ae1db480863aeb7faf4f7fee2342ffafbb6d2b7",
         intel: "8801cf860c6191b3f2b5ba3bf3d231d85a10ea8485b260f334d3dd8f7f7d9a25"

  url "https://github.com/inflowpayai/inflow-cli/releases/download/v#{version}/inflow-#{version}-darwin-#{arch}.zip"
  name "InFlow"
  desc "Agent enrollment and agentic payments from your machine"
  homepage "https://inflowcli.ai"

  depends_on macos: :ventura

  binary "InFlow.app/Contents/MacOS/inflow", target: "inflow"
end
