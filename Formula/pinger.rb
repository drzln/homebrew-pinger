class Pinger < Formula
  include Language::Python::Virtualenv

  desc 'Platform engineering CLI for pinging things with style'
  homepage 'https://github.com/drzln/pinger'
  url 'https://files.pythonhosted.org/packages/68/b7/1db73829b43d4c7dfe59f56839c7020a618976095f396e914dd23f963999/pinger-0.1.0.tar.gz'
  sha256 'd507344c8d16c71eaa492f1d8eec86e7678cf2bcc71433dd84cf9732197e0f14'
  license 'MIT'

  depends_on 'python@3.12'

  def install
    virtualenv_install_with_resources
  end

  test do
    # Simple smoke test: run CLI and check for expected output
    output = shell_output("#{bin}/pinger --help")
    assert_match 'Usage', output
  end
end
