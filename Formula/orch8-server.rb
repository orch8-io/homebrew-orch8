class Orch8Server < Formula
  desc "Durable workflow orchestration engine"
  homepage "https://orch8.io"
  version "0.6.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/orch8-io/engine/releases/download/v#{version}/orch8-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "aedb2dbc61b3d20609b54af38a76e783a222c39b07dc43e7994087abd0541479"
    end
    on_intel do
      url "https://github.com/orch8-io/engine/releases/download/v#{version}/orch8-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d8e8d2020e954395ad4c2b3fedad8eb6a41ca236c25b06857ff21368188c4cae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orch8-io/engine/releases/download/v#{version}/orch8-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "806ba671aad13b348f0f8fc963888e4fc0889e4c57f888bb0d1402621cab7413"
    end
    on_intel do
      url "https://github.com/orch8-io/engine/releases/download/v#{version}/orch8-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "347a88de23dcf827e2cb4ef5f1c6f5bcf81b2ef4203acc37bb3b7297e14047dd"
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
