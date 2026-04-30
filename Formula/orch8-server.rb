class Orch8Server < Formula
  desc "Durable workflow orchestration engine"
  homepage "https://orch8.io"
  version "0.2.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/orch8-io/engine/releases/download/v#{version}/orch8-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "14256af7b882ef6a230d6402f238bbc8eee05d04a0530b332885a6e8b9aecaf6"
    end
    on_intel do
      url "https://github.com/orch8-io/engine/releases/download/v#{version}/orch8-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "9c2e743b74f8e1c18abc50f7b31ca5a9b74db4682c72ee8814c269a90eadc836"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orch8-io/engine/releases/download/v#{version}/orch8-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "de75468e4eb72034170252a0e2ba662fcb685c0073efbd48cf1da0eef3386bf2"
    end
    on_intel do
      url "https://github.com/orch8-io/engine/releases/download/v#{version}/orch8-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7aa85148ee0bf3c7ae89ca33be2d0de1242d8741edaa2d587a12e63113eb3f4c"
    end
  end

  def install
    bin.install "orch8-server"
    bin.install "orch8"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/orch8 version")
  end
end
