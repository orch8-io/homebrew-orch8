class Orch8Server < Formula
  desc "Durable workflow orchestration engine"
  homepage "https://orch8.io"
  version "0.2.1"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/orch8-io/engine/releases/download/v#{version}/orch8-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ed7f152cf8f1cb9e9e831234503c8c47500230c910b8a1fadc525602998f575f"
    end
    on_intel do
      url "https://github.com/orch8-io/engine/releases/download/v#{version}/orch8-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "fd9d3aaa46435b3e3c822ecb3884807cb3e16284e67abdeeb8935d7cc62dd225"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orch8-io/engine/releases/download/v#{version}/orch8-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "236a13471509aab4f77f2fa7f78f210f3264b47e25f2b0ff9d28fcfc5e069f96"
    end
    on_intel do
      url "https://github.com/orch8-io/engine/releases/download/v#{version}/orch8-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "72e3748e0308a8f4659bc549d32cea391e3fde628780fb54b3a682ca783d54d3"
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
