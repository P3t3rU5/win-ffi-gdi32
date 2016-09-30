require 'win-ffi/gdi32/struct/windows_color_space/cie_xyz'

module WinFFI
  module Gdi32
    class CIEXYZTRIPLE < FFIAdditions::Struct
      layout ciexyzRed:   CIEXYZ,
             ciexyzGreen: CIEXYZ,
             ciexyzBlue:  CIEXYZ
    end
  end
end