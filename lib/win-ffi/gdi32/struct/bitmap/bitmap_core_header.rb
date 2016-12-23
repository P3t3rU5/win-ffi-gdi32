require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # structures for defining DIBs
    # https://msdn.microsoft.com/en-us/library/dd183372(v=vs.85).aspx
    class BITMAPCOREHEADER < FFIAdditions::Struct
      layout bcSize:  :dword, # used to get to color table
             bcWidth:  :word,
             bcHeight: :word,
             bcPlanes: :word,
             bcBitCount: :word
    end
  end
end