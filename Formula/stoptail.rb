class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "1.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.10.0/stoptail_Darwin_arm64.tar.gz"
      sha256 "d0a7badf7298bd78e4308567b01b5783d1ce8b558b6775c4983d242ea16db87f"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.10.0/stoptail_Darwin_x86_64.tar.gz"
      sha256 "df72c606b50faf98957c72801cf5122349429696dc2b6dc24cb5230cdb5b8ab3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.10.0/stoptail_Linux_arm64.tar.gz"
      sha256 "876ba9326c6236120f69f1cda98a87407c3df21e30f85f2a993562c713445855"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.10.0/stoptail_Linux_x86_64.tar.gz"
      sha256 "495f537424f37f97413fba49f6777ef3c9eb6597b29fae5dd144a8efc40164b9"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
