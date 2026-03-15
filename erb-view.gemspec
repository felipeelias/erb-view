# frozen_string_literal: true

require_relative 'lib/erb/view/version'

Gem::Specification.new do |spec|
  spec.name    = 'erb-view'
  spec.version = Erb::View::VERSION
  spec.authors = ['Felipe Philipp']
  spec.email   = ['felipeelias@gmail.com']

  spec.summary     = 'Create class based ERB views'
  spec.description = 'Simple wrapper around ERB that lets you create class based views'
  spec.homepage    = 'https://github.com/felipeelias/erb-view'
  spec.license     = 'MIT'

  spec.required_ruby_version = '>= 3.1'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
