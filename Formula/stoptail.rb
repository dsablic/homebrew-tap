class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "0.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.2.3/stoptail_Darwin_arm64.tar.gz"
      sha256 "b1641ea8f9f34e37c4717660c05a1bdc2a9ecb9c28de19cd1f0fff8427271320"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.2.3/stoptail_Darwin_x86_64.tar.gz"
      sha256 "d6ee96a66ddf5c0206a80861113ad1f244f9ddf622ad45644a4d31084743132b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.2.3/stoptail_Linux_arm64.tar.gz"
      sha256 "6e0642d184fad75e3c48a32fd17584f295ca3ba07c92f775af0854a59ba1a833"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.2.3/stoptail_Linux_x86_64.tar.gz"
      sha256 "b4c70893334870d726effe1f27370c29b46c40f2b1142aa546439915dec64756"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
