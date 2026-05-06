class RedmineCli < Formula
  desc "Redmine CLI generated from the Redmine OpenAPI specification"
  homepage "https://github.com/muxx/redmine-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/muxx/redmine-cli/releases/download/v0.3.0/redmine_v0.3.0_darwin_arm64.tar.gz"
      sha256 "583720366afa26c91259959b83b42f1037c7f7414cb3552df01dcc9473443aab"
    end

    on_intel do
      url "https://github.com/muxx/redmine-cli/releases/download/v0.3.0/redmine_v0.3.0_darwin_amd64.tar.gz"
      sha256 "e49d62e353a3d81987d50d154672f1e339db751de0024160802d8d19e8ea19b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/muxx/redmine-cli/releases/download/v0.3.0/redmine_v0.3.0_linux_arm64.tar.gz"
      sha256 "09273466e1c2bac585635767e38e6809ade4175a1d6b2c830942b45df7120a2b"
    end

    on_intel do
      url "https://github.com/muxx/redmine-cli/releases/download/v0.3.0/redmine_v0.3.0_linux_amd64.tar.gz"
      sha256 "2ccae6b4e61725c681de64622c21e5e414c0dc9b66f26fc5c452097073fb15c9"
    end
  end

  def install
    bin.install "redmine"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/redmine --version")
  end
end
