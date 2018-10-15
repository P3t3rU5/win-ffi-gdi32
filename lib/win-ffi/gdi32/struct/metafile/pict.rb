module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagmetafilepict
    class METAFILEPICT < FFIAdditions::Struct
      layout mm:   :long,
             xExt: :long,
             yExt: :long,
             hMf:  :long
    end
  end
end