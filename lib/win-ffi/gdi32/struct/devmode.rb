require 'win-ffi/gdi32/constant'
require 'win-ffi/gdi32/struct/metafile/pointl'

module WinFFI
  module Gdi32
    class DEVMODE_UNION_STRUCT_1 < FFIAdditions::Struct
      layout dmOrientation:   :short,
             dmPaperSize:     :short,
             dmPaperLength:   :short,
             dmPaperWidth:    :short,
             dmScale:         :short,
             dmCopies:        :short,
             dmDefaultSource: :short,
             dmPrintQuality:  :short
    end

    class DEVMODE_UNION_STRUCT_2 < FFIAdditions::Struct
      layout dmPosition:           POINTL,
             dmDisplayOrientation: :dword,
             dmDisplayFixedOutput: :dword
    end

    class DEVMODE_UNION_1 < FFIAdditions::Union
      layout s1: DEVMODE_UNION_STRUCT_1,
             s2: DEVMODE_UNION_STRUCT_2
    end

    class DEVMODE_UNION_2 < FFIAdditions::Union
      layout dmDisplayFlags: :dword,
             dmNup:          :dword
    end

    # https://msdn.microsoft.com/en-us/library/windows/desktop/dd183565(v=vs.85).aspx
    class DEVMODE < FFIAdditions::Struct
      layout dmDeviceName: [:char, CCHDEVICENAME],
             dmSpecVersion:                 :word,
             dmDriverVersion:               :word,
             dmSize:                        :word,
             dmDriverExtra:                 :word,
             dmFields:                     :dword,
             union_1:             DEVMODE_UNION_1,
             dmColor:                      :short,
             dmDuplex:                     :short,
             dmYResolution:                :short,
             dmTTOption:                   :short,
             dmCollate:                    :short,
             dmFormName:     [:char, CCHFORMNAME],
             dmLogPixels:                   :word,
             dmBitsPerPel:                 :dword,
             dmPelsWidth:                  :dword,
             dmPelsHeight:                 :dword,
             union_2:             DEVMODE_UNION_2,
             dmDisplayFrequency:           :dword,
             dmICMMethod:                  :dword,
             dmICMIntent:                  :dword,
             dmMediaType:                  :dword,
             dmDitherType:                 :dword,
             dmReserved1:                  :dword,
             dmReserved2:                  :dword,
             dmPanningWidth:               :dword,
             dmPanningHeight:              :dword

    end

  end
end