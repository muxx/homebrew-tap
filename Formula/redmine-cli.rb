class RedmineCli < Formula
  desc "Redmine CLI generated from the Redmine OpenAPI specification"
  homepage "https://github.com/muxx/redmine-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/muxx/redmine-cli/releases/download/v0.2.0/redmine_v0.2.0_darwin_arm64.tar.gz"
      sha256 "37977d199d4dc19885d2aa56bae4eb49bf541a9a4f7016d790db0826d2111d1b"
    end

    on_intel do
      url "https://github.com/muxx/redmine-cli/releases/download/v0.2.0/redmine_v0.2.0_darwin_amd64.tar.gz"
      sha256 "c65c805370048d49b8644016edca44ae49920607f34c47e9215278cd298ce850"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/muxx/redmine-cli/releases/download/v0.2.0/redmine_v0.2.0_linux_arm64.tar.gz"
      sha256 "9cad0b2136b98e856340de6f4274ea7135398c31a0508f122ed7fb0bd769b4a6"
    end

    on_intel do
      url "https://github.com/muxx/redmine-cli/releases/download/v0.2.0/redmine_v0.2.0_linux_amd64.tar.gz"
      sha256 "9ed27e9e0be001a11276400037e1d928a6b74bcdf8f060d2a9332eb4bc1ac101"
    end
  end

  def install
    bin.install "redmine"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/redmine --version")
  end
end
