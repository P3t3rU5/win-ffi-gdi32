module WinFFI
  module Gdi32
    # GDI Escapes
    EscapeReturn = enum :escape_return, [
        :NEWFRAME,                     1,
        :ABORTDOC,                     2,
        :NEXTBAND,                     3,
        :SETCOLORTABLE,                4,
        :GETCOLORTABLE,                5,
        :FLUSHOUTPUT,                  6,
        :DRAFTMODE,                    7,
        :QUERYESCSUPPORT,              8,
        :SETABORTPROC,                 9,
        :STARTDOC,                     10,
        :ENDDOC,                       11,
        :GETPHYSPAGESIZE,              12,
        :GETPRINTINGOFFSET,            13,
        :GETSCALINGFACTOR,             14,
        :MFCOMMENT,                    15,
        :GETPENWIDTH,                  16,
        :SETCOPYCOUNT,                 17,
        :SELECTPAPERSOURCE,            18,
        :DEVICEDATA,                   19,
        :PASSTHROUGH,                  19,
        :GETTECHNOLGY,                 20,
        :GETTECHNOLOGY,                20,
        :SETLINECAP,                   21,
        :SETLINEJOIN,                  22,
        :SETMITERLIMIT,                23,
        :BANDINFO,                     24,
        :DRAWPATTERNRECT,              25,
        :GETVECTORPENSIZE,             26,
        :GETVECTORBRUSHSIZE,           27,
        :ENABLEDUPLEX,                 28,
        :GETSETPAPERBINS,              29,
        :GETSETPRINTORIENT,            30,
        :ENUMPAPERBINS,                31,
        :SETDIBSCALING,                32,
        :EPSPRINTING,                  33,
        :ENUMPAPERMETRICS,             34,
        :GETSETPAPERMETRICS,           35,
        :POSTSCRIPT_DATA,              37,
        :POSTSCRIPT_IGNORE,            38,
        :MOUSETRAILS,                  39,
        :GETDEVICEUNITS,               42,

        :GETEXTENDEDTEXTMETRICS,      256,
        :GETEXTENTTABLE,              257,
        :GETPAIRKERNTABLE,            258,
        :GETTRACKKERNTABLE,           259,
        :EXTTEXTOUT,                  512,
        :GETFACENAME,                 513,
        :DOWNLOADFACE,                514,
        :ENABLERELATIVEWIDTHS,        768,
        :ENABLEPAIRKERNING,           769,
        :SETKERNTRACK,                770,
        :SETALLJUSTVALUES,            771,
        :SETCHARSET,                  772,

        :STRETCHBLT,                 2048,
        :METAFILE_DRIVER,            2049,
        :GETSETSCREENPARAMS,         3072,
        :QUERYDIBSUPPORT,            3073,
        :BEGIN_PATH,                 4096,
        :CLIP_TO_PATH,               4097,
        :END_PATH,                   4098,
        :EXT_DEVICE_CAPS,            4099,
        :RESTORE_CTM,                4100,
        :SAVE_CTM,                   4101,
        :SET_ARC_DIRECTION,          4102,
        :SET_BACKGROUND_COLOR,       4103,
        :SET_POLY_MODE,              4104,
        :SET_SCREEN_ANGLE,           4105,
        :SET_SPREAD,                 4106,
        :TRANSFORM_CTM,              4107,
        :SET_CLIP_BOX,               4108,
        :SET_BOUNDS,                 4109,
        :SET_MIRROR_MODE,            4110,
        :OPENCHANNEL,                4110,
        :DOWNLOADHEADER,             4111,
        :CLOSECHANNEL,               4112,
        :POSTSCRIPT_PASSTHROUGH,     4115,
        :ENCAPSULATED_POSTSCRIPT,    4116,

        :POSTSCRIPT_IDENTIFY,        4117,
        :POSTSCRIPT_INJECTION,       4118,

        :CHECKJPEGFORMAT,            4119,
        :CHECKPNGFORMAT,             4120,

        :GET_PS_FEATURESETTING,      4121,

        :GDIPLUS_TS_QUERYVER,        4122,
        :GDIPLUS_TS_RECORD,          4123,

        :SPCLPASSTHROUGH2,           4568
    ]
  end
end