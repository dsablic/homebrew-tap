class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "0.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.10.0/stoptail_Darwin_arm64.tar.gz"
      sha256 "a17ec76678bac63527b8005e5e4ac8d6a733206ca066dce4291c363fd3eb68b2"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.10.0/stoptail_Darwin_x86_64.tar.gz"
      sha256 "4b3fe1c2c8c50791adb65f7422d6e525f62ccd15bcdc7e5910424a29868f3d61"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.10.0/stoptail_Linux_arm64.tar.gz"
      sha256 "3e35be1f54f67be00ae6345c9b46ae7faf895bc3ae0b6f6dfcebb08e9ca4a20b"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.10.0/stoptail_Linux_x86_64.tar.gz"
      sha256 "cc3d5fc5c157768df89f3d1e7229a28bc459bffe1f2dba3f5e02dfc5496c83b7"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
