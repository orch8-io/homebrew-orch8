class Orch8Server < Formula
  desc "Durable workflow orchestration engine"
  homepage "https://orch8.io"
  version "0.1.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/orch8-io/engine/releases/download/v#{version}/orch8-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b819cea67a0e04090032481f588a156685efebb222494dca99d7ee3d9678e561"
    end
    on_intel do
      url "https://github.com/orch8-io/engine/releases/download/v#{version}/orch8-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "9fe76f444f2ba20129b34cf1abbdcb7e3902ef117d48aa5b14694d4e28e561f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orch8-io/engine/releases/download/v#{version}/orch8-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "46dbe6373596145712e8c8cdf4fd24adde916840563168827fcff707685d5906"
    end
    on_intel do
      url "https://github.com/orch8-io/engine/releases/download/v#{version}/orch8-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ff25f3b2f58c1ba0dd66b69c692d94d49fd780b4729b901323577d93c5cfdc9"
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
