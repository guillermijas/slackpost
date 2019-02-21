lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'slackpost/version'

Gem::Specification.new do |spec|
  spec.name = 'slackpost'
  spec.version = Slackpost::VERSION
  spec.authors = ['Guillermo Mora']
  spec.email = ['guillermo@cleverppc.com']

  spec.summary = 'Post messages in slack channels.'
  spec.description = 'The simplest way of posting messages and attachments to your slack channels.'
  spec.homepage = 'https://github.com/guillermijas/slackpost'
  spec.license = 'MIT'

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = 'https://github.com/guillermijas/slackpost'
    spec.metadata['changelog_uri'] = 'https://github.com/guillermijas/slackpost'
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.cert_chain = ['certs/slackpost-cert.pem']
  spec.signing_key = File.expand_path('~/.ssh/gem-private_key.pem') if $PROGRAM_NAME =~ /gem\z/
  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'minitest', '~> 5.11'
  spec.add_development_dependency 'rake', '~> 12.3'
end
