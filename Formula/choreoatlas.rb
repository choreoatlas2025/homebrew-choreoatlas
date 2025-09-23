# This file will be automatically updated by GoReleaser
# Do not edit manually
class Choreoatlas < Formula
  desc "Contract-as-Code CLI for cross-service choreography"
  homepage "https://choreoatlas.io"
  version "0.0.0"
  license "Apache-2.0"

  # Placeholder - will be replaced by GoReleaser
  url "https://github.com/choreoatlas2025/cli/releases/download/v0.0.0/placeholder.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  def install
    odie "This formula should be updated by GoReleaser during release"
  end

  test do
    system "#{bin}/choreoatlas", "--version"
  end
end