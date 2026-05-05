class RedmineCli < Formula
  desc "Redmine CLI generated from the Redmine OpenAPI specification"
  homepage "https://github.com/muxx/redmine-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/muxx/redmine-cli/releases/download/v0.1.0/redmine_v0.1.0_darwin_arm64.tar.gz"
      sha256 "2f721d91da16ddeff1630990610a74aa8b17fd46f9f16e0f3db25e974fd82099"
    end

    on_intel do
      url "https://github.com/muxx/redmine-cli/releases/download/v0.1.0/redmine_v0.1.0_darwin_amd64.tar.gz"
      sha256 "b3eba217b1b4af023cc198aa7d53c3dd1d6c5541e9d6c2878e40b535d69f306f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/muxx/redmine-cli/releases/download/v0.1.0/redmine_v0.1.0_linux_arm64.tar.gz"
      sha256 "5fb6e00a3332b0530309d855beea61be78b0933a606d5218aceb268ae76ab67d"
    end

    on_intel do
      url "https://github.com/muxx/redmine-cli/releases/download/v0.1.0/redmine_v0.1.0_linux_amd64.tar.gz"
      sha256 "c6aac2417f9feaaec58ed3f31c612ef530c7be132d641b830c609539867b3b9c"
    end
  end

  def install
    bin.install "redmine"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/redmine --version")
  end
end
