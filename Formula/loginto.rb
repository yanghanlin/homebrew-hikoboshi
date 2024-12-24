class Loginto < Formula
  desc "Utility to help log into remote hosts with convenience"
  homepage "https://github.com/yanghanlin/tdutilities/tree/main/apps/loginto"
  version "0.0-40.2165ec5"

  bottle do
    root_url "https://github.com/yanghanlin/homebrew-hikoboshi/releases/download/loginto-0.0-40.2165ec5"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "1f6d2779e8b0b8f01d30cb69159281a859b92052bd52de332af511eeb7b9fab3"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "cc9eda6ac0e3fa7f4e27bc704c7e6230be2c066d79eb3c1590fb76ddc419c29d"
  end

  on_macos do
    on_intel do
      url "https://static.tree-diagram.site/utilities/loginto_0.0-40.2165ec5_Darwin_x86_64.tar.xz"
      sha256 "951516b2e90b6a500bfc041625a01f53055176e6baa240457fcf2483da5e0acd"
    end
    on_arm do
      url "https://static.tree-diagram.site/utilities/loginto_0.0-40.2165ec5_Darwin_arm64.tar.xz"
      sha256 "1be180489999cb5db9c151229e2858532ddb0aabf9a5816da12e337f3b1d4bbd"
    end
  end

  on_linux do
    on_intel do
      url "https://static.tree-diagram.site/utilities/loginto_0.0-40.2165ec5_Linux_x86_64.tar.xz"
      sha256 "30b277e189f82987da6a308e19c8f8523a74fc072a38f27d64e600e6f4639647"
    end
    on_arm do
      url "https://static.tree-diagram.site/utilities/loginto_0.0-40.2165ec5_Linux_aarch64.tar.xz"
      sha256 "d23ec9dfccca2cee105894a061f95b0122dee9841a727574a68d74d6a86584c8"
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
