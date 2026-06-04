class Sct < Formula
  desc "Local-first SNOMED CT toolchain: RF2 → NDJSON, SQLite, Parquet, embeddings, MCP server"
  homepage "https://github.com/pacharanero/sct"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/pacharanero/sct/releases/download/v#{version}/sct-macos-aarch64.tar.gz"
      sha256 "01648700f05ae05f89a03b2bd6ebae2b2aa49fcee1e96c1b6628d4f55989f90c"
    else
      url "https://github.com/pacharanero/sct/releases/download/v#{version}/sct-macos-x86_64.tar.gz"
      sha256 "c1ca925b79d4ce4a236484f2b5854c7fa181c5f00c930db732d1bf901df8ea0e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/pacharanero/sct/releases/download/v#{version}/sct-linux-aarch64.tar.gz"
      sha256 "0d92fc374d01511cff29b37f1ca0e988ab6b81403a09b09995e7e81f3c7c1295"
    else
      url "https://github.com/pacharanero/sct/releases/download/v#{version}/sct-linux-x86_64.tar.gz"
      sha256 "db12539fa48ef6aebca06038f1c3176ef21722e6666187d9b07c3bae094c3d4a"
    end
  end

  def install
    bin.install "sct"
  end

  test do
    assert_match "sct #{version}", shell_output("#{bin}/sct --version")
  end
end
