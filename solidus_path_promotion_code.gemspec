# encoding: UTF-8
$:.push File.expand_path('../lib', __FILE__)
require 'solidus_path_promotion_code/version'

Gem::Specification.new do |s|
  s.name        = 'solidus_path_promotion_code'
  s.version     = SolidusPathPromotionCode::VERSION
  s.summary     = 'Reedem promotion code by url'
  s.description = 'This extension gives the opportunity to reedem a promotion code with'
  s.license     = 'BSD-3-Clause'

  s.author    = 'Andrea Vassallo'
  s.email     = 'andreavassallo@nebulab.it'
  s.homepage  = 'https://github.com/nebulab/solidus_path_promotion_code'

  s.files = Dir["{app,config,db,lib}/**/*", 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_runtime_dependency 'solidus_core', ['>= 1.0', '< 3']

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_bot'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'rubocop-rspec'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'pry-byebug', '~> 3.5.1'
end

