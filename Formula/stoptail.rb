class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "1.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.6/stoptail_Darwin_arm64.tar.gz"
      sha256 "a287de72e85e366130062a9a1096d546f04801e560643a646d1828be0ccb41ab"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.6/stoptail_Darwin_x86_64.tar.gz"
      sha256 "3755fd99dea6fac889fd26ca479a2be6218b5162b26bea87584edf718335ad14"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.6/stoptail_Linux_arm64.tar.gz"
      sha256 "ca8877f0b621c9b217702d73f2dd3d844b93e8f469f75ce01785d941f8dd02a1"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v1.2.6/stoptail_Linux_x86_64.tar.gz"
      sha256 "88503cbbfb57137a0ece4f91b9086e695fab22d0db9f03e20fb2fe4849977cf3"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
