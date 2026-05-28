class Tokentracker < Formula
  desc "Token usage tracker for AI agent CLIs (Claude Code, Codex, Cursor, Gemini, etc.)"
  homepage "https://github.com/mm7894215/TokenTracker"
  url "https://registry.npmjs.org/tokentracker-cli/-/tokentracker-cli-0.26.4.tgz"
  sha256 "c20ee343965a5d517bfeff244e329ddf091ae3066d55278d60254c12abd70ca3"
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
