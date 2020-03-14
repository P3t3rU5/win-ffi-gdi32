require_relative 'data_header'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-rgndata
    class RGNDATA < FFIAdditions::Struct
      attr_accessor :rdh, :Buffer

      layout rdh:    RGNDATAHEADER,
             Buffer: [:char, 1]
    end
  end
end