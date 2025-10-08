cask "loginto" do
  version "0.1-9.ead9140"
  desc "Utility to help log into remote hosts with convenience"
  homepage "https://github.com/yanghanlin/tdutilities/tree/main/apps/loginto"

  on_macos do
    on_intel do
      url "https://static.tree-diagram.site/utilities/loginto_0.1-9.ead9140_Darwin_x86_64.tar.zst"
      sha256 "eaa04cc9cbfd6f4bc9c5558fc63c7e089ca0cb3f00db864e58c995b229ac2f3f"
    end
    on_arm do
      url "https://static.tree-diagram.site/utilities/loginto_0.1-9.ead9140_Darwin_arm64.tar.zst"
      sha256 "0e334b31515ca090fe08be54de39ad95d4e3063ee3cae2de9458e7d6217fc288"
    end
  end

  on_linux do
    on_intel do
      url "https://static.tree-diagram.site/utilities/loginto_0.1-9.ead9140_Linux_x86_64.tar.zst"
      sha256 "de9cbff6f331a209373314e9bc9f28b32f5122e35155fd19550db8c895ed05f1"
    end
    on_arm do
      url "https://static.tree-diagram.site/utilities/loginto_0.1-9.ead9140_Linux_aarch64.tar.zst"
      sha256 "dc5f3c996cdbe2a0b71b3b77d574c2fa5b9bdccf223b232a510b4b600677655d"
    end
  end

  binary "loginto"
end
