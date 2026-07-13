class Tokentracker < Formula
  desc "Token usage tracker for AI agent CLIs (Claude Code, Codex, Cursor, Gemini, etc.)"
  homepage "https://github.com/mm7894215/TokenTracker"
  url "https://registry.npmjs.org/tokentracker-cli/-/tokentracker-cli-0.77.2.tgz"
  sha256 "483c628beed3e30827e66512c10eee1c313a7aea8b5be8c59498542cbf69041c"
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
