require_relative 'lib/win-ffi/gdi32/version'

Gem::Specification.new do |gem|
  gem.name          = 'win-ffi-gdi32'
  gem.version       = WinFFI::Gdi32::VERSION
  gem.summary       = 'FFI definitions for gdi32.dll API'
  gem.description   = 'FFI definitions for gdi32.dll API.'
  gem.license       = 'MIT'
  gem.authors       = %w'P3t3rU5'
  gem.email         = %w'pedro.at.miranda@gmail.com'
  gem.homepage      = 'https://github.com/P3t3rU5/win-ffi-gdi32'
  gem.require_paths = %w'lib'
  gem.files         = Dir['{lib/**/*.rb,*.md}']
  gem.add_dependency 'win-ffi-core', '~> 1'
  gem.add_development_dependency 'rspec', '~> 3.5'
end
