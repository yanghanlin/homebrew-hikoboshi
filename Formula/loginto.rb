class Loginto < Formula
  desc "Utility to help log into remote hosts with convenience"
  homepage "https://github.com/yanghanlin/tdutilities/tree/main/loginto"
  version "0.0-40.2165ec5"

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
    prefix.install Dir["*"]
  end

  test do
    system "#{bin}/loginto", "version"
  end
end
