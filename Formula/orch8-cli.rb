class Orch8Cli < Formula
  desc "CLI for Orch8 workflow engine"
  homepage "https://orch8.io"
  version "0.2.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/orch8-io/cli/releases/download/v#{version}/orch8-cli-v#{version}-darwin-arm64.tar.gz"
      sha256 "a56ba2f84a73cf23193b87b12ba338d14a48a367f163efa060de8b76484ed233"
    end
    on_intel do
      url "https://github.com/orch8-io/cli/releases/download/v#{version}/orch8-cli-v#{version}-darwin-amd64.tar.gz"
      sha256 "9c7e6b0eb3721299984e9795d8f5a8c56f4f6783695a147456ba3f22b68d0f6c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orch8-io/cli/releases/download/v#{version}/orch8-cli-v#{version}-linux-arm64.tar.gz"
      sha256 "4dd3b8afce9c00d9a776cb6892c1f38e4561dd43fdb479db2c62d242f53bb492"
    end
    on_intel do
      url "https://github.com/orch8-io/cli/releases/download/v#{version}/orch8-cli-v#{version}-linux-amd64.tar.gz"
      sha256 "b96379506562c817e4c5b63eb76e9278268e49854d867076fbcc9a3d04375738"
    end
  end

  def install
    bin.install "orch8"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/orch8 version")
  end
end
