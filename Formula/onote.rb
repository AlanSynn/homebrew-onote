class Onote < Formula
  desc "Terminal-native, Obsidian-compatible Markdown vault client"
  homepage "https://github.com/AlanSynn/onote"
  url "https://github.com/AlanSynn/onote/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "51394ef8cf50e77957e0d13f58b4b46518e2318f7884c49911f7efe31b84dafe"
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
