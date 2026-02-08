# Homebrew formula for SpecLedger CLI
class Specledger < Formula
  desc "All-in-one SDD Playbook for modern development teams"
  homepage "https://specledger.io"
  url "https://github.com/specledger/specledger/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "da39a3ee5e6b4b0d3255bfef95601890afd80709" # Placeholder - will be updated by GoReleaser
  license "MIT"

  bottle do
    root_url "https://github.com/specledger/specledger/releases/download/v1.0.0"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "0000000000000000000000000000000000000000000000000000000000000000" # Placeholder
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "0000000000000000000000000000000000000000000000000000000000000000" # Placeholder
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "0000000000000000000000000000000000000000000000000000000000000000" # Placeholder
    sha256 cellar: :any_skip_relocation, arm64_monterey: "0000000000000000000000000000000000000000000000000000000000000000" # Placeholder
    sha256 cellar: :any_skip_relocation, sequoia:         "0000000000000000000000000000000000000000000000000000000000000000" # Placeholder
    sha256 cellar: :any_skip_relocation, sonoma:          "0000000000000000000000000000000000000000000000000000000000000000" # Placeholder
    sha256 cellar: :any_skip_relocation, ventura:         "0000000000000000000000000000000000000000000000000000000000000000" # Placeholder
    sha256 cellar: :any_skip_relocation, monterey:        "0000000000000000000000000000000000000000000000000000000000000000" # Placeholder
    sha256 cellar: :any_skip_relocation, x86_64_linux:    "0000000000000000000000000000000000000000000000000000000000000000" # Placeholder
  end

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(output: bin/"sl", ldflags: "-s -w"), "./cmd"
  end

  test do
    system bin/"sl", "--version"
    assert_match(/specledger/i, shell_output("#{bin}/sl --help"))
  end
end
