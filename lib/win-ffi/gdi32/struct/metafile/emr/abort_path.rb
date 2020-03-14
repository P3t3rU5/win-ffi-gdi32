require_relative '../emr'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/win32/api/wingdi/ns-wingdi-emrabortpath
    class EMRABORTPATH < FFIAdditions::Struct
      attr_accessor :emr

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