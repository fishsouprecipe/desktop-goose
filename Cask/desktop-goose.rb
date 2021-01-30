cask "desktop-goose" do
  version "0.22"
  sha256 "9d866197a98d0ab197d2db2252f50300d5ecdacc772a0ed353d5e5175e9cf47a"

  url "https://github.com/fishsouprecipe/desktop-goose/raw/primary/DesktopGoose-#{version}.zip"
  name "Desktop Goose"
  desc "HONK HONK"
  homepage "https://www.desktopgoose.io/"

  app "Desktop Goose.app"

  zap trash: [
    "~/Library/Containers/net.namedfork.DesktopGoose",
    "~/Library/Application Scripts/net.namedfork.DesktopGoose",
  ]
end
  

