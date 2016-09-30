require 'win-ffi/gdi32/typedef/hmetafile'
require 'win-ffi/gdi32/typedef/henhmetafile'

require 'win-ffi/core/struct/rect'
require 'win-ffi/gdi32/struct/handle_table'
require 'win-ffi/gdi32/struct/meta_file_pict'
require 'win-ffi/gdi32/struct/color/palette_entry'

module WinFFI
  module Gdi32

    # https://msdn.microsoft.com/en-us/library/dd183442(v=vs.85).aspx
    # HENHMETAFILE CloseEnhMetaFile( _In_  HDC hdc )
    attach_function 'CloseEnhMetaFile', [:hdc], :henhmetafile

    # https://msdn.microsoft.com/en-us/library/dd183445(v=vs.85).aspx
    # HMETAFILE CloseMetaFile( _In_  HDC hdc )
    attach_function 'CloseMetaFile', [:hdc], :hmetafile

    # https://msdn.microsoft.com/en-us/library/dd183480(v=vs.85).aspx
    # HENHMETAFILE CopyEnhMetaFile(
    #   _In_  HENHMETAFILE hemfSrc,
    #   _In_  LPCTSTR lpszFile )
    encoded_function 'CopyEnhMetaFile', [:henhmetafile, :string], :henhmetafile

    # https://msdn.microsoft.com/en-us/library/dd183480(v=vs.85).aspx
    # HMETAFILE CopyMetaFile(
    #   _In_  HMETAFILE hmfSrc,
    #   _In_  LPCTSTR lpszFile )
    encoded_function 'CopyMetaFile', [:hmetafile, :string], :hmetafile

    # https://msdn.microsoft.com/en-us/library/dd183498(v=vs.85).aspx
    # HDC CreateEnhMetaFile(
    #   _In_  HDC hdcRef,
    #   _In_  LPCTSTR lpFilename,
    #   _In_  const RECT *lpRect,
    #   _In_  LPCTSTR lpDescription )
    encoded_function 'CreateEnhMetaFile', [:hdc, :string, RECT.ptr, :string], :hdc

    # https://msdn.microsoft.com/en-us/library/dd183506(v=vs.85).aspx
    # HDC CreateMetaFile( _In_  LPCTSTR lpszFile )
    encoded_function 'CreateMetaFile', [:string], :hdc

    # https://msdn.microsoft.com/en-us/library/dd183534(v=vs.85).aspx
    # BOOL DeleteEnhMetaFile( _In_  HENHMETAFILE hemf )
    attach_function 'DeleteEnhMetaFile', [:henhmetafile], :bool

    # https://msdn.microsoft.com/en-us/library/dd183537(v=vs.85).aspx
    # BOOL DeleteMetaFile( _In_  HMETAFILE hmf )
    attach_function 'DeleteMetaFile', [:hmetafile], :bool

    # https://msdn.microsoft.com/en-us/library/dd162606(v=vs.85).aspx
    # int CALLBACK EnhMetaFileProc(
    #   _In_  HDC hDC,
    #   _In_  HANDLETABLE *lpHTable,
    #   _In_  const ENHMETARECORD *lpEMFR,
    #   _In_  int nObj,
    #   _In_  LPARAM lpData )
    EnhMetaFileProc = callback 'EnhMetaFileProc', [:hdc, HANDLETABLE.ptr(:in), :pointer, :int, :lparam], :int

    # https://msdn.microsoft.com/en-us/library/dd162613(v=vs.85).aspx
    # BOOL EnumEnhMetaFile(
    #   _In_  HDC hdc,
    #   _In_  HENHMETAFILE hemf,
    #   _In_  ENHMFENUMPROC lpEnhMetaFunc,
    #   _In_  LPVOID lpData,
    #   _In_  const RECT *lpRect )
    attach_function 'EnumEnhMetaFile', [:hdc, :henhmetafile, :pointer, :pointer, RECT.ptr(:in)], :bool

    # https://msdn.microsoft.com/en-us/library/dd162629(v=vs.85).aspx
    # BOOL EnumMetaFile(
    #   _In_  HDC hdc,
    #   _In_  HMETAFILE hmf,
    #   _In_  MFENUMPROC lpMetaFunc,
    #   _In_  LPARAM lParam )
    attach_function 'EnumMetaFile', [:hdc, :hmetafile, :pointer, :lparam], :bool

    # https://msdn.microsoft.com/en-us/library/dd162630(v=vs.85).aspx
    # int CALLBACK EnumMetaFileProc(
    #   _In_  HDC hDC,
    #   _In_  HANDLETABLE *lpHTable,
    #   _In_  METARECORD *lpMFR,
    #   _In_  int nObj,
    #   _In_  LPARAM lpClientData )
    callback 'EnumMetaFileProc', [:hdc, HANDLETABLE.ptr(:in), :pointer, :int, :lparam], :int

    # https://msdn.microsoft.com/en-us/library/dd144843(v=vs.85).aspx
    # BOOL GdiComment(
    #   _In_  HDC hdc,
    #   _In_  UINT cbSize,
    #   _In_  const BYTE *lpData )
    attach_function 'GdiComment', [:hdc, :uint, :pointer], :bool

    # https://msdn.microsoft.com/en-us/library/dd144880(v=vs.85).aspx
    # HENHMETAFILE GetEnhMetaFile( _In_  LPCTSTR lpszMetaFile )
    encoded_function 'GetEnhMetaFile', [:string], :henhmetafile

    # https://msdn.microsoft.com/en-us/library/dd144881(v=vs.85).aspx
    # UINT GetEnhMetaFileBits(
    #   _In_   HENHMETAFILE hemf,
    #   _In_   UINT cbBuffer,
    #   _Out_  LPBYTE lpbBuffer )
    attach_function 'GetEnhMetaFileBits', [:henhmetafile, :uint, :pointer], :uint

    # https://msdn.microsoft.com/en-us/library/dd144882(v=vs.85).aspx
    # UINT GetEnhMetaFileDescription(
    #   _In_   HENHMETAFILE hemf,
    #   _In_   UINT cchBuffer,
    #   _Out_  LPTSTR lpszDescription )
    encoded_function 'GetEnhMetaFileDescription', [:henhmetafile, :uint, :string], :uint

    # https://msdn.microsoft.com/en-us/library/dd144883(v=vs.85).aspx
    # UINT GetEnhMetaFileHeader(
    #   _In_   HENHMETAFILE hemf,
    #   _In_   UINT cbBuffer,
    #   _Out_  LPENHMETAHEADER lpemh )
    attach_function 'GetEnhMetaFileHeader', [:henhmetafile, :uint, :pointer], :uint

    # https://msdn.microsoft.com/en-us/library/dd144884(v=vs.85).aspx
    # UINT GetEnhMetaFilePaletteEntries(
    #   _In_   HENHMETAFILE hemf,
    #   _In_   UINT cEntries,
    #   _Out_  LPPALETTEENTRY lppe )
    attach_function 'GetEnhMetaFilePaletteEntries', [:henhmetafile, :uint, PALETTEENTRY.ptr(:out)], :uint

    # https://msdn.microsoft.com/en-us/library/dd144898(v=vs.85).aspx
    # UINT GetMetaFileBitsEx(
    #   _In_   HMETAFILE hmf,
    #   _In_   UINT nSize,
    #   _Out_  LPVOID lpvData )
    attach_function 'GetMetaFileBitsEx', [:hmetafile, :uint, :pointer], :uint

    # https://msdn.microsoft.com/en-us/library/dd144952(v=vs.85).aspx
    # UINT GetWinMetaFileBits(
    #   _In_   HENHMETAFILE hemf,
    #   _In_   UINT cbBuffer,
    #   _Out_  LPBYTE lpbBuffer,
    #   _In_   INT fnMapMode,
    #   _In_   HDC hdcRef )
    attach_function 'GetWinMetaFileBits', [:henhmetafile, :uint, :pointer, :int, :hdc], :uint

    # https://msdn.microsoft.com/en-us/library/dd162800(v=vs.85).aspx
    # BOOL PlayEnhMetaFile(
    #   _In_  HDC hdc,
    #   _In_  HENHMETAFILE hemf,
    #   _In_  const RECT *lpRect )
    attach_function 'PlayEnhMetaFile', [:hdc, :henhmetafile, RECT.ptr], :bool

    # https://msdn.microsoft.com/en-us/library/dd162801(v=vs.85).aspx
    # BOOL PlayEnhMetaFileRecord(
    #   _In_  HDC hdc,
    #   _In_  LPHANDLETABLE lpHandletable,
    #   _In_  const ENHMETARECORD *lpEnhMetaRecord,
    #   _In_  UINT nHandles )
    attach_function 'PlayEnhMetaFileRecord', [:hdc, :pointer, :pointer, :uint], :bool

    # https://msdn.microsoft.com/en-us/library/dd162802(v=vs.85).aspx
    # BOOL PlayMetaFile(
    #   _In_  HDC hdc,
    #   _In_  HMETAFILE hmf )
    attach_function 'PlayMetaFile', [:hdc, :hmetafile], :bool

    # https://msdn.microsoft.com/en-us/library/dd162803(v=vs.85).aspx
    # BOOL PlayMetaFileRecord(
    #   _In_  HDC hdc,
    #   _In_  LPHANDLETABLE lpHandletable,
    #   _In_  LPMETARECORD lpMetaRecord,
    #   _In_  UINT nHandles )
    attach_function 'PlayMetaFileRecord', [:hdc, HANDLETABLE.ptr(:in), :pointer, :uint], :bool

    # https://msdn.microsoft.com/en-us/library/dd162975(v=vs.85).aspx
    # HENHMETAFILE SetEnhMetaFileBits(
    #   _In_  UINT cbBuffer,
    #   _In_  const BYTE *lpData )
    attach_function 'SetEnhMetaFileBits', [:uint, :pointer], :henhmetafile

    # https://msdn.microsoft.com/en-us/library/dd162982(v=vs.85).aspx
    # HMETAFILE SetMetaFileBitsEx(
    #   _In_  UINT nSize,
    #   _In_  const BYTE *lpData )
    attach_function 'SetMetaFileBitsEx', [:uint, :pointer], :hmetafile

    # https://msdn.microsoft.com/en-us/library/dd145103(v=vs.85).aspx
    # HENHMETAFILE SetWinMetaFileBits(
    #   _In_  UINT cbBuffer,
    #   _In_  const BYTE *lpbBuffer,
    #   _In_  HDC hdcRef,
    #   _In_  const METAFILEPICT *lpmfp )
    attach_function 'SetWinMetaFileBits', [:uint, :pointer, :hdc, METAFILEPICT.ptr(:in)], :henhmetafile
  end
end