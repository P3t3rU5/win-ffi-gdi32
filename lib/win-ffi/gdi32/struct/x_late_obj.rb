require_relative '../enum/transaction_object_flag'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/winddi/ns-winddi-_xlateobj
    class XLATEOBJ < FFIAdditions::Struct
      def iUniq; end
      def iUniq=(v) end
      def flXlate; end
      def flXlate=(v) end
      def iSrcType; end
      def iSrcType=(v) end
      def iDstType; end
      def iDstType=(v) end
      def cEntries; end
      def cEntries=(v) end
      def pulXlate; end
      def pulXlate=(v) end

      layout iUniq:    :ulong,
             flXlate:  TransactionObjectFlag,
             iSrcType: :ushort,
             iDstType: :ushort,
             cEntries: :ulong,
             pulXlate: :pointer
    end
  end
end