require 'win-ffi/gdi32'
require 'win-ffi/gdi32/typedef/hgdiobj'

module WinFFI
  module Gdi32
    # https://msdn.microsoft.com/en-us/library/dd162608(v=vs.85).aspx
    class HANDLETABLE < FFIAdditions::Struct
      layout objectHandle: [:hgdiobj, 1]
    end
  end
end