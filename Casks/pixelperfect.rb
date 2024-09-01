cask "pixelperfect" do

  version "1.4"
  sha256 "31b98c0d3afc71df6e4ea99be82c89d3d910ca7dbb2c6d553254e4ac86f25ece"

  url "https://github.com/cormiertyshawn895/PixelPerfect/releases/download/#{version}/PixelPerfect.#{version}.zip"
  name "Pixel Perfect"
  desc "Application lets you increase the text size of iPhone and iPad apps on Mac."
  homepage "https://github.com/cormiertyshawn895/PixelPerfect"

  caveats <<~EOS
  macOS will prompt “Pixel Perfect cannot be opened because it is from an unidentified developer.” This is expected. 
  
  1. Open System Settings
  2. Choose Privacy & Security
  3. Scroll down to Security
  4. You should see a section stating: 
         - "PixelPerfect" was blocked to protect your Mac.
  5. Click the "Open Anyway" button.
  6. Restart PixelPerfect.
  7. Upon launching, you will need to grant Full Disk Access permissions to PixelPerfect.
  8. Stil on Privacy & Security, in System Settings, scroll up and choose Full Disk Access.
  9. Turn on the preference for PixelPerfect. 
         - You will be prompted for Touch ID or administrator password.
  EOS

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  app "Pixel Perfect/Pixel Perfect.app"

  zap trash: [
    "~/Library/Caches/com.mac.PixelPerfect",
    "~/Library/HTTPStorages/com.mac.PixelPerfect",
    "~/Library/Preferences/com.mac.PixelPerfect.plist",
  ]
end
