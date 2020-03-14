require_relative 'cie_xyz'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-ciexyztriple
    class CIEXYZTRIPLE < FFIAdditions::Struct
      attr_accessor :ciexyzRed, :ciexyzGreen, :ciexyzBlue

      layout ciexyzRed:   CIEXYZ,
             ciexyzGreen: CIEXYZ,
             ciexyzBlue:  CIEXYZ
    end
  end
end