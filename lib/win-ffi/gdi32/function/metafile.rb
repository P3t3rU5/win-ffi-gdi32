require 'win-ffi/core/struct/rect'

require_relative '../typedef/hmetafile'
require_relative '../typedef/henhmetafile'

require_relative '../struct/metafile/handle_table'
require_relative '../struct/metafile/pict'
require_relative '../struct/color/palette_entry'

module WinFFI
  module Gdi32
    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-closeenhmetafile
    # HENHMETAFILE CloseEnhMetaFile( _In_  HDC hdc )
    def self.CloseEnhMetaFile(hdc) end
    attach_function 'CloseEnhMetaFile', [:hdc], :henhmetafile

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-closemetafile
    # HMETAFILE CloseMetaFile( _In_  HDC hdc )
    def self.CloseMetaFile(hdc) end
    attach_function 'CloseMetaFile', [:hdc], :hmetafile

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-copyenhmetafile
    # HENHMETAFILE CopyEnhMetaFile( _In_  HENHMETAFILE hemfSrc, _In_  LPCTSTR lpszFile )
    def self.CopyEnhMetaFile(hemfSrc, lpszFile) end
    encoded_function 'CopyEnhMetaFile', [:henhmetafile, :string], :henhmetafile

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-copymetafile
    # HMETAFILE CopyMetaFile( _In_  HMETAFILE hmfSrc, _In_  LPCTSTR lpszFile )
    def self.CopyMetaFile(hmfSrc, lpszFile) end
    encoded_function 'CopyMetaFile', [:hmetafile, :string], :hmetafile

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createenhmetafile
    # HDC CreateEnhMetaFile(
    #   _In_  HDC hdcRef,
    #   _In_  LPCTSTR lpFilename,
    #   _In_  const RECT *lpRect,
    #   _In_  LPCTSTR lpDescription )
    def self.CreateEnhMetaFile(hdcRef, lpFilename, lpRect, lpDescription) end
    encoded_function 'CreateEnhMetaFile', [:hdc, :string, RECT.ptr, :string], :hdc

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-createmetafile
    # HDC CreateMetaFile( _In_  LPCTSTR lpszFile )
    def self.CreateMetaFile(lpszFile) end
    encoded_function 'CreateMetaFile', [:string], :hdc

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-deleteenhmetafile
    # BOOL DeleteEnhMetaFile( _In_  HENHMETAFILE hemf )
    def self.DeleteEnhMetaFile(hemf) end
    attach_function 'DeleteEnhMetaFile', [:henhmetafile], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-deletemetafile
    # BOOL DeleteMetaFile( _In_  HMETAFILE hmf )
    def self.DeleteMetaFile(hmf) end
    attach_function 'DeleteMetaFile', [:hmetafile], :bool

    # https://msdn.microsoft.com/en-us/library/dd162606(v=vs.85).aspx
    # int CALLBACK EnhMetaFileProc(
    #   _In_  HDC hDC,
    #   _In_  HANDLETABLE *lpHTable,
    #   _In_  const ENHMETARECORD *lpEMFR,
    #   _In_  int nObj,
    #   _In_  LPARAM lpData )
    EnhMetaFileProc = callback 'EnhMetaFileProc', [:hdc, HANDLETABLE.ptr(:in), :pointer, :int, :lparam], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-enumenhmetafile
    # BOOL EnumEnhMetaFile(
    #   _In_  HDC hdc,
    #   _In_  HENHMETAFILE hemf,
    #   _In_  ENHMFENUMPROC lpEnhMetaFunc,
    #   _In_  LPVOID lpData,
    #   _In_  const RECT *lpRect )
    def self.EnumEnhMetaFile(hDC, hemf, lpEnhMetaFunc, lpData, lpRect) end
    attach_function 'EnumEnhMetaFile', [:hdc, :henhmetafile, EnhMetaFileProc, :pointer, RECT.ptr(:in)], :bool

    # https://msdn.microsoft.com/en-us/library/dd162630
    # int CALLBACK EnumMetaFileProc(
    #   _In_  HDC hDC,
    #   _In_  HANDLETABLE *lpHTable,
    #   _In_  METARECORD *lpMFR,
    #   _In_  int nObj,
    #   _In_  LPARAM lpClientData )
    EnumMetaFileProc = callback 'EnumMetaFileProc', [:hdc, HANDLETABLE.ptr(:in), :pointer, :int, :lparam], :int

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-enummetafile
    # BOOL EnumMetaFile(
    #   _In_  HDC hdc,
    #   _In_  HMETAFILE hmf,
    #   _In_  MFENUMPROC lpMetaFunc,
    #   _In_  LPARAM lParam )
    def self.EnumMetaFile(hdc, hmf, lpMetaFunc, lParam) end
    attach_function 'EnumMetaFile', [:hdc, :hmetafile, EnumMetaFileProc, :lparam], :bool


    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-gdicomment
    # BOOL GdiComment( _In_  HDC hdc, _In_  UINT cbSize, _In_  const BYTE *lpData )
    def self.GdiComment(hdc, cbSize, lpData) end
    attach_function 'GdiComment', [:hdc, :uint, :pointer], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getenhmetafile
    # HENHMETAFILE GetEnhMetaFile( _In_  LPCTSTR lpszMetaFile )
    def self.GetEnhMetaFile(lpszMetaFile) end
    encoded_function 'GetEnhMetaFile', [:string], :henhmetafile

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getenhmetafilebits
    # UINT GetEnhMetaFileBits( _In_   HENHMETAFILE hemf, _In_   UINT cbBuffer, _Out_  LPBYTE lpbBuffer )
    def self.GetEnhMetaFileBits(hemf, cbBuffer, lpbBuffer) end
    attach_function 'GetEnhMetaFileBits', [:henhmetafile, :uint, :pointer], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getenhmetafiledescription
    # UINT GetEnhMetaFileDescription( _In_   HENHMETAFILE hemf, _In_   UINT cchBuffer, _Out_  LPTSTR lpszDescription )
    def self.GetEnhMetaFileDescription(hemf, cchBuffer, lpszDescription) end
    encoded_function 'GetEnhMetaFileDescription', [:henhmetafile, :uint, :string], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getenhmetafileheader
    # UINT GetEnhMetaFileHeader( _In_   HENHMETAFILE hemf, _In_   UINT cbBuffer, _Out_  LPENHMETAHEADER lpemh )
    def self.GetEnhMetaFileHeader(hemf, cbBuffer, lpemh) end
    attach_function 'GetEnhMetaFileHeader', [:henhmetafile, :uint, :pointer], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getenhmetafilepaletteentries
    # UINT GetEnhMetaFilePaletteEntries( _In_   HENHMETAFILE hemf, _In_   UINT cEntries, _Out_  LPPALETTEENTRY lppe )
    def self.GetEnhMetaFilePaletteEntries(hemf, cEntries, lppe) end
    attach_function 'GetEnhMetaFilePaletteEntries',
                    [:henhmetafile, :uint, PALETTEENTRY.ptr(:out)], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getmetafilebitsex
    # UINT GetMetaFileBitsEx( _In_   HMETAFILE hmf, _In_   UINT nSize, _Out_  LPVOID lpvData )
    def self.GetMetaFileBitsEx(hmf, nSize, lpvData) end
    attach_function 'GetMetaFileBitsEx', [:hmetafile, :uint, :pointer], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-getwinmetafilebits
    # UINT GetWinMetaFileBits(
    #   _In_   HENHMETAFILE hemf,
    #   _In_   UINT cbBuffer,
    #   _Out_  LPBYTE lpbBuffer,
    #   _In_   INT fnMapMode,
    #   _In_   HDC hdcRef )
    def self.GetWinMetaFileBits(hemf, cbBuffer, lpbBuffer, fnMapMode, hdcRef) end
    attach_function 'GetWinMetaFileBits', [:henhmetafile, :uint, :pointer, :int, :hdc], :uint

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-playenhmetafile
    # BOOL PlayEnhMetaFile( _In_  HDC hdc, _In_  HENHMETAFILE hemf, _In_  const RECT *lpRect )
    def self.PlayEnhMetaFile(hdc, hemf, lpRect) end
    attach_function 'PlayEnhMetaFile', [:hdc, :henhmetafile, RECT.ptr], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-playenhmetafilerecord
    # BOOL PlayEnhMetaFileRecord(
    #   _In_  HDC hdc,
    #   _In_  LPHANDLETABLE lpHandletable,
    #   _In_  const ENHMETARECORD *lpEnhMetaRecord,
    #   _In_  UINT nHandles )
    def self.PlayEnhMetaFileRecord(hdc, lpHandletable, lpEnhMetaRecord, nHandles) end
    attach_function 'PlayEnhMetaFileRecord', [:hdc, :pointer, :pointer, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-playmetafile
    # BOOL PlayMetaFile( _In_  HDC hdc, _In_  HMETAFILE hmf )
    def self.PlayMetaFile(hdc, hmf) end
    attach_function 'PlayMetaFile', [:hdc, :hmetafile], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-playmetafilerecord
    # BOOL PlayMetaFileRecord(
    #   _In_  HDC hdc,
    #   _In_  LPHANDLETABLE lpHandletable,
    #   _In_  LPMETARECORD lpMetaRecord,
    #   _In_  UINT nHandles )
    def self.PlayMetaFileRecord(hdc, lpHandletable, lpMetaRecord, nHandles) end
    attach_function 'PlayMetaFileRecord', [:hdc, HANDLETABLE.ptr(:in), :pointer, :uint], :bool

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setenhmetafilebits
    # HENHMETAFILE SetEnhMetaFileBits( _In_  UINT cbBuffer, _In_  const BYTE *lpData )
    def self.SetEnhMetaFileBits(cbBuffer, lpData) end
    attach_function 'SetEnhMetaFileBits', [:uint, :pointer], :henhmetafile

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setmetafilebitsex
    # HMETAFILE SetMetaFileBitsEx( _In_  UINT nSize, _In_  const BYTE *lpData )
    def self.SetMetaFileBitsEx(nSize, lpData) end
    attach_function 'SetMetaFileBitsEx', [:uint, :pointer], :hmetafile

    # https://docs.microsoft.com/en-us/windows/desktop/api/wingdi/nf-wingdi-setwinmetafilebits
    # HENHMETAFILE SetWinMetaFileBits(
    #   _In_  UINT cbBuffer,
    #   _In_  const BYTE *lpbBuffer,
    #   _In_  HDC hdcRef,
    #   _In_  const METAFILEPICT *lpmfp )
    def self.SetWinMetaFileBits(cbBuffer, lpbBuffer, hdcRef, lpmfp) end
    attach_function 'SetWinMetaFileBits', [:uint, :pointer, :hdc, METAFILEPICT.ptr(:in)], :henhmetafile
  end
end