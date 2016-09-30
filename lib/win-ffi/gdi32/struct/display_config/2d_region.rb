require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    class DISPLAYCONFIG_2DREGION < FFIAdditions::Struct
      layout cx: :uint32,
             cy: :uint32
    end
  end
end