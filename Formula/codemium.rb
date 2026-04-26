class Codemium < Formula
  desc "Generate code statistics across Bitbucket and GitHub repositories"
  homepage "https://github.com/dsablic/codemium"
  version "0.11.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/codemium/releases/download/v0.11.1/codemium_Darwin_arm64.tar.gz"
      sha256 "adb570e4ce7b281cfe74f29cf9615852903680414666f5ca044f12d66f7e60a8"
    else
      url "https://github.com/dsablic/codemium/releases/download/v0.11.1/codemium_Darwin_x86_64.tar.gz"
      sha256 "5b2331f689b78353c2e038e94d4e4be11169c8e976b7f5c0748396399aa9f99a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/codemium/releases/download/v0.11.1/codemium_Linux_arm64.tar.gz"
      sha256 "4892e52e7aad3898719d45d72808682eb5e229e619fe19b4dd8dd93709f7d62c"
    else
      url "https://github.com/dsablic/codemium/releases/download/v0.11.1/codemium_Linux_x86_64.tar.gz"
      sha256 "58cbba7f994d4c3b561cde9c826ad1b91d0c5efb11cbea52e360ed20c97ffc19"
    end
  end

  def install
    bin.install "codemium"
  end

  test do
    assert_match "codemium", shell_output("#{bin}/codemium --version")
  end
end
