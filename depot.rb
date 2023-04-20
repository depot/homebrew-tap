# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Depot < Formula
  desc "The official CLI for Depot."
  homepage "https://depot.dev"
  version "2.8.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/depot/cli/releases/download/v2.8.2/depot_2.8.2_macOS_amd64.tar.gz"
      sha256 "3b1456554c2809e391803b4aa6d61638792135bed5ac6213e27a36e8b4aa44c8"

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
      url "https://github.com/depot/cli/releases/download/v2.8.2/depot_2.8.2_macOS_arm64.tar.gz"
      sha256 "dd4c5a90de99c6d292a1ac1477aec28157a6795823ce837530b0541f79183dce"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/depot/cli/releases/download/v2.8.2/depot_2.8.2_linux_arm64.tar.gz"
      sha256 "bc5feb06385b33743b8c786ddf2bcf48e540d6a68ad73fb5c5e699ae313f4c14"

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
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/depot/cli/releases/download/v2.8.2/depot_2.8.2_linux_armv6.tar.gz"
      sha256 "fd6e874a702f957590419f1bccaf1ca43e1c08886d94022e5f10576753259664"

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
      url "https://github.com/depot/cli/releases/download/v2.8.2/depot_2.8.2_linux_amd64.tar.gz"
      sha256 "a6b9ed29f1debf896ac3c838e1c2f3d563cc70cd6a9a7240604370ec64baa004"

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
