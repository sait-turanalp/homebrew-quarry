class Quarry < Formula
  desc "Local code intelligence engine for AI coding agents"
  homepage "https://github.com/sait-turanalp/quarry"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sait-turanalp/quarry/releases/download/v0.1.0/quarry-0.1.0-macos-arm64.tar.xz"
      sha256 "8835a150e9cdf7da5e3fc6175c649f06738e57837eab5d183699e22374ca13e5"
    end
    on_intel do
      url "https://github.com/sait-turanalp/quarry/releases/download/v0.1.0/quarry-0.1.0-macos-x64.tar.xz"
      sha256 "e42df9264df4500f1eef1e903f5556774e41cb42a39a5d6175ac24d15511163e"
    end
  end

  on_linux do
    url "https://github.com/sait-turanalp/quarry/releases/download/v0.1.0/quarry-0.1.0-linux-x64.tar.xz"
    sha256 "86fb703deb50150edd6c606d1f774f2099b9ff09a813e65ee9c5ae9fae0dff19"
  end

  def install
    bin.install "quarry"
  end

  test do
    assert_match "quarry", shell_output("#{bin}/quarry --version")
  end
end
