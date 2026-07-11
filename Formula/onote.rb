class Onote < Formula
  desc "Terminal-native, Obsidian-compatible Markdown vault client"
  homepage "https://github.com/AlanSynn/onote"
  url "https://github.com/AlanSynn/onote/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "355e970709f124dee4c74ec4cfbd1ecd9490f9617f967fc9099b0d10a2fb545e"
  license "MIT"
  head "https://github.com/AlanSynn/onote.git", branch: "main"

  # onote builds from source with Rust (>= 1.82 per Cargo.toml rust-version).
  depends_on "rust" => :build

  # The crate lives at the archive root; `cargo install` builds + installs it.
  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "onote", shell_output("#{bin}/onote --version")
  end
end
