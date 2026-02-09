class Specledger < Formula
  desc "Unified CLI for project bootstrap and specification dependency management"
  homepage "https://github.com/specledger/specledger"
  url "https://github.com/specledger/specledger/archive/refs/tags/v1.0.4.tar.gz"
  sha256 "60b92240535ee65ac90e24a9b581289602eeda8172e28cd6efc3bfa4f05e049a"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "./cmd"
  end

  test do
    system bin/"sl", "version"
  end
end
