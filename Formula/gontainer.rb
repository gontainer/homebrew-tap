# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gontainer < Formula
  desc "DI container for GO"
  homepage "https://github.com/gontainer/gontainer"
  version "0.4.15"
  license "MIT"

  depends_on "go" => :optional

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/gontainer/gontainer/releases/download/v0.4.15/gontainer_Darwin_x86_64.tar.gz"
      sha256 "4d348186f6041bc47ca23fb26bd6e8b2d96ec95c62bf4d11b47288ebe3143c2c"

      def install
        bin.install "gontainer"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/gontainer/gontainer/releases/download/v0.4.15/gontainer_Darwin_arm64.tar.gz"
      sha256 "54b7d5683183edaf87a82b5dd7e1b2e2676b5df2dd64c79c9a3a965aa5f457dc"

      def install
        bin.install "gontainer"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/gontainer/gontainer/releases/download/v0.4.15/gontainer_Linux_armv7.tar.gz"
      sha256 "edf1cbdbd3e18a77d8c4efee3daee429d3ebe291c800b5493c2b7bf8c464f2f0"

      def install
        bin.install "gontainer"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gontainer/gontainer/releases/download/v0.4.15/gontainer_Linux_x86_64.tar.gz"
      sha256 "e32d85a33c5be9e02e08f6d5991c696250c58814fef5c20ad7a74344dc952213"

      def install
        bin.install "gontainer"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gontainer/gontainer/releases/download/v0.4.15/gontainer_Linux_arm64.tar.gz"
      sha256 "9e7a3396a5a8b6f796f3c27124bf33cf96020b4c990dc244b6e9256dc36dab6a"

      def install
        bin.install "gontainer"
      end
    end
  end

  test do
    system "#{bin}/gontainer -v"
  end
end
