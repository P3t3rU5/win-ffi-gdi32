require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162724(v=vs.85).aspx
    class FIXED < FFIAdditions::Struct
      layout fract:  :word,
             vlaue: :short
    end
  end
end