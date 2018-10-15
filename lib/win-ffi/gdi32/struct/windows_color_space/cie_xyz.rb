# typedef long FXPT2DOT30, FAR *LPFXPT2DOT30;

module WinFFI
  module Gdi32
    # The following two structures are used for defining RGB's in terms of CIEXYZ.
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagciexyz
    class CIEXYZ < FFIAdditions::Struct
      layout ciexyzX: :long,
             ciexyzY: :long,
             ciexyzZ: :long
    end
  end
end