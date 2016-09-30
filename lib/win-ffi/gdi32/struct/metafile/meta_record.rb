require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd145056(v=vs.85).aspx
    class METARECORD < FFIAdditions::Struct
      layout rdSize:    :dword,
             rdFunction: :word,
             rdParm: [:word, 1]
    end
  end
end