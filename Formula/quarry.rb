# Placeholder until the first release finishes building; `brew-update` fills in the
# real url and sha256 from the release manifest.
class Quarry < Formula
  desc "Local code intelligence engine for AI coding agents"
  homepage "https://github.com/sait-turanalp/quarry"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sait-turanalp/quarry/releases/download/v0.1.0/quarry-0.1.0-macos-arm64.tar.xz"
      sha256 "0" * 64
    end
    on_intel do
      url "https://github.com/sait-turanalp/quarry/releases/download/v0.1.0/quarry-0.1.0-macos-x64.tar.xz"
      sha256 "0" * 64
    end
  end

  on_linux do
    url "https://github.com/sait-turanalp/quarry/releases/download/v0.1.0/quarry-0.1.0-linux-x64.tar.xz"
    sha256 "0" * 64
  end

  def install
    bin.install "quarry"
  end

  test do
    assert_match "quarry", shell_output("#{bin}/quarry --version")
  end
end
