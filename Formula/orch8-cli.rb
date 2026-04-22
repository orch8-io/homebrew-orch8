class Orch8Cli < Formula
  desc "CLI for Orch8 workflow engine"
  homepage "https://orch8.io"
  version "0.1.0"
  license "BUSL-1.1"

  on_macos do
    on_arm do
      url "https://github.com/orch8-io/cli/releases/download/v#{version}/orch8-cli-v#{version}-darwin-arm64.tar.gz"
      sha256 "f7e638f3f46767ded5b785afcbd1f47b448da653de7f2dd7b6efaf754fdfdf2c"
    end
    on_intel do
      url "https://github.com/orch8-io/cli/releases/download/v#{version}/orch8-cli-v#{version}-darwin-amd64.tar.gz"
      sha256 "5137cbab0bac64e02526c3344f8c6c2b1e5a4c19d69c65eeb730d09c691c1fdd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/orch8-io/cli/releases/download/v#{version}/orch8-cli-v#{version}-linux-arm64.tar.gz"
      sha256 "ee9f6d48ea30ad44266f92c25320b9813d10de0c60bda1fe0f78da9c47804de0"
    end
    on_intel do
      url "https://github.com/orch8-io/cli/releases/download/v#{version}/orch8-cli-v#{version}-linux-amd64.tar.gz"
      sha256 "b06009681b1fb4cb0ec5cc47bda423f1297dfa57cd5bbedb63670bc399d5e373"
    end
  end

  def install
    bin.install "orch8"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/orch8 version")
  end
end
