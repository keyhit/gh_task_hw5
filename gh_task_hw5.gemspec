Gem::Specification.new do |s|
  s.name        = 'gh_task_hw5'
  s.version     = '0.0.0'
  s.add_runtime_dependency 'colorize', ['= 0.8.1']
  s.add_development_dependency 'colorize', ['>= 0']
  s.add_runtime_dependency 'gh_gem_hw5_test_suite', ['= 0.0.0']
  s.add_development_dependency 'gh_gem_hw5_test_suite', ['>= 0']
  s.date        = '2018-11-10'
  s.summary     = 'gh_task_hw5!'
  s.description = 'A simple hello world gem'
  s.authors     = ['Nick Quaranto']
  s.email       = 'nick@quaran.to'
  s.files       = ['lib/gh_task_hw5.rb']
  s.homepage    = 'http://rubygems.org/gems/gh_task_hw5'
  s.license     = 'MIT'
end
