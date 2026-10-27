Pod::Spec.new do |s|
  s.name             = 'APIVerveNameservers'
  s.version          = '1.2.3'
  s.summary          = 'Nameservers queries authoritative DNS records for any domain to list its nameservers, IP addresses, and reverse DNS records.'
  s.description      = <<-'DESC'
Nameservers queries authoritative DNS records for any domain to list its nameservers, IP addresses, and reverse DNS records. It detects multiple DNS providers, counts total nameservers, and identifies who runs each server.

This iOS/macOS SDK provides a convenient way to access the Nameservers from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/nameservers?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/nameservers-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveNameservers/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
