# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Depot < Formula
  desc "The official CLI for Depot."
  homepage "https://depot.dev"
  version "2.36.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/depot/cli/releases/download/v2.36.0/depot_2.36.0_darwin_arm64.tar.gz"
      sha256 "354e8c682520c698409fb998c9f42c3eb6cd9d00c7ba17ae4f2a53aa1bc8f2cb"

      def install
        bin.install "bin/depot"

        bash_comp = Utils.safe_popen_read("#{bin}/depot", "completion", "bash")
        fish_comp = Utils.safe_popen_read("#{bin}/depot", "completion", "fish")
        zsh_comp = Utils.safe_popen_read("#{bin}/depot", "completion", "zsh")

        (bash_completion/"depot").write bash_comp
        (fish_completion/"depot.fish").write fish_comp
        (zsh_completion/"_depot").write zsh_comp
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/depot/cli/releases/download/v2.36.0/depot_2.36.0_darwin_amd64.tar.gz"
      sha256 "eb103b5a3134180cfbb0c716fbc96e0f39d929bcfbca2172a1ae44a63ab0abc6"

      def install
        bin.install "bin/depot"

        bash_comp = Utils.safe_popen_read("#{bin}/depot", "completion", "bash")
        fish_comp = Utils.safe_popen_read("#{bin}/depot", "completion", "fish")
        zsh_comp = Utils.safe_popen_read("#{bin}/depot", "completion", "zsh")

        (bash_completion/"depot").write bash_comp
        (fish_completion/"depot.fish").write fish_comp
        (zsh_completion/"_depot").write zsh_comp
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/depot/cli/releases/download/v2.36.0/depot_2.36.0_linux_armv6.tar.gz"
      sha256 "276b9aa2d0ce3bb58f9308703359d997ebbf71581690224d1052d26df015c8a5"

      def install
        bin.install "bin/depot"

        bash_comp = Utils.safe_popen_read("#{bin}/depot", "completion", "bash")
        fish_comp = Utils.safe_popen_read("#{bin}/depot", "completion", "fish")
        zsh_comp = Utils.safe_popen_read("#{bin}/depot", "completion", "zsh")

        (bash_completion/"depot").write bash_comp
        (fish_completion/"depot.fish").write fish_comp
        (zsh_completion/"_depot").write zsh_comp
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/depot/cli/releases/download/v2.36.0/depot_2.36.0_linux_arm64.tar.gz"
      sha256 "8b8b97f5ac2e7074aab55edfa5b4bd024fefb436d4fe59e7de19810adfc4233d"

      def install
        bin.install "bin/depot"

        bash_comp = Utils.safe_popen_read("#{bin}/depot", "completion", "bash")
        fish_comp = Utils.safe_popen_read("#{bin}/depot", "completion", "fish")
        zsh_comp = Utils.safe_popen_read("#{bin}/depot", "completion", "zsh")

        (bash_completion/"depot").write bash_comp
        (fish_completion/"depot.fish").write fish_comp
        (zsh_completion/"_depot").write zsh_comp
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/depot/cli/releases/download/v2.36.0/depot_2.36.0_linux_amd64.tar.gz"
      sha256 "27f28342407848ac408a66282407f5e8c023f57607a59b932cd7d9cef3b25898"

      def install
        bin.install "bin/depot"

        bash_comp = Utils.safe_popen_read("#{bin}/depot", "completion", "bash")
        fish_comp = Utils.safe_popen_read("#{bin}/depot", "completion", "fish")
        zsh_comp = Utils.safe_popen_read("#{bin}/depot", "completion", "zsh")

        (bash_completion/"depot").write bash_comp
        (fish_completion/"depot.fish").write fish_comp
        (zsh_completion/"_depot").write zsh_comp
      end
    end
  end

  test do
    system "#{bin}/depot version"
  end
end
