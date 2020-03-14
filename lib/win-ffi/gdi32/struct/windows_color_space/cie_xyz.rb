# typedef long FXPT2DOT30, FAR *LPFXPT2DOT30;

module WinFFI
  module Gdi32
    # The following two structures are used for defining RGB's in terms of CIEXYZ.
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-ciexyz
    class CIEXYZ < FFIAdditions::Struct
      attr_accessor :ciexyzX, :ciexyzY, :ciexyzZ

      layout ciexyzX: :long,
             ciexyzY: :long,
             ciexyzZ: :long
    end
  end
end