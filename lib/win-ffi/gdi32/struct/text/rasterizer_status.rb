require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162891(v=vs.85).aspx
    class RASTERIZER_STATUS < FFIAdditions::Struct
      layout nSize:       :short,
             wFlags:      :short,
             nLanguageID: :short
    end
  end
end