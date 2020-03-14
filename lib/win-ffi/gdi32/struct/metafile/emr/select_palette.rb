require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrselectpalette
    class EMRSELECTPALETTE < FFIAdditions::Struct
      attr_accessor :emr, :ihPal

      layout emr:   EMR,
             ihPal: :dword  # Palette handle index, background mode only
    end
  end
end