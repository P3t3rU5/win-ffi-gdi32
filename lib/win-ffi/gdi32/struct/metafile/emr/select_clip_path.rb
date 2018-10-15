require_relative '../emr'

module WinFFI
  module Gdi32
    def emr; end
    def emr=(v); end
    def iMode; end
    def iMode=(v); end

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagemrselectclippath
    class EMRSELECTCLIPPATH < FFIAdditions::Struct
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