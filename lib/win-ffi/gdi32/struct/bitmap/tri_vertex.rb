require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    typedef :ushort, :color16
    # https://msdn.microsoft.com/en-us/library/dd145142(v=vs.85).aspx
    class TRIVERTEX < FFIAdditions::Struct
      layout x:        :long,
             y:        :long,
             Red:   :color16,
             Green: :color16,
             Blue:  :color16,
             Alpha: :color16
    end
  end
end