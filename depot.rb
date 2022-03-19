# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Depot < Formula
  desc "The official CLI for Depot."
  homepage "https://depot.dev"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/depot/cli/releases/download/v0.0.5/depot_0.0.5_macOS_amd64.tar.gz"
      sha256 "7433403e803bdf04340c0af254d43acb12c4a5f43a0524ff960b26a0141da945"

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
      url "https://github.com/depot/cli/releases/download/v0.0.5/depot_0.0.5_macOS_arm64.tar.gz"
      sha256 "b358c5b2e1b6484654a6aa42c726de64d076676fd727d4acf5c1e5b70577cab4"

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
      url "https://github.com/depot/cli/releases/download/v0.0.5/depot_0.0.5_linux_armv6.tar.gz"
      sha256 "e2bf4dbb0c9abee8119ccc67702dbff502a32fbfa0a72f65ccde071cea38c300"

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
      url "https://github.com/depot/cli/releases/download/v0.0.5/depot_0.0.5_linux_arm64.tar.gz"
      sha256 "ac9c2c4a774764ebee791438c2bb0a7a4fdb256b1da010fde25075976eb6b97f"

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
      url "https://github.com/depot/cli/releases/download/v0.0.5/depot_0.0.5_linux_amd64.tar.gz"
      sha256 "8e8c015518957edfa701b14720d6c369d30a52f3524f6c1748f9639a322ab7e4"

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
