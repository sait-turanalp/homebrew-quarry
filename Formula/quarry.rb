class Quarry < Formula
  desc "Local code intelligence engine for AI coding agents"
  homepage "https://github.com/sait-turanalp/quarry"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/sait-turanalp/quarry/releases/download/v0.1.1/quarry-0.1.1-macos-arm64.tar.xz"
      sha256 "4fdaeeb94799a59a81b7ffd4b36b2d177ea3188f8cdaafeba5ca04cae427fa90"
    end
    on_intel do
      url "https://github.com/sait-turanalp/quarry/releases/download/v0.1.1/quarry-0.1.1-macos-x64.tar.xz"
      sha256 "e42df9264df4500f1eef1e903f5556774e41cb42a39a5d6175ac24d15511163e"
    end
  end

  on_linux do
    url "https://github.com/sait-turanalp/quarry/releases/download/v0.1.1/quarry-0.1.1-linux-x64.tar.xz"
    sha256 "86fb703deb50150edd6c606d1f774f2099b9ff09a813e65ee9c5ae9fae0dff19"
  end

  def install
    bin.install "quarry"
  end

  test do
    assert_match "quarry", shell_output("#{bin}/quarry --version")
  end
end
