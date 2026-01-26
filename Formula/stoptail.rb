class Stoptail < Formula
  desc "Elasticsearch TUI - like elasticsearch-head but for your terminal"
  homepage "https://github.com/dsablic/stoptail"
  version "0.9.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.8/stoptail_Darwin_arm64.tar.gz"
      sha256 "bf752d929678fd10073ef96985cb7513092885413c491c9859cdbb2a4d6d3728"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.8/stoptail_Darwin_x86_64.tar.gz"
      sha256 "cd4b604e87b66ac1a095abf5edfb1e54ddb8b6666c36f196c8395e31506641f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.8/stoptail_Linux_arm64.tar.gz"
      sha256 "4297c1dc00c9f9243add752d3d5a2915f2c1cba745b3521759b650dffaf302c8"
    else
      url "https://github.com/dsablic/stoptail/releases/download/v0.9.8/stoptail_Linux_x86_64.tar.gz"
      sha256 "38247632c85353d889b51e3d2e2a0ab174b7af4ab272d19e1885dcc48b7dc91a"
    end
  end

  def install
    bin.install "stoptail"
  end

  test do
    assert_match "stoptail", shell_output("#{bin}/stoptail --version")
  end
end
