cask "istioctl" do
  version "1.6.2"
  sha256 "e9a1912e554ef31308bb78a96ab7c43281c7be6f7892337c21dab462fdf97b3e"

  # github.com/istio/istio was verified as official when first introduced to the cask
  url "https://github.com/istio/istio/releases/download/#{version}/istio-#{version}-osx.tar.gz"
  appcast "https://github.com/istio/istio/releases.atom"
  name "istioctl"
  homepage "https://istio.io/"

  binary "istio-#{version}/bin/istioctl"
  binary "istio-#{version}/tools/istioctl.bash", :target => "#{HOMEBREW_PREFIX}/etc/bash_completion.d/istioctl.bash"
  binary "istio-#{version}/tools/_istioctl", :target => "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_istioctl"
end
