require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162807(v=vs.85).aspx
    class POINTL < FFIAdditions::Struct
      layout x: :long,
             y: :long
    end
  end
end