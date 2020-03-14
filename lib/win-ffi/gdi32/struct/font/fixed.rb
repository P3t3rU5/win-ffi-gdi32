module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-fixed
    class FIXED < FFIAdditions::Struct
      attr_accessor :fract, :value

      layout fract: :word,
             value: :short
    end
  end
end