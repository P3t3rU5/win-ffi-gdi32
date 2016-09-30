require 'win-ffi/gdi32'

module WinFFI
  module Gdi32
    class METAFILEPICT < FFIAdditions::Struct
      layout mm:   :long,
             xExt: :long,
             yExt: :long,
             hMf:  :long
    end
  end
end