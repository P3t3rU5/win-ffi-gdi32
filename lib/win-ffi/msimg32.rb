require 'win-ffi/core'
require 'win-ffi/core/lib_base'

module WinFFI
  module Msimg32
    extend LibBase

    ffi_lib "#{ENV['windir']}\\System32\\msimg32.dll"
  end
end