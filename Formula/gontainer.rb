# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gontainer < Formula
  desc "DI container for GO"
  homepage "https://github.com/gontainer/gontainer"
  version "0.3.3"
  license "MIT"

  depends_on "git"
  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gontainer/gontainer/releases/download/v0.3.3/gontainer_Darwin_x86_64.tar.gz"
      sha256 "be63df11901efe910fbd80d621198992e455367c487bf0b57c93d2ddd98ac5e9"

      def install
        bin.install "gontainer"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gontainer/gontainer/releases/download/v0.3.3/gontainer_Darwin_arm64.tar.gz"
      sha256 "8a6f4c26afc6fb0855479f353badba9da10c680bb67b1cf75b30eff1be43a13a"

      def install
        bin.install "gontainer"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gontainer/gontainer/releases/download/v0.3.3/gontainer_Linux_armv7.tar.gz"
      sha256 "aa4da41fb596fe1d66cd8a0d146009aa568372b13dd42194affbe846c4d17135"

      def install
        bin.install "gontainer"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gontainer/gontainer/releases/download/v0.3.3/gontainer_Linux_x86_64.tar.gz"
      sha256 "9160f8fb6a4811a328d62b996fadb5c4b3164cb1de50ca8a6a6a23d409722562"

      def install
        bin.install "gontainer"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gontainer/gontainer/releases/download/v0.3.3/gontainer_Linux_arm64.tar.gz"
      sha256 "8e613655927426e7f4d34c9133d6c8a864c76716b0e3d5a1d91b752e92c04ede"

      def install
        bin.install "gontainer"
      end
    end
  end

  test do
    system "#{bin}/gontainer -v"
  end
end
