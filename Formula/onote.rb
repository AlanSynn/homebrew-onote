class Onote < Formula
  desc "Terminal-native, Obsidian-compatible Markdown vault client"
  homepage "https://github.com/AlanSynn/onote"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/AlanSynn/onote/releases/download/v0.4.1/onote-aarch64-apple-darwin.tar.gz"
      sha256 "39f07a68b36344fc77b4aa4eb97e3fc584307d3e4bcd1f5b9c999a595b039eb6"
    end
    on_intel do
      url "https://github.com/AlanSynn/onote/releases/download/v0.4.1/onote-x86_64-apple-darwin.tar.gz"
      sha256 "b06e1959b201455fdbfedfa31ba2b0bd7bd1de8147f3a438fed9705f31d6709d"
    end
  end

  def install
    bin.install "onote"
  end

  test do
    assert_match "onote", shell_output("#{bin}/onote --version")
  end
end
