class Sct < Formula
  desc "Local-first SNOMED CT toolchain: RF2 → NDJSON, SQLite, Parquet, embeddings, MCP server"
  homepage "https://github.com/pacharanero/sct"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pacharanero/sct/releases/download/v#{version}/sct-macos-aarch64.tar.gz"
      sha256 "abbc977c50936e45eff319499e7d4435ad874af03b31f40c1e34cd35209deb06"
    else
      url "https://github.com/pacharanero/sct/releases/download/v#{version}/sct-macos-x86_64.tar.gz"
      sha256 "942d7c4a09dba157d1e73e8bc690377beeee32f64d517a18f87efec3fdde0087"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pacharanero/sct/releases/download/v#{version}/sct-linux-aarch64.tar.gz"
      sha256 "0dca0c91e8b3a422706a62acd99cff65d1a2c0fa5f74b9a54b5a737110f1d986"
    else
      url "https://github.com/pacharanero/sct/releases/download/v#{version}/sct-linux-x86_64.tar.gz"
      sha256 "dc8c0e0b0bfa2a60067b4fe712c252a26d8abf913154bfac821cc30240ec8420"
    end
  end

  def install
    bin.install "sct"
  end

  test do
    assert_match "sct #{version}", shell_output("#{bin}/sct --version")
  end
end
