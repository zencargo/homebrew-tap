cask "istioctl" do
  version "1.6.1"
  sha256 "616cf30294a563b743833369c1435ae27244603d42c15818329f1ead25c0065a"

  # github.com/istio/istio was verified as official when first introduced to the cask
  url "https://github.com/istio/istio/releases/download/#{version}/istio-#{version}-osx.tar.gz"
  appcast "https://github.com/istio/istio/releases.atom"
  name "istioctl"
  homepage "https://istio.io/"

  binary "istio-#{version}/bin/istioctl"
  binary "istio-#{version}/tools/istioctl.bash", :target => "#{HOMEBREW_PREFIX}/etc/bash_completion.d/istioctl.bash"
  binary "istio-#{version}/tools/_istioctl", :target => "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_istioctl"
end
