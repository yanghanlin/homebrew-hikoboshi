class Loginto < Formula
  desc "Log into remote hosts with convenience"
  homepage "https://github.com/yanghanlin/tdutilities/tree/main/loginto"
  version "0.0-40.2165ec5"

  on_macos do
    on_intel do
      url "https://static.tree-diagram.site/utilities/loginto_0.0-40.2165ec5_Darwin_x86_64.tar.xz"
      # sha256 "invalid"
    end
    on_arm do
      url "https://static.tree-diagram.site/utilities/loginto_0.0-40.2165ec5_Darwin_arm64.tar.xz"
      # sha256 "invalid"
    end
  end

  on_linux do
    on_intel do
      url "https://static.tree-diagram.site/utilities/loginto_0.0-40.2165ec5_Linux_x86_64.tar.xz"
      # sha256 "invalid"
    end
    on_arm do
      url "https://static.tree-diagram.site/utilities/loginto_0.0-40.2165ec5_Linux_aarch64.tar.xz"
      # sha256 "invalid"
    end
  end

  def install
    prefix.install Dir["*"]
  end
end
