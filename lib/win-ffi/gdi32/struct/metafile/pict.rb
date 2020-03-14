module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-metafilepict
    class METAFILEPICT < FFIAdditions::Struct
      attr_accessor :mm, :xExt, :yExt, :hMf

      layout mm:   :long,
             xExt: :long,
             yExt: :long,
             hMf:  :long
    end
  end
end