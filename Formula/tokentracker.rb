class Tokentracker < Formula
  desc "Token usage tracker for AI agent CLIs (Claude Code, Codex, Cursor, Gemini, etc.)"
  homepage "https://github.com/mm7894215/TokenTracker"
  url "https://registry.npmjs.org/tokentracker-cli/-/tokentracker-cli-0.80.5.tgz"
  sha256 "d968857aa9e3703a5b853e7717e43cdde3404a1e8f4051184c3ecdcd4dae927a"
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
