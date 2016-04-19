require 'win-ffi/gdi32'

module WinFFI
  module Gdi32

    MM_MAX_NUMAXES = 16

    class DESIGNVECTOR < FFIStruct
      layout :dvReserved, :dword,
             :dvNumAxes,  :dword,
             :dvValues,   [:long, MM_MAX_NUMAXES]
    end
  end
end