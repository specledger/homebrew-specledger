class Specledger < Formula
  desc "Unified CLI for project bootstrap and specification dependency management"
  homepage "https://github.com/specledger/specledger"
  url "https://github.com/specledger/specledger/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "f2162d684093e95ec3fa21e7df10945585e3226e45ade6d1048db00752bc98f2"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "./cmd"
  end

  test do
    system bin/"sl", "version"
  end
end
