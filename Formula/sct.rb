class Sct < Formula
  desc "Local-first SNOMED CT toolchain: RF2 → NDJSON, SQLite, Parquet, embeddings, MCP server"
  homepage "https://github.com/pacharanero/sct"
  version "0.6.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pacharanero/sct/releases/download/v#{version}/sct-macos-aarch64.tar.gz"
      sha256 "c98dc2a850b2e3431ecd47c9c5c3ec51b6434fd985c1c980393c41a2c7ea7b67"
    else
      url "https://github.com/pacharanero/sct/releases/download/v#{version}/sct-macos-x86_64.tar.gz"
      sha256 "7332c183568373444e64ba5f596666bd99d7f3a104718871e6bbec9b5a09748d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pacharanero/sct/releases/download/v#{version}/sct-linux-aarch64.tar.gz"
      sha256 "145552cbb38c34199a9c29733781a482d24ef88b51305d07a9caa723c4de5902"
    else
      url "https://github.com/pacharanero/sct/releases/download/v#{version}/sct-linux-x86_64.tar.gz"
      sha256 "54c64a3e1f73cf263cdd13bee4dbfffa7fc35ae3bfb79d24f1f43ac8f1690505"
    end
  end

  def install
    bin.install "sct"
  end

  test do
    assert_match "sct #{version}", shell_output("#{bin}/sct --version")
  end
end
