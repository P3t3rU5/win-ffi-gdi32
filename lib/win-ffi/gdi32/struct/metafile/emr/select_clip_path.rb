require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrselectclippath
    class EMRSELECTCLIPPATH < FFIAdditions::Struct
      attr_accessor :emr, :iMode

      layout emr:   EMR,
             iMode: :dword
    end

    class EMRSETBKMODE         < EMRSELECTCLIPPATH; end
    class EMRSETMAPMODE        < EMRSELECTCLIPPATH; end
    class EMRSETLAYOUT         < EMRSELECTCLIPPATH; end
    class EMRSETPOLYFILLMODE   < EMRSELECTCLIPPATH; end
    class EMRSETROP2           < EMRSELECTCLIPPATH; end
    class EMRSETSTRETCHBLTMODE < EMRSELECTCLIPPATH; end
    class EMRSETICMMODE        < EMRSELECTCLIPPATH; end
    class EMRSETTEXTALIGN      < EMRSELECTCLIPPATH; end
  end
end