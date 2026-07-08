class Onote < Formula
  desc "Terminal-native, Obsidian-compatible Markdown vault client"
  homepage "https://github.com/AlanSynn/onote"
  url "https://github.com/AlanSynn/onote/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "fd2de60e4714811cf21f71ba8b88a3069e9d84e2cbb53f4d997d9363d3fc6177"
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
