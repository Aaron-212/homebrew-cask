cask "tencent-ugit" do
  arch arm: "arm64", intel: "x64"

  version "5.19.2"
  sha256 arm:   "809ddbe1ec1e085d4eb2a084408903cd560b1cd666786d8a952e35790608d327",
         intel: "ba0d5b9f42bd5304868f6bbd35899f4a707b8a5f031983808fe60a0c02215d27"

  url "https://ugit.qq.com/downloads/ugit_public/UGit-#{arch}-#{version}.dmg"
  name "Tencent UGit"
  desc "Making Git easy for everyone"
  homepage "https://ugit.qq.com/"

  livecheck do
    url "https://ugit.qq.com/changelog.json"
    regex(/"version":\s*"v?(\d+(?:\.\d+)+)"/)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "UGit.app"

  zap trash: [
    "~/Library/Application Support/UGit",
    "~/Library/Caches/com.tencent.ugit",
    "~/Library/Caches/com.tencent.ugit.ShipIt",
    "~/Library/Logs/UGit",
    "~/Library/Preferences/com.tencent.ugit.plist",
    "~/Library/Saved Application State/com.tencent.ugit.savedState",
  ]
end
