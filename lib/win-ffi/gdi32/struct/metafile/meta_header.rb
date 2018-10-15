module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/ns-wingdi-tagmetaheader
    class METAHEADER < FFIAdditions::Struct
      def mtType; end
      def mtType=(v); end
      def mtHeaderSize; end
      def mtHeaderSize=(v); end
      def mtVersion; end
      def mtVersion=(v); end
      def mtSize; end
      def mtSize=(v); end
      def mtNoObjects; end
      def mtNoObjects=(v); end
      def mtMaxRecord; end
      def mtMaxRecord=(v); end
      def mtNoParameters; end
      def mtNoParameters=(v); end

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