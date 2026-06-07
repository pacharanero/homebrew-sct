class Sct < Formula
  desc "Local-first SNOMED CT toolchain: RF2 → NDJSON, SQLite, Parquet, embeddings, MCP server"
  homepage "https://github.com/pacharanero/sct"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pacharanero/sct/releases/download/v#{version}/sct-macos-aarch64.tar.gz"
      sha256 "c073fc41ee1d9ebe5034b56d0c6c37aa3b372cf3b8fd88e067991a7e0db1603f"
    else
      url "https://github.com/pacharanero/sct/releases/download/v#{version}/sct-macos-x86_64.tar.gz"
      sha256 "ac3f9a708870e0f83f557e8eb1f7be76da01f3c296023522d5c239cb8ce6855b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pacharanero/sct/releases/download/v#{version}/sct-linux-aarch64.tar.gz"
      sha256 "6d6bc1fe3607a2b5f76a2e09b4dd50c54d052e9bb4c9c3c680c635b8fb39ca19"
    else
      url "https://github.com/pacharanero/sct/releases/download/v#{version}/sct-linux-x86_64.tar.gz"
      sha256 "77f07da37c98e049d19157e0b7094183a227d88be909f0ce51949a342ecb03e4"
    end
  end

  def install
    bin.install "sct"
  end

  test do
    assert_match "sct #{version}", shell_output("#{bin}/sct --version")
  end
end
