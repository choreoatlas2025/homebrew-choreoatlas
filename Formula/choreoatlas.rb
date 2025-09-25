# This file will be automatically updated by GoReleaser
# Do not edit manually
class Choreoatlas < Formula
  desc "Contract-as-Code CLI for cross-service choreography"
  homepage "https://choreoatlas.io"
  version "0.2.0-ce.beta.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/choreoatlas2025/cli/releases/download/v0.2.0-ce.beta.1/choreoatlas-0.2.0-ce.beta.1-darwin-arm64.tar.gz"
      sha256 "1734e7de9976fedb01609636245df7c84acc3699a64d2510f11cc69f197282c8"
    else
      url "https://github.com/choreoatlas2025/cli/releases/download/v0.2.0-ce.beta.1/choreoatlas-0.2.0-ce.beta.1-darwin-amd64.tar.gz"
      sha256 "7e30f02bfa4a83b36ef60ad959c47b553106b4561c842e2c5fa3d9a98995f249"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/choreoatlas2025/cli/releases/download/v0.2.0-ce.beta.1/choreoatlas-0.2.0-ce.beta.1-linux-arm64.tar.gz"
      sha256 "5a617fc361848a9e07af385c922547fcf1fc797bf6ff2a0e3d3b0f5362af1893"
    else
      url "https://github.com/choreoatlas2025/cli/releases/download/v0.2.0-ce.beta.1/choreoatlas-0.2.0-ce.beta.1-linux-amd64.tar.gz"
      sha256 "84ec75d511a39fbbd5b0fa31e6bcc71f8c1245946f3d247401cfaf6419017542"
    end
  end

  def install
    bin.install "choreoatlas"
    bin.install_symlink bin/"choreoatlas" => "ca"

    pkgshare.install "examples"
    pkgshare.install "README.md"
    pkgshare.install "LICENSE"
  end

  test do
    output = shell_output("#{bin}/choreoatlas version")
    assert_match "choreoatlas v#{version}-ce", output
  end
end
