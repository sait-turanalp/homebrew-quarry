class Quarry < Formula
  desc "Local code intelligence engine for AI coding agents"
  homepage "https://github.com/sait-turanalp/quarry"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sait-turanalp/quarry/releases/download/v0.1.1/quarry-0.1.1-macos-arm64.tar.xz"
      sha256 "2fc409c1e3ecb37807fd9c319d75c77818dcb1417cd3ce2abb030a6a995f5943"
    end
    on_intel do
      url "https://github.com/sait-turanalp/quarry/releases/download/v0.1.1/quarry-0.1.1-macos-x64.tar.xz"
      sha256 "07ebcf449dd1814bb3be4bba988628e028f40c845be1f9f7b01e915f2ff3e971"
    end
  end

  on_linux do
    url "https://github.com/sait-turanalp/quarry/releases/download/v0.1.1/quarry-0.1.1-linux-x64.tar.xz"
    sha256 "4fdaeeb94799a59a81b7ffd4b36b2d177ea3188f8cdaafeba5ca04cae427fa90"
  end

  def install
    bin.install "quarry"
  end

  test do
    assert_match "quarry", shell_output("#{bin}/quarry --version")
  end
end
