class RedmineCli < Formula
  desc "Redmine CLI generated from the Redmine OpenAPI specification"
  homepage "https://github.com/muxx/redmine-cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/muxx/redmine-cli/releases/download/v0.3.1/redmine_v0.3.1_darwin_arm64.tar.gz"
      sha256 "a664df403c49d0d04d9606370919b6d6d880013577a5afd333f8e43c9d20176a"
    end

    on_intel do
      url "https://github.com/muxx/redmine-cli/releases/download/v0.3.1/redmine_v0.3.1_darwin_amd64.tar.gz"
      sha256 "234972938421848a784c541ab01f143c730dd5b45cdacaaf64dc5690f2fdd935"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/muxx/redmine-cli/releases/download/v0.3.1/redmine_v0.3.1_linux_arm64.tar.gz"
      sha256 "fd5c9e5e28178e4a25bbcdedd1d18d0016a5f895deaacc79e18b79bb6b8a45d3"
    end

    on_intel do
      url "https://github.com/muxx/redmine-cli/releases/download/v0.3.1/redmine_v0.3.1_linux_amd64.tar.gz"
      sha256 "b338477fb0c5ac00ccd0c9b151f360b20c6bd75e00f79e98d36e56f1f9407629"
    end
  end

  def install
    bin.install "redmine"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/redmine --version")
  end
end
