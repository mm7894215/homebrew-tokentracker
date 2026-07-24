class Tokentracker < Formula
  desc "Token usage tracker for AI agent CLIs (Claude Code, Codex, Cursor, Gemini, etc.)"
  homepage "https://github.com/mm7894215/TokenTracker"
  url "https://registry.npmjs.org/tokentracker-cli/-/tokentracker-cli-0.83.11.tgz"
  sha256 "6705f418135da0af121df920638e7ba149d4046d384ebebec60ee82eea67ace1"
  license "MIT"

  livecheck do
    url "https://registry.npmjs.org/tokentracker-cli/latest"
    regex(/"version"\s*:\s*"([^"]+)"/i)
  end

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "tokentracker", shell_output("#{bin}/tokentracker --help")
  end
end
