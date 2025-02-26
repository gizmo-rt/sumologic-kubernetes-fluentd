# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "fluent-plugin-kubernetes-metadata-filter"
  gem.version       = "2.5.3"
  gem.authors       = ["Jimmi Dyson"]
  gem.email         = ["jimmidyson@gmail.com"]
  gem.description   = %q{Filter plugin to add Kubernetes metadata}
  gem.summary       = %q{Fluentd filter plugin to add Kubernetes metadata}
  gem.homepage      = "https://github.com/fabric8io/fluent-plugin-kubernetes_metadata_filter"
  gem.license       = "Apache-2.0"

  gem.files         = Dir.glob(File.join('lib', '**', '*.rb'))
  gem.executables   = []

  gem.required_ruby_version = '>= 2.5.0'

  gem.add_runtime_dependency "fluentd", "= 1.14.5"
  gem.add_runtime_dependency "lru_redux"
  # gem.add_runtime_dependency 'kubeclient', '< 5' # Git version of Kubeclient specified in Gemfile
  gem.add_runtime_dependency 'net-http-persistent', '~> 4.0'

  gem.add_development_dependency "bundler", "~> 2.0"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "minitest", "~> 5.14"
  gem.add_development_dependency "test-unit", "~> 3.5.0"
  gem.add_development_dependency "test-unit-rr", "~> 1.0.3"
  gem.add_development_dependency "copyright-header"
  gem.add_development_dependency "webmock"
  gem.add_development_dependency "vcr"
  gem.add_development_dependency "bump"
  gem.add_development_dependency "yajl-ruby"
end
