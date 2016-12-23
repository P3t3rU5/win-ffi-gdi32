require 'win-ffi/gdi32/struct/metafile/emr'

module WinFFI
  module Gdi32
    class EMRSELECTPALETTE < FFIAdditions::Struct
      layout emr:      EMR,
             ihPal: :dword  # Palette handle index, background mode only
    end
  end
end