class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.2.0/stoptail_Darwin_arm64.tar.gz"
      sha256 "b262833d1bf2867bdbee6a7158b3428629f0a939ec3f2e837830410807717c11"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.2.0/stoptail_Darwin_x86_64.tar.gz"
      sha256 "5648d98fdc0bc2357eefb96e99f181a03cea0fd4a9f01d92a8d6af148a0cf065"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.2.0/stoptail_Linux_arm64.tar.gz"
      sha256 "f490280c95d35a4fb775e54217481a3b0672ebdf32789dafd48488a638c896d5"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.2.0/stoptail_Linux_x86_64.tar.gz"
      sha256 "d53cb3210561f5d11ad0d6cac3c203feafbbf37780f2661f58c44c3929738c55"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
