class Specledger < Formula
  desc "Unified CLI for project bootstrap and specification dependency management"
  homepage "https://github.com/specledger/specledger"
  url "https://github.com/specledger/specledger/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "c22f1babb18499de478d52c38e6ec3e1bb92618e5366fe79a257a5ee35ed7ab7"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X main.version=#{version}"), "./cmd/sl"
  end

  test do
    system bin/"sl", "version"
  end
end
