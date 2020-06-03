cask "istioctl" do
  version "1.6.0"
  sha256 "556de6b28a6c05a0e949c063b9b72dc091ded29a3f2885033ef5f3b211549929"

  # github.com/istio/istio was verified as official when first introduced to the cask
  url "https://github.com/istio/istio/releases/download/#{version}/istio-#{version}-osx.tar.gz"
  appcast "https://github.com/istio/istio/releases.atom"
  name "istioctl"
  homepage "https://istio.io/"

  binary "istio-#{version}/bin/istioctl"
  binary "istio-#{version}/tools/istioctl.bash", :target => "#{HOMEBREW_PREFIX}/etc/bash_completion.d/istioctl.bash"
  binary "istio-#{version}/tools/_istioctl", :target => "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_istioctl"
end
