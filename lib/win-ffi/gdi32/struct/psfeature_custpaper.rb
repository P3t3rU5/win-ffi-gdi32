require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # Information about custom paper size
    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd162875(v=vs.85).aspx
    class PSFEATURE_CUSTPAPER < FFIAdditions::Struct
      layout lOrientation:  :long,
             lWidth:        :long,
             lHeight:       :long,
             lWidthOffset:  :long,
             lHeightOffset: :long
    end
  end
end