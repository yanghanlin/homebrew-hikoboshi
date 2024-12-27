# TODO: Convert to cask once Homebrew casks are supported on Linux

class Loginto < Formula
  desc "Utility to help log into remote hosts with convenience"
  homepage "https://github.com/yanghanlin/tdutilities/tree/main/apps/loginto"
  version "0.1-4.9f41a2e"

  # FIXME: `brew style` or `brew audit` seems to report a false positive:
  #        FormulaAudit/LivecheckUrlSymbol: Use url :stable
  # livecheck do
  #   url "https://static.tree-diagram.site/utilities/version"
  #   regex(/^(.*)$/i)
  # end

  bottle do
    root_url "https://github.com/yanghanlin/homebrew-hikoboshi/releases/download/loginto-0.1"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "3ccf585134e954de78e61d1b4046858e67c3688a8882623658b84428b7e898ba"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "05509217aa35aa2e8e1da22ff372e2b10160e6921a6234c0602c5e80d62cf3bd"
  end

  on_macos do
    on_intel do
      url "https://static.tree-diagram.site/utilities/loginto_0.1-4.9f41a2e_Darwin_x86_64.tar.zst"
      sha256 "ef9f6d0c931910660b6600fc9918886d40bfcbd182bdd6552c06a062c6e67b41"
    end
    on_arm do
      url "https://static.tree-diagram.site/utilities/loginto_0.1-4.9f41a2e_Darwin_arm64.tar.zst"
      sha256 "a851e7765092fcde2409da8a46656991ad1a3554b51ae09e91e43df632191b3b"
    end
  end

  on_linux do
    on_intel do
      url "https://static.tree-diagram.site/utilities/loginto_0.1-4.9f41a2e_Linux_x86_64.tar.zst"
      sha256 "106280ba0fae8139e78d1598b9b4460d09dbbf43ad93999dc9bcbc259ad77947"
    end
    on_arm do
      url "https://static.tree-diagram.site/utilities/loginto_0.1-4.9f41a2e_Linux_aarch64.tar.zst"
      sha256 "1bd804436e168b07ede991f60f2d59fdbc3eda8f1ee340662428df51aa585929"
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
