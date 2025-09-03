# TODO: Convert to cask once Homebrew casks are supported on Linux

class Loginto < Formula
  desc "Utility to help log into remote hosts with convenience"
  homepage "https://github.com/yanghanlin/tdutilities/tree/main/apps/loginto"
  version "0.1-9.ead9140"

  # FIXME: `brew style` or `brew audit` seems to report a false positive:
  #        FormulaAudit/LivecheckUrlSymbol: Use url :stable
  # livecheck do
  #   url "https://static.tree-diagram.site/utilities/version"
  #   regex(/^(.*)$/i)
  # end

  bottle do
    root_url "https://github.com/yanghanlin/homebrew-hikoboshi/releases/download/loginto-0.1-8.d0bfc1e"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "83dc4d45ccbda9a0dee6054796d6cdc1e0f9a6ad877bf6e92a0f78ac6f55f22f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "3b81868833e412b55b3af650d95fbc772301ddd288e08be463d267c5f6eba108"
  end

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

  def install
    # FIXME: During installation process, Homebrew seems to set the working
    #        directory to $TARBALL/bin, where access to the root directory seems
    #        blocked; replace `bin.install` with `prefix.install` once this is
    #        resolved.
    bin.install Dir["*"]
  end

  test do
    system "#{bin}/loginto", "version"
  end
end
