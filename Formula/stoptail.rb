class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "1.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.9.0/stoptail_Darwin_arm64.tar.gz"
      sha256 "df9942fb5a27b79e9d2ab44cd0544bb112c248422d2e1f99f2ffe4454c1ad36a"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.9.0/stoptail_Darwin_x86_64.tar.gz"
      sha256 "ac0f9d570f7c6fa6837dc8fb5a5cf9265448ee53593debdf27d6e0a001972741"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.9.0/stoptail_Linux_arm64.tar.gz"
      sha256 "55b2a0ec265b77dec53dc48ed5a36bcd283fb800bf6c3cfd73a1ff94b63dfcb9"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.9.0/stoptail_Linux_x86_64.tar.gz"
      sha256 "c5dddc118987520bb1c23b7cceb37d8e33a307e289fee13fbba1d794af3184af"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
