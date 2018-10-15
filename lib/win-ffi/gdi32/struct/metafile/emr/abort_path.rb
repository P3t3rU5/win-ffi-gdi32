require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagabortpath
    class EMRABORTPATH < FFIAdditions::Struct
      def emr; end
      def emr=(v) end

      layout emr: EMR
    end

    class EMRBEGINPATH      < EMRABORTPATH; end
    class EMRENDPATH        < EMRABORTPATH; end
    class EMRCLOSEFIGURE    < EMRABORTPATH; end
    class EMRFLATTENPATH    < EMRABORTPATH; end
    class EMRWIDENPATH      < EMRABORTPATH; end
    class EMRSETMETARGN     < EMRABORTPATH; end
    class EMRSAVEDC         < EMRABORTPATH; end
    class EMRREALIZEPALETTE < EMRABORTPATH; end
  end
end