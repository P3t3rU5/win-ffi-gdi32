module WinFFI
  module Gdi32
    # Information about custom paper size
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-psfeature_custpaper
    class PSFEATURE_CUSTPAPER < FFIAdditions::Struct
      attr_accessor :lOrientation, :lWidth, :lHeight, :lWidthOffset, :lHeightOffset

      layout lOrientation:  :long,
             lWidth:        :long,
             lHeight:       :long,
             lWidthOffset:  :long,
             lHeightOffset: :long
    end
  end
end