module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-metaheader
    class METAHEADER < FFIAdditions::Struct
      attr_accessor :mtType,
                    :mtHeaderSize,
                    :mtVersion,
                    :mtSize,
                    :mtNoObjects,
                    :mtMaxRecord,
                    :mtNoParameters

      layout mtType:         :word,
             mtHeaderSize:   :word,
             mtVersion:      :word,
             mtSize:         :dword,
             mtNoObjects:    :word,
             mtMaxRecord:    :dword,
             mtNoParameters: :word
    end
  end
end