# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gontainer < Formula
  desc "DI container for GO"
  homepage "https://github.com/gontainer/gontainer"
  version "0.4.16"
  license "MIT"

  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gontainer/gontainer/releases/download/v0.4.16/gontainer_Darwin_x86_64.tar.gz"
      sha256 "69814d9e94d69e8cff5f054a6ff5fe6006c64c3056a1b0a198acaa77d99b2d34"

      def install
        bin.install "gontainer"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gontainer/gontainer/releases/download/v0.4.16/gontainer_Darwin_arm64.tar.gz"
      sha256 "c4b388d607f2d42064f6ef26ea49dc7d40aaa007945dd4f28078516fccdb5d7f"

      def install
        bin.install "gontainer"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gontainer/gontainer/releases/download/v0.4.16/gontainer_Linux_armv7.tar.gz"
      sha256 "ec940a9b8b6b03af3e55d6f026db70c5cda90ca5285d44cf19bd11342376b606"

      def install
        bin.install "gontainer"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gontainer/gontainer/releases/download/v0.4.16/gontainer_Linux_x86_64.tar.gz"
      sha256 "163591669fefca722ae301d94df0a7c4c033e36be0c1c91e36478d8b560e18fd"

      def install
        bin.install "gontainer"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gontainer/gontainer/releases/download/v0.4.16/gontainer_Linux_arm64.tar.gz"
      sha256 "0c0f2b588faa62f13d78dafa5713359d10869b403c849dac60b04a5a1909a7a5"

      def install
        bin.install "gontainer"
      end
    end
  end

  test do
    system "#{bin}/gontainer -v"
  end
end
