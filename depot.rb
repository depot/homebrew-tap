# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Depot < Formula
  desc "The official CLI for Depot."
  homepage "https://depot.dev"
  version "0.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/depot/cli/releases/download/v0.0.2/depot_0.0.2_macOS_amd64.tar.gz"
      sha256 "b7f664c59d1ae1837161d9ead30c09345fbada5adf7262e288a01330e4759c27"

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
    if Hardware::CPU.arm?
      url "https://github.com/depot/cli/releases/download/v0.0.2/depot_0.0.2_macOS_arm64.tar.gz"
      sha256 "11206e78296d5a4b81da9161e2b43d26175a8f341cbb62c1ecbbad24dc5207a1"

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
      url "https://github.com/depot/cli/releases/download/v0.0.2/depot_0.0.2_linux_armv6.tar.gz"
      sha256 "85ca098eb127c570159b447d5dc6ae8205360b402fd4aaf7e71337c7d6458d14"

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
      url "https://github.com/depot/cli/releases/download/v0.0.2/depot_0.0.2_linux_arm64.tar.gz"
      sha256 "678f852b5d3dd37fffad0a623fee12244db1291cb88b30a1fd9e5bbe2e1e051c"

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
      url "https://github.com/depot/cli/releases/download/v0.0.2/depot_0.0.2_linux_amd64.tar.gz"
      sha256 "46cb1be6b0e082f1268dc78886845d0ce449c7849db1c40f6b2839dd04b39771"

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
