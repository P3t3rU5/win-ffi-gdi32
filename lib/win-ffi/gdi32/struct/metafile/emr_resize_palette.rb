require 'win-ffi/gdi32/struct/metafile/emr'

module WinFFI
  module Gdi32
    class EMRRESIZEPALETTE < FFIAdditions::Struct
      layout emr:         EMR,
             ihPal:    :dword, # Palette handle index
             cEntries: :dword
    end
  end
end