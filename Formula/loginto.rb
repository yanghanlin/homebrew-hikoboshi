# TODO: Convert to cask once Homebrew casks are supported on Linux

class Loginto < Formula
  desc "Utility to help log into remote hosts with convenience"
  homepage "https://github.com/yanghanlin/tdutilities/tree/main/apps/loginto"
  version "0.1-8.d0bfc1e"

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
      url "https://static.tree-diagram.site/utilities/loginto_0.1-8.d0bfc1e_Darwin_x86_64.tar.zst"
      sha256 "d6538bb2508ec0c28c32af237cf283856214acff4ea3965c3987449f81d05e07"
    end
    on_arm do
      url "https://static.tree-diagram.site/utilities/loginto_0.1-8.d0bfc1e_Darwin_arm64.tar.zst"
      sha256 "6723d1085177c6ffa6371e76ada6f867ef3707a005e04326a1e32b4d1ad1e51f"
    end
  end

  on_linux do
    on_intel do
      url "https://static.tree-diagram.site/utilities/loginto_0.1-8.d0bfc1e_Linux_x86_64.tar.zst"
      sha256 "ea444b605daa0d3aaa1300bdf536b2a1c0f0461a5464c5fcf828570f8b8fb198"
    end
    on_arm do
      url "https://static.tree-diagram.site/utilities/loginto_0.1-8.d0bfc1e_Linux_aarch64.tar.zst"
      sha256 "32830eea7faa293d56ff7c301ef2eb1173805917910a03d1bd714510213a1dd8"
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
