# TODO: Convert to cask once Homebrew casks are supported on Linux

class Loginto < Formula
  desc "Utility to help log into remote hosts with convenience"
  homepage "https://github.com/yanghanlin/tdutilities/tree/main/apps/loginto"
  version "0.1"

  # FIXME: `brew style` or `brew audit` seems to report a false positive:
  #        FormulaAudit/LivecheckUrlSymbol: Use url :stable
  # livecheck do
  #   url "https://static.tree-diagram.site/utilities/version"
  #   regex(/^(.*)$/i)
  # end

  bottle do
    root_url "https://github.com/yanghanlin/homebrew-hikoboshi/releases/download/loginto-0.0-40.2165ec5"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "1f6d2779e8b0b8f01d30cb69159281a859b92052bd52de332af511eeb7b9fab3"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "cc9eda6ac0e3fa7f4e27bc704c7e6230be2c066d79eb3c1590fb76ddc419c29d"
  end

  on_macos do
    on_intel do
      url "https://static.tree-diagram.site/utilities/loginto_0.1_Darwin_x86_64.tar.xz"
      sha256 "808ac8047a65e970efa9cf673d708a3a9056a579bd3df2dd54bc636967e8f353"
    end
    on_arm do
      url "https://static.tree-diagram.site/utilities/loginto_0.1_Darwin_arm64.tar.xz"
      sha256 "9906d758b187ed932f4b4fdcf9b9e6b9117b553c70a499e0c13f853331b09ddb"
    end
  end

  on_linux do
    on_intel do
      url "https://static.tree-diagram.site/utilities/loginto_0.1_Linux_x86_64.tar.xz"
      sha256 "6059036ff603d50c75de4b2fac1c307468d7b9aee1c24304f7b10ecf12d656dc"
    end
    on_arm do
      url "https://static.tree-diagram.site/utilities/loginto_0.1_Linux_aarch64.tar.xz"
      sha256 "89dc41acb030ea0624df5f388b97d721984878c8f1a2f4e3db4e8280a2941bdd"
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
