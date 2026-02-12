class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "1.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.5/stoptail_Darwin_arm64.tar.gz"
      sha256 "d7829480f155c551f581e81cefab07def7f31675899409c7e6cc0aa581240789"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.5/stoptail_Darwin_x86_64.tar.gz"
      sha256 "8fb516e9531bf86f9c3f4b7f36eb33907c5ca1e3ce621a987daa406613cd2398"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.5/stoptail_Linux_arm64.tar.gz"
      sha256 "d1fc662991ff0f4d278bcf069fdaef3355071048a30da5bc3ee7977d7ee725e8"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.5/stoptail_Linux_x86_64.tar.gz"
      sha256 "fb16ddfa0595906b9437f387b3e93adb02e661388d8b7d73e1a8de0d18e958bb"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
