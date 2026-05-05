class Orch8Server < Formula
  desc "Durable workflow orchestration engine"
  homepage "https://orch8.io"
  version "0.4.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/orch8-io/engine/releases/download/v#{version}/orch8-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "fa8d2713f47f4561117da810ebca4ca217fff049e7acbd4f285c50d82da4bda0"
    end
    on_intel do
      url "https://github.com/orch8-io/engine/releases/download/v#{version}/orch8-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "d4329b0fe7af469310a79be12247367cad3b7689a387df0aa92a50b30a1832ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orch8-io/engine/releases/download/v#{version}/orch8-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "89eec276556a7d77d9235c3461c3405382cbe3ae2fc9e35d126712a60b60e640"
    end
    on_intel do
      url "https://github.com/orch8-io/engine/releases/download/v#{version}/orch8-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e4fa44c118c9adc9afb98c47cf73d2fac928a59a5f50a83700c0773d018a8d8"
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
