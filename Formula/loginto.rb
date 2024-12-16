class Loginto < Formula
  desc "Log into remote hosts with convenience"
  homepage "https://github.com/yanghanlin/tdutilities/tree/main/loginto"
  version "v0.0"

  on_macos do
    on_intel do
      url "https://static.tree-diagram.site/utilities/loginto-darwin-amd64-latest"
      sha256 "invalid"

      def install
        bin.install "loginto-darwin-amd64-latest" => "loginto"
      end
    end

    on_arm do
      url "https://static.tree-diagram.site/utilities/loginto-darwin-arm64-latest"
      sha256 "invalid"

      def install
        bin.install "loginto-darwin-arm64-latest" => "loginto"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://static.tree-diagram.site/utilities/loginto-linux-amd64-latest"
      sha256 "invalid"

      def install
        bin.install "loginto-linux-amd64-latest" => "loginto"
      end
    end

    on_arm do
      url "https://static.tree-diagram.site/utilities/loginto-linux-arm64-latest"
      sha256 "invalid"

      def install
        bin.install "loginto-linux-arm64-latest" => "loginto"
      end
    end
  end
end
