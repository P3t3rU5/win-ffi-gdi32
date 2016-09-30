require 'win-ffi/core'
require 'win-ffi/core/lib_base'

module WinFFI
  module Msimg32
    extend LibBase

    ffi_lib 'msimg32'
  end
end