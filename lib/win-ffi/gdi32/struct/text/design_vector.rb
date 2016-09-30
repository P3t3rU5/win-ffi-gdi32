require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd183551(v=vs.85).aspx
    class DESIGNVECTOR < FFIAdditions::Struct
      layout dvReserved:               :dword,
             dvNumAxes:                :dword,
             dvValues: [:long, MM_MAX_NUMAXES]
    end
  end
end