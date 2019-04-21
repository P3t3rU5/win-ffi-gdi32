require 'win-ffi/logger'
require 'win-ffi/gdi32/base'
WinFFI::LOGGER.level = 'info'
require 'win-ffi/core'
require 'win-ffi/core/lib_base'
require_relative 'gdi32/version'

module WinFFI
  module Gdi32
    LOGGER.info "WinFFI Gdi32 v#{WinFFI::Gdi32::VERSION}"
  end
end