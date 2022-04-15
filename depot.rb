# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Depot < Formula
  desc "The official CLI for Depot."
  homepage "https://depot.dev"
  version "0.0.19"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/depot/cli/releases/download/v0.0.19/depot_0.0.19_macOS_amd64.tar.gz"
      sha256 "b2a3a9369035829ec7fc53b7fc9e8419a0b705441d8e69b555ea67077dd6337b"

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
      url "https://github.com/depot/cli/releases/download/v0.0.19/depot_0.0.19_macOS_arm64.tar.gz"
      sha256 "ed7062c9fcc7cc9d7bf9e9e0fd474660aaec273263798299823214b535828e51"

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
      url "https://github.com/depot/cli/releases/download/v0.0.19/depot_0.0.19_linux_arm64.tar.gz"
      sha256 "92bc0b31964047de54ae2a29b1ed8cf439125e919ec1ce26ae0e62d37106710c"

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
      url "https://github.com/depot/cli/releases/download/v0.0.19/depot_0.0.19_linux_armv6.tar.gz"
      sha256 "9796ef009ca4861439db9bf9e9e95d74748a03b8af4674a039bc59e62c356e8d"

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
      url "https://github.com/depot/cli/releases/download/v0.0.19/depot_0.0.19_linux_amd64.tar.gz"
      sha256 "7065c270aebb63e73792ef5bec65af88568a9adff38b4d7f1add44fdbc906552"

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
