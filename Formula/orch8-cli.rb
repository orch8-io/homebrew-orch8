class Orch8Cli < Formula
  desc "CLI for Orch8 workflow engine"
  homepage "https://orch8.io"
  version "0.1.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/orch8-io/cli/releases/download/v#{version}/orch8-cli-v#{version}-darwin-arm64.tar.gz"
    end
    on_intel do
      url "https://github.com/orch8-io/cli/releases/download/v#{version}/orch8-cli-v#{version}-darwin-amd64.tar.gz"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orch8-io/cli/releases/download/v#{version}/orch8-cli-v#{version}-linux-arm64.tar.gz"
    end
    on_intel do
      url "https://github.com/orch8-io/cli/releases/download/v#{version}/orch8-cli-v#{version}-linux-amd64.tar.gz"
    end
  end

  def install
    bin.install "orch8"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/orch8 version")
  end
end
