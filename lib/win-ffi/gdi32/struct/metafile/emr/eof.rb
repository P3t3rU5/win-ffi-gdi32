require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emreof
    class EMREOF < FFIAdditions::Struct
      attr_accessor :emr, :nPalEntries, :offPalEntries, :nSizeLast

      layout emr:           EMR,
             nPalEntries:   :dword, # Number of palette entries
             offPalEntries: :dword, # Offset to the palette entries
             nSizeLast:     :dword  # Same as nSize and must be the last DWORD of the record.
                                    # The palette entries, if exist, precede this field.
    end
  end
end