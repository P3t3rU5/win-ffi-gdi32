require 'win-ffi/gdi32/struct/metafile/emr'

module WinFFI
  module Gdi32
    class EMRSETMAPPERFLAGS < FFIAdditions::Struct
      layout emr:        EMR,
             dwFlags: :dword
    end
  end
end