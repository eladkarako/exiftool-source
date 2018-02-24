<h1><img width="48" height="48" src="icon.png"/> exiftool-source</h2>
<h2>exiftool (<code>v10.80</code>, <sub>last updated: February 22<sup><em>nd</em></sup>, 2018</sub>) is a collection of Perl scripts and LIBs, a.k.a distributed as a <code>PAR::Packer</code> execute-file for Windows (and internally, it uses <code>Active Perl</code>), if you're interested to see the source you can simply extract it with 7zip. This is what inside the latest version.</h2>

<hr/>

<pre>
/
|   MANIFEST
|   META.yml
|   
+---lib
|   |   autouse.pm
|   |   base.pm
|   |   bytes.pm
|   |   bytes_heavy.pl
|   |   Carp.pm
|   |   Config.pm
|   |   Config_git.pl
|   |   Config_heavy.pl
|   |   constant.pm
|   |   Cwd.pm
|   |   DynaLoader.pm
|   |   Encode.pm
|   |   Errno.pm
|   |   Exporter.pm
|   |   Fcntl.pm
|   |   feature.pm
|   |   FileHandle.pm
|   |   integer.pm
|   |   IO.pm
|   |   locale.pm
|   |   mro.pm
|   |   overload.pm
|   |   overloading.pm
|   |   parent.pm
|   |   POSIX.pm
|   |   QuickTimeStream.pl
|   |   re.pm
|   |   SelectSaver.pm
|   |   Shift.pl
|   |   Socket.pm
|   |   strict.pm
|   |   Symbol.pm
|   |   utf8.pm
|   |   utf8_heavy.pl
|   |   vars.pm
|   |   warnings.pm
|   |   Win32.pm
|   |   WriteCanonRaw.pl
|   |   WriteExif.pl
|   |   WriteIPTC.pl
|   |   WritePDF.pl
|   |   WritePhotoshop.pl
|   |   WritePNG.pl
|   |   WritePostScript.pl
|   |   WriteQuickTime.pl
|   |   Writer.pl
|   |   WriteXMP.pl
|   |   XMP2.pl
|   |   XMPStruct.pl
|   |   XSLoader.pm
|   |   
|   +---ActivePerl
|   |       Config.pm
|   |       
|   +---Archive
|   |   |   Zip.pm
|   |   |   
|   |   \---Zip
|   |           Archive.pm
|   |           DirectoryMember.pm
|   |           FileMember.pm
|   |           Member.pm
|   |           NewFileMember.pm
|   |           StringMember.pm
|   |           ZipFileMember.pm
|   |           
|   +---auto
|   |   +---Compress
|   |   |   \---Raw
|   |   |       +---Bzip2
|   |   |       |       Bzip2.dll
|   |   |       |       
|   |   |       \---Zlib
|   |   |               Zlib.dll
|   |   |               
|   |   +---Cwd
|   |   |       Cwd.dll
|   |   |       
|   |   +---Digest
|   |   |   +---MD5
|   |   |   |       MD5.dll
|   |   |   |       
|   |   |   \---SHA
|   |   |           SHA.dll
|   |   |           
|   |   +---Encode
|   |   |       Encode.dll
|   |   |       
|   |   +---Fcntl
|   |   |       Fcntl.dll
|   |   |       
|   |   +---File
|   |   |   \---Glob
|   |   |           Glob.dll
|   |   |           
|   |   +---IO
|   |   |       IO.dll
|   |   |       
|   |   +---List
|   |   |   \---Util
|   |   |           Util.dll
|   |   |           
|   |   +---Math
|   |   |   \---BigInt
|   |   |       +---FastCalc
|   |   |       |       FastCalc.dll
|   |   |       |       
|   |   |       \---GMP
|   |   |               GMP.dll
|   |   |               
|   |   +---MIME
|   |   |   \---Base64
|   |   |           Base64.dll
|   |   |           
|   |   +---mro
|   |   |       mro.dll
|   |   |       
|   |   +---POSIX
|   |   |       POSIX.dll
|   |   |       
|   |   +---re
|   |   |       re.dll
|   |   |       
|   |   +---Socket
|   |   |       Socket.dll
|   |   |       
|   |   +---Time
|   |   |   +---HiRes
|   |   |   |       HiRes.dll
|   |   |   |       
|   |   |   \---Piece
|   |   |           Piece.dll
|   |   |           
|   |   +---Win32
|   |   |   |   Win32.dll
|   |   |   |   
|   |   |   +---API
|   |   |   |       API.dll
|   |   |   |       
|   |   |   +---Console
|   |   |   |       Console.dll
|   |   |   |       
|   |   |   \---FindFile
|   |   |           FindFile.dll
|   |   |           
|   |   \---Win32API
|   |       \---File
|   |               File.dll
|   |               
|   +---Class
|   |       Struct.pm
|   |       
|   +---Compress
|   |   |   Zlib.pm
|   |   |   
|   |   \---Raw
|   |           Bzip2.pm
|   |           Zlib.pm
|   |           
|   +---Digest
|   |       base.pm
|   |       MD5.pm
|   |       SHA.pm
|   |       
|   +---Encode
|   |   |   Alias.pm
|   |   |   Config.pm
|   |   |   Encoding.pm
|   |   |   
|   |   \---MIME
|   |           Name.pm
|   |           
|   +---Exporter
|   |       Heavy.pm
|   |       
|   +---File
|   |   |   Basename.pm
|   |   |   Copy.pm
|   |   |   Find.pm
|   |   |   Glob.pm
|   |   |   GlobMapper.pm
|   |   |   Path.pm
|   |   |   RandomAccess.pm
|   |   |   Spec.pm
|   |   |   stat.pm
|   |   |   Temp.pm
|   |   |   
|   |   \---Spec
|   |           Unix.pm
|   |           Win32.pm
|   |           
|   +---Image
|   |   |   ExifTool.pm
|   |   |   
|   |   \---ExifTool
|   |       |   AES.pm
|   |       |   AFCP.pm
|   |       |   AIFF.pm
|   |       |   APE.pm
|   |       |   APP12.pm
|   |       |   Apple.pm
|   |       |   ASF.pm
|   |       |   Audible.pm
|   |       |   BigTIFF.pm
|   |       |   BMP.pm
|   |       |   BPG.pm
|   |       |   BuildTagLookup.pm
|   |       |   BZZ.pm
|   |       |   Canon.pm
|   |       |   CanonCustom.pm
|   |       |   CanonRaw.pm
|   |       |   CanonVRD.pm
|   |       |   CaptureOne.pm
|   |       |   Casio.pm
|   |       |   Charset.pm
|   |       |   DarwinCore.pm
|   |       |   DICOM.pm
|   |       |   DJI.pm
|   |       |   DjVu.pm
|   |       |   DNG.pm
|   |       |   DPX.pm
|   |       |   DV.pm
|   |       |   EXE.pm
|   |       |   Exif.pm
|   |       |   Fixup.pm
|   |       |   FLAC.pm
|   |       |   Flash.pm
|   |       |   FlashPix.pm
|   |       |   FLIF.pm
|   |       |   FLIR.pm
|   |       |   Font.pm
|   |       |   FotoStation.pm
|   |       |   FujiFilm.pm
|   |       |   GE.pm
|   |       |   Geotag.pm
|   |       |   GeoTiff.pm
|   |       |   GIF.pm
|   |       |   GIMP.pm
|   |       |   GoPro.pm
|   |       |   GPS.pm
|   |       |   H264.pm
|   |       |   HP.pm
|   |       |   HTML.pm
|   |       |   HtmlDump.pm
|   |       |   ICC_Profile.pm
|   |       |   ID3.pm
|   |       |   Import.pm
|   |       |   InDesign.pm
|   |       |   IPTC.pm
|   |       |   ISO.pm
|   |       |   ITC.pm
|   |       |   iWork.pm
|   |       |   JPEG.pm
|   |       |   Jpeg2000.pm
|   |       |   JPEGDigest.pm
|   |       |   JSON.pm
|   |       |   JVC.pm
|   |       |   Kodak.pm
|   |       |   KyoceraRaw.pm
|   |       |   Leaf.pm
|   |       |   LNK.pm
|   |       |   Lytro.pm
|   |       |   M2TS.pm
|   |       |   MacOS.pm
|   |       |   MakerNotes.pm
|   |       |   Matroska.pm
|   |       |   Microsoft.pm
|   |       |   MIE.pm
|   |       |   MIEUnits.pod
|   |       |   MIFF.pm
|   |       |   Minolta.pm
|   |       |   MinoltaRaw.pm
|   |       |   MNG.pm
|   |       |   MOI.pm
|   |       |   Motorola.pm
|   |       |   MPC.pm
|   |       |   MPEG.pm
|   |       |   MPF.pm
|   |       |   MWG.pm
|   |       |   MXF.pm
|   |       |   Nikon.pm
|   |       |   NikonCapture.pm
|   |       |   NikonCustom.pm
|   |       |   Nintendo.pm
|   |       |   Ogg.pm
|   |       |   Olympus.pm
|   |       |   OOXML.pm
|   |       |   OpenEXR.pm
|   |       |   Opus.pm
|   |       |   Palm.pm
|   |       |   Panasonic.pm
|   |       |   PanasonicRaw.pm
|   |       |   PDF.pm
|   |       |   Pentax.pm
|   |       |   PGF.pm
|   |       |   PhaseOne.pm
|   |       |   PhotoCD.pm
|   |       |   PhotoMechanic.pm
|   |       |   Photoshop.pm
|   |       |   PICT.pm
|   |       |   PLIST.pm
|   |       |   PLUS.pm
|   |       |   PNG.pm
|   |       |   PostScript.pm
|   |       |   PPM.pm
|   |       |   PrintIM.pm
|   |       |   PSP.pm
|   |       |   Qualcomm.pm
|   |       |   QuickTime.pm
|   |       |   QuickTimeStream.pl
|   |       |   Radiance.pm
|   |       |   Rawzor.pm
|   |       |   README
|   |       |   Real.pm
|   |       |   Reconyx.pm
|   |       |   Red.pm
|   |       |   Ricoh.pm
|   |       |   RIFF.pm
|   |       |   RSRC.pm
|   |       |   RTF.pm
|   |       |   Samsung.pm
|   |       |   Sanyo.pm
|   |       |   Scalado.pm
|   |       |   Shift.pl
|   |       |   Shortcuts.pm
|   |       |   Sigma.pm
|   |       |   SigmaRaw.pm
|   |       |   Sony.pm
|   |       |   SonyIDC.pm
|   |       |   Stim.pm
|   |       |   TagInfoXML.pm
|   |       |   TagLookup.pm
|   |       |   TagNames.pod
|   |       |   Theora.pm
|   |       |   Torrent.pm
|   |       |   Unknown.pm
|   |       |   Validate.pm
|   |       |   VCard.pm
|   |       |   Vorbis.pm
|   |       |   WriteCanonRaw.pl
|   |       |   WriteExif.pl
|   |       |   WriteID3.pl
|   |       |   WriteIPTC.pl
|   |       |   WritePDF.pl
|   |       |   WritePhotoshop.pl
|   |       |   WritePNG.pl
|   |       |   WritePostScript.pl
|   |       |   WriteQuickTime.pl
|   |       |   Writer.pl
|   |       |   WriteXMP.pl
|   |       |   XMP.pm
|   |       |   XMP2.pl
|   |       |   XMPStruct.pl
|   |       |   ZIP.pm
|   |       |   
|   |       +---Charset
|   |       |   |   Arabic.pm
|   |       |   |   Baltic.pm
|   |       |   |   Cyrillic.pm
|   |       |   |   DOSLatin1.pm
|   |       |   |   DOSLatinUS.pm
|   |       |   |   Greek.pm
|   |       |   |   Hebrew.pm
|   |       |   |   JIS.pm
|   |       |   |   Latin.pm
|   |       |   |   Latin2.pm
|   |       |   |   MacArabic.pm
|   |       |   |   MacChineseCN.pm
|   |       |   |   MacChineseTW.pm
|   |       |   |   MacCroatian.pm
|   |       |   |   MacCyrillic.pm
|   |       |   |   MacGreek.pm
|   |       |   |   MacHebrew.pm
|   |       |   |   MacIceland.pm
|   |       |   |   MacJapanese.pm
|   |       |   |   MacKorean.pm
|   |       |   |   MacLatin2.pm
|   |       |   |   MacRoman.pm
|   |       |   |   MacRomanian.pm
|   |       |   |   MacRSymbol.pm
|   |       |   |   MacThai.pm
|   |       |   |   MacTurkish.pm
|   |       |   |   PDFDoc.pm
|   |       |   |   ShiftJIS.pm
|   |       |   |   Symbol.pm
|   |       |   |   Thai.pm
|   |       |   |   Turkish.pm
|   |       |   |   Vietnam.pm
|   |       |   |   
|   |       |   \---CVS
|   |       |           Entries
|   |       |           Repository
|   |       |           Root
|   |       |           Template
|   |       |           
|   |       +---CVS
|   |       |       Entries
|   |       |       Repository
|   |       |       Root
|   |       |       Template
|   |       |       
|   |       \---Lang
|   |           |   cs.pm
|   |           |   de.pm
|   |           |   en_ca.pm
|   |           |   en_gb.pm
|   |           |   es.pm
|   |           |   fi.pm
|   |           |   fr.pm
|   |           |   it.pm
|   |           |   ja.pm
|   |           |   ko.pm
|   |           |   nl.pm
|   |           |   pl.pm
|   |           |   ru.pm
|   |           |   sv.pm
|   |           |   tr.pm
|   |           |   zh_cn.pm
|   |           |   zh_tw.pm
|   |           |   
|   |           \---CVS
|   |                   Entries
|   |                   Repository
|   |                   Root
|   |                   Template
|   |                   
|   +---IO
|   |   |   Dir.pm
|   |   |   File.pm
|   |   |   Handle.pm
|   |   |   Pipe.pm
|   |   |   Seekable.pm
|   |   |   Select.pm
|   |   |   Socket.pm
|   |   |   
|   |   +---Compress
|   |   |   |   Base.pm
|   |   |   |   Bzip2.pm
|   |   |   |   Gzip.pm
|   |   |   |   RawDeflate.pm
|   |   |   |   
|   |   |   +---Adapter
|   |   |   |       Bzip2.pm
|   |   |   |       Deflate.pm
|   |   |   |       
|   |   |   +---Base
|   |   |   |       Common.pm
|   |   |   |       
|   |   |   +---Gzip
|   |   |   |       Constants.pm
|   |   |   |       
|   |   |   \---Zlib
|   |   |           Extra.pm
|   |   |           
|   |   +---Socket
|   |   |       INET.pm
|   |   |       UNIX.pm
|   |   |       
|   |   \---Uncompress
|   |       |   Base.pm
|   |       |   Gunzip.pm
|   |       |   RawInflate.pm
|   |       |   
|   |       \---Adapter
|   |               Inflate.pm
|   |               
|   +---List
|   |       Util.pm
|   |       
|   +---Math
|   |   |   BigFloat.pm
|   |   |   BigInt.pm
|   |   |   Complex.pm
|   |   |   
|   |   +---BigFloat
|   |   |       Trace.pm
|   |   |       
|   |   \---BigInt
|   |           Calc.pm
|   |           CalcEmu.pm
|   |           FastCalc.pm
|   |           GMP.pm
|   |           Trace.pm
|   |           
|   +---MIME
|   |       Base64.pm
|   |       
|   +---overload
|   |       numbers.pm
|   |       
|   +---Scalar
|   |       Util.pm
|   |       
|   +---Term
|   |       Cap.pm
|   |       
|   +---Tie
|   |       Handle.pm
|   |       Hash.pm
|   |       StdHandle.pm
|   |       
|   +---Time
|   |       HiRes.pm
|   |       Local.pm
|   |       Piece.pm
|   |       Seconds.pm
|   |       
|   +---unicore
|   |   |   Blocks.txt
|   |   |   CombiningClass.pl
|   |   |   Decomposition.pl
|   |   |   Heavy.pl
|   |   |   Name.pl
|   |   |   Name.pm
|   |   |   NamedSequences.txt
|   |   |   SpecialCasing.txt
|   |   |   UCD.pl
|   |   |   version
|   |   |   
|   |   +---lib
|   |   |   +---Age
|   |   |   |       NA.pl
|   |   |   |       V11.pl
|   |   |   |       V20.pl
|   |   |   |       V30.pl
|   |   |   |       V31.pl
|   |   |   |       V32.pl
|   |   |   |       V40.pl
|   |   |   |       V41.pl
|   |   |   |       V50.pl
|   |   |   |       V51.pl
|   |   |   |       V52.pl
|   |   |   |       V60.pl
|   |   |   |       V61.pl
|   |   |   |       V70.pl
|   |   |   |       V80.pl
|   |   |   |       
|   |   |   +---Alpha
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---Bc
|   |   |   |       AL.pl
|   |   |   |       AN.pl
|   |   |   |       B.pl
|   |   |   |       BN.pl
|   |   |   |       CS.pl
|   |   |   |       EN.pl
|   |   |   |       ES.pl
|   |   |   |       ET.pl
|   |   |   |       L.pl
|   |   |   |       NSM.pl
|   |   |   |       ON.pl
|   |   |   |       R.pl
|   |   |   |       WS.pl
|   |   |   |       
|   |   |   +---BidiC
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---BidiM
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---Blk
|   |   |   |       NB.pl
|   |   |   |       
|   |   |   +---Bpt
|   |   |   |       C.pl
|   |   |   |       N.pl
|   |   |   |       O.pl
|   |   |   |       
|   |   |   +---Cased
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---Ccc
|   |   |   |       A.pl
|   |   |   |       AR.pl
|   |   |   |       ATAR.pl
|   |   |   |       B.pl
|   |   |   |       BR.pl
|   |   |   |       DB.pl
|   |   |   |       NK.pl
|   |   |   |       NR.pl
|   |   |   |       OV.pl
|   |   |   |       VR.pl
|   |   |   |       
|   |   |   +---CE
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---CI
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---CompEx
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---CWCF
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---CWCM
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---CWKCF
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---CWL
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---CWT
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---CWU
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---Dash
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---Dep
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---DI
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---Dia
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---Dt
|   |   |   |       Com.pl
|   |   |   |       Enc.pl
|   |   |   |       Fin.pl
|   |   |   |       Font.pl
|   |   |   |       Init.pl
|   |   |   |       Iso.pl
|   |   |   |       Med.pl
|   |   |   |       Nar.pl
|   |   |   |       Nb.pl
|   |   |   |       NonCanon.pl
|   |   |   |       Sqr.pl
|   |   |   |       Sub.pl
|   |   |   |       Sup.pl
|   |   |   |       Vert.pl
|   |   |   |       
|   |   |   +---Ea
|   |   |   |       A.pl
|   |   |   |       H.pl
|   |   |   |       N.pl
|   |   |   |       Na.pl
|   |   |   |       W.pl
|   |   |   |       
|   |   |   +---Ext
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---Gc
|   |   |   |       C.pl
|   |   |   |       Cf.pl
|   |   |   |       Cn.pl
|   |   |   |       L.pl
|   |   |   |       LC.pl
|   |   |   |       Ll.pl
|   |   |   |       Lm.pl
|   |   |   |       Lo.pl
|   |   |   |       Lu.pl
|   |   |   |       M.pl
|   |   |   |       Mc.pl
|   |   |   |       Me.pl
|   |   |   |       Mn.pl
|   |   |   |       N.pl
|   |   |   |       Nd.pl
|   |   |   |       Nl.pl
|   |   |   |       No.pl
|   |   |   |       P.pl
|   |   |   |       Pd.pl
|   |   |   |       Pe.pl
|   |   |   |       Pf.pl
|   |   |   |       Pi.pl
|   |   |   |       Po.pl
|   |   |   |       Ps.pl
|   |   |   |       S.pl
|   |   |   |       Sc.pl
|   |   |   |       Sk.pl
|   |   |   |       Sm.pl
|   |   |   |       So.pl
|   |   |   |       Z.pl
|   |   |   |       Zs.pl
|   |   |   |       
|   |   |   +---GCB
|   |   |   |       CN.pl
|   |   |   |       EX.pl
|   |   |   |       LV.pl
|   |   |   |       LVT.pl
|   |   |   |       SM.pl
|   |   |   |       XX.pl
|   |   |   |       
|   |   |   +---GrBase
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---Hex
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---Hst
|   |   |   |       NA.pl
|   |   |   |       
|   |   |   +---Hyphen
|   |   |   |       T.pl
|   |   |   |       
|   |   |   +---IDC
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---Ideo
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---IDS
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---In
|   |   |   |       2_0.pl
|   |   |   |       2_1.pl
|   |   |   |       3_0.pl
|   |   |   |       3_1.pl
|   |   |   |       3_2.pl
|   |   |   |       4_0.pl
|   |   |   |       4_1.pl
|   |   |   |       5_0.pl
|   |   |   |       5_1.pl
|   |   |   |       5_2.pl
|   |   |   |       6_0.pl
|   |   |   |       6_1.pl
|   |   |   |       6_2.pl
|   |   |   |       6_3.pl
|   |   |   |       7_0.pl
|   |   |   |       8_0.pl
|   |   |   |       
|   |   |   +---InPC
|   |   |   |       Bottom.pl
|   |   |   |       Left.pl
|   |   |   |       LeftAndR.pl
|   |   |   |       NA.pl
|   |   |   |       Overstru.pl
|   |   |   |       Right.pl
|   |   |   |       Top.pl
|   |   |   |       TopAndBo.pl
|   |   |   |       TopAndL2.pl
|   |   |   |       TopAndLe.pl
|   |   |   |       TopAndRi.pl
|   |   |   |       VisualOr.pl
|   |   |   |       
|   |   |   +---InSC
|   |   |   |       Avagraha.pl
|   |   |   |       Bindu.pl
|   |   |   |       Cantilla.pl
|   |   |   |       Consona2.pl
|   |   |   |       Consona3.pl
|   |   |   |       Consona4.pl
|   |   |   |       Consona5.pl
|   |   |   |       Consona6.pl
|   |   |   |       Consonan.pl
|   |   |   |       Invisibl.pl
|   |   |   |       Nukta.pl
|   |   |   |       Number.pl
|   |   |   |       Other.pl
|   |   |   |       PureKill.pl
|   |   |   |       Syllable.pl
|   |   |   |       ToneMark.pl
|   |   |   |       Virama.pl
|   |   |   |       Visarga.pl
|   |   |   |       Vowel.pl
|   |   |   |       VowelDep.pl
|   |   |   |       VowelInd.pl
|   |   |   |       
|   |   |   +---Jg
|   |   |   |       Ain.pl
|   |   |   |       Alef.pl
|   |   |   |       Beh.pl
|   |   |   |       Dal.pl
|   |   |   |       FarsiYeh.pl
|   |   |   |       Feh.pl
|   |   |   |       Gaf.pl
|   |   |   |       Hah.pl
|   |   |   |       Kaf.pl
|   |   |   |       Lam.pl
|   |   |   |       NoJoinin.pl
|   |   |   |       Qaf.pl
|   |   |   |       Reh.pl
|   |   |   |       Sad.pl
|   |   |   |       Seen.pl
|   |   |   |       Waw.pl
|   |   |   |       Yeh.pl
|   |   |   |       
|   |   |   +---Jt
|   |   |   |       C.pl
|   |   |   |       D.pl
|   |   |   |       R.pl
|   |   |   |       T.pl
|   |   |   |       U.pl
|   |   |   |       
|   |   |   +---Lb
|   |   |   |       AI.pl
|   |   |   |       AL.pl
|   |   |   |       BA.pl
|   |   |   |       BB.pl
|   |   |   |       CJ.pl
|   |   |   |       CL.pl
|   |   |   |       CM.pl
|   |   |   |       EX.pl
|   |   |   |       GL.pl
|   |   |   |       ID.pl
|   |   |   |       IN.pl
|   |   |   |       IS.pl
|   |   |   |       NS.pl
|   |   |   |       OP.pl
|   |   |   |       PO.pl
|   |   |   |       PR.pl
|   |   |   |       QU.pl
|   |   |   |       SA.pl
|   |   |   |       XX.pl
|   |   |   |       
|   |   |   +---Lower
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---Math
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---NFCQC
|   |   |   |       M.pl
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---NFDQC
|   |   |   |       N.pl
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---NFKCQC
|   |   |   |       N.pl
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---NFKDQC
|   |   |   |       N.pl
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---Nt
|   |   |   |       Di.pl
|   |   |   |       None.pl
|   |   |   |       Nu.pl
|   |   |   |       
|   |   |   +---Nv
|   |   |   |       0.pl
|   |   |   |       1.pl
|   |   |   |       10.pl
|   |   |   |       100.pl
|   |   |   |       1000.pl
|   |   |   |       10000.pl
|   |   |   |       11.pl
|   |   |   |       12.pl
|   |   |   |       13.pl
|   |   |   |       14.pl
|   |   |   |       15.pl
|   |   |   |       16.pl
|   |   |   |       17.pl
|   |   |   |       18.pl
|   |   |   |       19.pl
|   |   |   |       1_2.pl
|   |   |   |       1_3.pl
|   |   |   |       1_4.pl
|   |   |   |       1_8.pl
|   |   |   |       2.pl
|   |   |   |       20.pl
|   |   |   |       200.pl
|   |   |   |       2_3.pl
|   |   |   |       3.pl
|   |   |   |       30.pl
|   |   |   |       300.pl
|   |   |   |       3_4.pl
|   |   |   |       4.pl
|   |   |   |       40.pl
|   |   |   |       400.pl
|   |   |   |       5.pl
|   |   |   |       50.pl
|   |   |   |       500.pl
|   |   |   |       5000.pl
|   |   |   |       50000.pl
|   |   |   |       6.pl
|   |   |   |       60.pl
|   |   |   |       600.pl
|   |   |   |       7.pl
|   |   |   |       70.pl
|   |   |   |       700.pl
|   |   |   |       8.pl
|   |   |   |       80.pl
|   |   |   |       800.pl
|   |   |   |       9.pl
|   |   |   |       90.pl
|   |   |   |       900.pl
|   |   |   |       
|   |   |   +---PatSyn
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---Perl
|   |   |   |       Alnum.pl
|   |   |   |       Assigned.pl
|   |   |   |       Blank.pl
|   |   |   |       Graph.pl
|   |   |   |       PerlWord.pl
|   |   |   |       PosixPun.pl
|   |   |   |       Print.pl
|   |   |   |       SpacePer.pl
|   |   |   |       Title.pl
|   |   |   |       Word.pl
|   |   |   |       XPosixPu.pl
|   |   |   |       _PerlAny.pl
|   |   |   |       _PerlCh2.pl
|   |   |   |       _PerlCha.pl
|   |   |   |       _PerlFol.pl
|   |   |   |       _PerlIDC.pl
|   |   |   |       _PerlIDS.pl
|   |   |   |       _PerlNch.pl
|   |   |   |       _PerlPat.pl
|   |   |   |       _PerlPr2.pl
|   |   |   |       _PerlPro.pl
|   |   |   |       _PerlQuo.pl
|   |   |   |       
|   |   |   +---QMark
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---SB
|   |   |   |       AT.pl
|   |   |   |       CL.pl
|   |   |   |       EX.pl
|   |   |   |       FO.pl
|   |   |   |       LE.pl
|   |   |   |       LO.pl
|   |   |   |       NU.pl
|   |   |   |       SC.pl
|   |   |   |       Sp.pl
|   |   |   |       ST.pl
|   |   |   |       UP.pl
|   |   |   |       XX.pl
|   |   |   |       
|   |   |   +---Sc
|   |   |   |       Arab.pl
|   |   |   |       Armn.pl
|   |   |   |       Beng.pl
|   |   |   |       Cham.pl
|   |   |   |       Cprt.pl
|   |   |   |       Cyrl.pl
|   |   |   |       Deva.pl
|   |   |   |       Dupl.pl
|   |   |   |       Ethi.pl
|   |   |   |       Geor.pl
|   |   |   |       Gran.pl
|   |   |   |       Grek.pl
|   |   |   |       Gujr.pl
|   |   |   |       Guru.pl
|   |   |   |       Han.pl
|   |   |   |       Hang.pl
|   |   |   |       Hebr.pl
|   |   |   |       Hira.pl
|   |   |   |       Hmng.pl
|   |   |   |       Kana.pl
|   |   |   |       Khar.pl
|   |   |   |       Khmr.pl
|   |   |   |       Knda.pl
|   |   |   |       Lana.pl
|   |   |   |       Lao.pl
|   |   |   |       Latn.pl
|   |   |   |       Limb.pl
|   |   |   |       Linb.pl
|   |   |   |       Mlym.pl
|   |   |   |       Mong.pl
|   |   |   |       Mult.pl
|   |   |   |       Orya.pl
|   |   |   |       Sinh.pl
|   |   |   |       Talu.pl
|   |   |   |       Taml.pl
|   |   |   |       Telu.pl
|   |   |   |       Tibt.pl
|   |   |   |       Xsux.pl
|   |   |   |       Zinh.pl
|   |   |   |       Zyyy.pl
|   |   |   |       Zzzz.pl
|   |   |   |       
|   |   |   +---Scx
|   |   |   |       Arab.pl
|   |   |   |       Armn.pl
|   |   |   |       Beng.pl
|   |   |   |       Bopo.pl
|   |   |   |       Cakm.pl
|   |   |   |       Copt.pl
|   |   |   |       Cprt.pl
|   |   |   |       Cyrl.pl
|   |   |   |       Deva.pl
|   |   |   |       Dupl.pl
|   |   |   |       Geor.pl
|   |   |   |       Glag.pl
|   |   |   |       Gran.pl
|   |   |   |       Grek.pl
|   |   |   |       Gujr.pl
|   |   |   |       Guru.pl
|   |   |   |       Han.pl
|   |   |   |       Hang.pl
|   |   |   |       Hira.pl
|   |   |   |       Kana.pl
|   |   |   |       Knda.pl
|   |   |   |       Latn.pl
|   |   |   |       Limb.pl
|   |   |   |       Linb.pl
|   |   |   |       Mlym.pl
|   |   |   |       Mong.pl
|   |   |   |       Mult.pl
|   |   |   |       Mymr.pl
|   |   |   |       Orya.pl
|   |   |   |       Phlp.pl
|   |   |   |       Shrd.pl
|   |   |   |       Sind.pl
|   |   |   |       Sinh.pl
|   |   |   |       Syrc.pl
|   |   |   |       Tagb.pl
|   |   |   |       Takr.pl
|   |   |   |       Taml.pl
|   |   |   |       Telu.pl
|   |   |   |       Thaa.pl
|   |   |   |       Tirh.pl
|   |   |   |       Yi.pl
|   |   |   |       Zinh.pl
|   |   |   |       Zyyy.pl
|   |   |   |       
|   |   |   +---SD
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---STerm
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---Term
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---UIdeo
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---Upper
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   +---WB
|   |   |   |       EX.pl
|   |   |   |       FO.pl
|   |   |   |       HL.pl
|   |   |   |       KA.pl
|   |   |   |       LE.pl
|   |   |   |       MB.pl
|   |   |   |       ML.pl
|   |   |   |       MN.pl
|   |   |   |       NU.pl
|   |   |   |       XX.pl
|   |   |   |       
|   |   |   +---XIDC
|   |   |   |       Y.pl
|   |   |   |       
|   |   |   \---XIDS
|   |   |           Y.pl
|   |   |           
|   |   \---To
|   |           Age.pl
|   |           Bc.pl
|   |           Bmg.pl
|   |           Bpb.pl
|   |           Bpt.pl
|   |           Cf.pl
|   |           Digit.pl
|   |           Ea.pl
|   |           Fold.pl
|   |           Gc.pl
|   |           GCB.pl
|   |           Hst.pl
|   |           InPC.pl
|   |           InSC.pl
|   |           Isc.pl
|   |           Jg.pl
|   |           Jt.pl
|   |           Lb.pl
|   |           Lc.pl
|   |           Lower.pl
|   |           Na1.pl
|   |           NameAlia.pl
|   |           NFCQC.pl
|   |           NFDQC.pl
|   |           NFKCCF.pl
|   |           NFKCQC.pl
|   |           NFKDQC.pl
|   |           Nt.pl
|   |           Nv.pl
|   |           PerlDeci.pl
|   |           SB.pl
|   |           Sc.pl
|   |           Scx.pl
|   |           Tc.pl
|   |           Title.pl
|   |           Uc.pl
|   |           Upper.pl
|   |           WB.pl
|   |           _PerlLB.pl
|   |           _PerlWB.pl
|   |           
|   +---warnings
|   |       register.pm
|   |       
|   +---Win32
|   |   |   API.pm
|   |   |   Console.pm
|   |   |   FindFile.pm
|   |   |   
|   |   \---API
|   |           Struct.pm
|   |           Type.pm
|   |           
|   \---Win32API
|       |   File.pm
|       |   
|       \---File
|               cFile.pc
|               
\---script
        exiftool
        main.pl
        
</pre>

<hr/>

Here is the commandline-help (textual version) of v10.68:
<pre>
NAME
    exiftool - Read and write meta information in files

RUNNING IN WINDOWS
    Drag and drop files or folders onto the exiftool executable to display
    meta information, or rename to "exiftool.exe" and run from the command
    line to access all exiftool features.

    This stand-alone Windows version allows simple command-line options to
    be added to the name of the executable (in brackets and separated by
    spaces at the end of the name), providing a mechanism to use options
    when launched via the mouse. For example, changing the executable name
    to "exiftool(-a -u -g1 -w txt).exe" gives a drag-and-drop utility which
    generates sidecar ".txt" files with detailed meta information. As
    shipped, the -k option is added to cause exiftool to pause before
    terminating (keeping the command window open). Options may also be added
    to the "Target" property of a Windows shortcut to the executable.

SYNOPSIS
    exiftool [*OPTIONS*] [-*TAG*...] [--*TAG*...] *FILE*...
    exiftool [*OPTIONS*] -*TAG*[+-&lt;]=[*VALUE*]... *FILE*...
    exiftool [*OPTIONS*] -tagsFromFile *SRCFILE* [-*SRCTAG*[&gt;*DSTTAG*]...]
    *FILE*...
    exiftool [ -ver | -list[w|f|r|wf|g[*NUM*]|d|x] ]

    For specific examples, see the EXAMPLES sections below.

    This documentation is displayed if exiftool is run without an input
    *FILE* when one is expected.

DESCRIPTION
    A command-line interface to Image::ExifTool, used for reading and
    writing meta information in a variety of file types. *FILE* is one or
    more source file names, directory names, or "-" for the standard input.
    Metadata is read from source files and printed in readable form to the
    console (or written to output text files with -w).

    To write or delete metadata, tag values are assigned using the
    -*TAG*=[*VALUE*] syntax, or the -geotag option. To copy or move
    metadata, the -tagsFromFile feature is used. By default the original
    files are preserved with "_original" appended to their names -- be sure
    to verify that the new files are OK before erasing the originals. Once
    in write mode, exiftool will ignore any read-specific options.

    Note: If *FILE* is a directory name then only supported file types in
    the directory are processed (in write mode only writable types are
    processed). However, files may be specified by name, or the -ext option
    may be used to force processing of files with any extension. Hidden
    files in the directory are also processed. Adding the -r option causes
    subdirectories to be processed recursively, but those with names
    beginning with "." are skipped unless -r. is used.

    Below is a list of file types and meta information formats currently
    supported by ExifTool (r = read, w = write, c = create):

      File Types
      ------------+-------------+-------------+-------------+------------
      3FR   r     | DVB   r/w   | KEY   r     | ORF   r/w   | RWL   r/w
      3G2   r/w   | DYLIB r     | LA    r     | OTF   r     | RWZ   r
      3GP   r/w   | EIP   r     | LFP   r     | PAC   r     | RM    r
      AA    r     | EPS   r/w   | LNK   r     | PAGES r     | SEQ   r
      AAX   r/w   | EPUB  r     | M2TS  r     | PBM   r/w   | SO    r
      ACR   r     | ERF   r/w   | M4A/V r/w   | PCD   r     | SR2   r/w
      AFM   r     | EXE   r     | MEF   r/w   | PDB   r     | SRF   r
      AI    r/w   | EXIF  r/w/c | MIE   r/w/c | PDF   r/w   | SRW   r/w
      AIFF  r     | EXR   r     | MIFF  r     | PEF   r/w   | SVG   r
      APE   r     | EXV   r/w/c | MKA   r     | PFA   r     | SWF   r
      ARW   r/w   | F4A/V r/w   | MKS   r     | PFB   r     | THM   r/w
      ASF   r     | FFF   r/w   | MKV   r     | PFM   r     | TIFF  r/w
      AVI   r     | FLA   r     | MNG   r/w   | PGF   r     | TORRENT r
      AZW   r     | FLAC  r     | MOBI  r     | PGM   r/w   | TTC   r
      BMP   r     | FLV   r     | MODD  r     | PLIST r     | TTF   r
      BTF   r     | FPF   r     | MOI   r     | PICT  r     | VCF   r
      CHM   r     | FPX   r     | MOS   r/w   | PMP   r     | VRD   r/w/c
      COS   r     | GIF   r/w   | MOV   r/w   | PNG   r/w   | VSD   r
      CR2   r/w   | GZ    r     | MP3   r     | PPM   r/w   | WAV   r
      CRW   r/w   | HDP   r/w   | MP4   r/w   | PPT   r     | WDP   r/w
      CS1   r/w   | HDR   r     | MPC   r     | PPTX  r     | WEBP  r
      DCM   r     | HTML  r     | MPG   r     | PS    r/w   | WEBM  r
      DCP   r/w   | ICC   r/w/c | MPO   r/w   | PSB   r/w   | WMA   r
      DCR   r     | ICS   r     | MQV   r/w   | PSD   r/w   | WMV   r
      DFONT r     | IDML  r     | MRW   r/w   | PSP   r     | WV    r
      DIVX  r     | IIQ   r/w   | MXF   r     | QTIF  r/w   | X3F   r/w
      DJVU  r     | IND   r/w   | NEF   r/w   | RA    r     | XCF   r
      DLL   r     | INX   r     | NRW   r/w   | RAF   r/w   | XLS   r
      DNG   r/w   | ITC   r     | NUMBERS r   | RAM   r     | XLSX  r
      DOC   r     | J2C   r     | ODP   r     | RAR   r     | XMP   r/w/c
      DOCX  r     | JNG   r/w   | ODS   r     | RAW   r/w   | ZIP   r
      DPX   r     | JP2   r/w   | ODT   r     | RIFF  r     |
      DR4   r/w/c | JPEG  r/w   | OFR   r     | RSRC  r     |
      DSS   r     | K25   r     | OGG   r     | RTF   r     |
      DV    r     | KDC   r     | OGV   r     | RW2   r/w   |

      Meta Information
      ----------------------+----------------------+---------------------
      EXIF           r/w/c  |  CIFF           r/w  |  Ricoh RMETA    r
      GPS            r/w/c  |  AFCP           r/w  |  Picture Info   r
      IPTC           r/w/c  |  Kodak Meta     r/w  |  Adobe APP14    r
      XMP            r/w/c  |  FotoStation    r/w  |  MPF            r
      MakerNotes     r/w/c  |  PhotoMechanic  r/w  |  Stim           r
      Photoshop IRB  r/w/c  |  JPEG 2000      r    |  DPX            r
      ICC Profile    r/w/c  |  DICOM          r    |  APE            r
      MIE            r/w/c  |  Flash          r    |  Vorbis         r
      JFIF           r/w/c  |  FlashPix       r    |  SPIFF          r
      Ducky APP12    r/w/c  |  QuickTime      r    |  DjVu           r
      PDF            r/w/c  |  Matroska       r    |  M2TS           r
      PNG            r/w/c  |  MXF            r    |  PE/COFF        r
      Canon VRD      r/w/c  |  PrintIM        r    |  AVCHD          r
      Nikon Capture  r/w/c  |  FLAC           r    |  ZIP            r
      GeoTIFF        r/w/c  |  ID3            r    |  (and more)

OPTIONS
    Case is not significant for any command-line option (including tag and
    group names), except for single-character options when the corresponding
    upper-case option exists. Many single-character options have equivalent
    long-name versions (shown in brackets), and some options have inverses
    which are invoked with a leading double-dash. Unrecognized options are
    interpreted as tag names (for this reason, multiple single-character
    options may NOT be combined into one argument). Contrary to standard
    practice, options may appear after source file names on the exiftool
    command line.

  Option Summary
    Tag operations

      -TAG or --TAG                    Extract or exclude specified tag
      -TAG[+-]=[VALUE]                 Write new value for tag
      -TAG[+-]&lt;=DATFILE                Write tag value from contents of file
      -TAG[+-]&lt;SRCTAG                  Copy tag value (see -tagsFromFile)

      -tagsFromFile SRCFILE            Copy tag values from file
      -x TAG      (-exclude)           Exclude specified tag

    Input-output text formatting

      -args       (-argFormat)         Format metadata as exiftool arguments
      -b          (-binary)            Output metadata in binary format
      -c FMT      (-coordFormat)       Set format for GPS coordinates
      -charset [[TYPE=]CHARSET]        Specify encoding for special characters
      -csv[=CSVFILE]                   Export/import tags in CSV format
      -d FMT      (-dateFormat)        Set format for date/time values
      -D          (-decimal)           Show tag ID numbers in decimal
      -E, -ex     (-escape(HTML|XML))  Escape values for HTML (-E) or XML (-ex)
      -f          (-forcePrint)        Force printing of all specified tags
      -g[NUM...]  (-groupHeadings)     Organize output by tag group
      -G[NUM...]  (-groupNames)        Print group name for each tag
      -h          (-htmlFormat)        Use HMTL formatting for output
      -H          (-hex)               Show tag ID number in hexadecimal
      -htmlDump[OFFSET]                Generate HTML-format binary dump
      -j[=JSONFILE] (-json)            Export/import tags in JSON format
      -l          (-long)              Use long 2-line output format
      -L          (-latin)             Use Windows Latin1 encoding
      -lang [LANG]                     Set current language
      -listItem INDEX                  Extract specific item from a list
      -n          (--printConv)        Read/write numerical tag values
      -p FMTFILE  (-printFormat)       Print output in specified format
      -php                             Export tags as a PHP Array
      -s[NUM]     (-short)             Short output format
      -S          (-veryShort)         Very short output format
      -sep STR    (-separator)         Set separator string for list items
      -sort                            Sort output alphabetically
      -struct                          Enable output of structured information
      -t          (-tab)               Output in tab-delimited list format
      -T          (-table)             Output in tabular format
      -v[NUM]     (-verbose)           Print verbose messages
      -w[+|!] EXT (-textOut)           Write (or overwrite!) output text files
      -W[+|!] FMT (-tagOut)            Write output text file for each tag
      -Wext EXT   (-tagOutExt)         Write only specified file types with -W
      -X          (-xmlFormat)         Use RDF/XML output format

    Processing control

      -a          (-duplicates)        Allow duplicate tags to be extracted
      -e          (--composite)        Do not calculate composite tags
      -ee         (-extractEmbedded)   Extract information from embedded files
      -ext EXT    (-extension)         Process files with specified extension
      -F[OFFSET]  (-fixBase)           Fix the base for maker notes offsets
      -fast[NUM]                       Increase speed for slow devices
      -fileOrder [-]TAG                Set file processing order
      -i DIR      (-ignore)            Ignore specified directory name
      -if EXPR                         Conditionally process files
      -m          (-ignoreMinorErrors) Ignore minor errors and warnings
      -o OUTFILE  (-out)               Set output file or directory name
      -overwrite_original              Overwrite original by renaming tmp file
      -overwrite_original_in_place     Overwrite original by copying tmp file
      -P          (-preserve)          Preserve date/time of original file
      -password PASSWD                 Password for processing protected files
      -progress                        Show file progress count
      -q          (-quiet)             Quiet processing
      -r[.]       (-recurse)           Recursively process subdirectories
      -scanForXMP                      Brute force XMP scan
      -u          (-unknown)           Extract unknown tags
      -U          (-unknown2)          Extract unknown binary tags too
      -wm MODE    (-writeMode)         Set mode for writing/creating tags
      -z          (-zip)               Read/write compressed information

    Other options

      -@ ARGFILE                       Read command-line arguments from file
      -k          (-pause)             Pause before terminating
      -list[w|f|wf|g[NUM]|d|x]         List various exiftool capabilities
      -ver                             Print exiftool version number

    Special features

      -geotag TRKFILE                  Geotag images from specified GPS log
      -globalTimeShift SHIFT           Shift all formatted date/time values
      -use MODULE                      Add features from plug-in module

    Utilities

      -delete_original[!]              Delete "_original" backups
      -restore_original                Restore from "_original" backups

    Advanced options

      -api OPT[=VAL]                   Set ExifTool API option
      -common_args                     Define common arguments
      -config CFGFILE                  Specify configuration file name
      -echo[NUM] TEXT                  Echo text to stdout or stderr
      -execute[NUM]                    Execute multiple commands on one line
      -srcfile FMT                     Set different source file name
      -stay_open FLAG                  Keep reading -@ argfile even after EOF
      -userParam PARAM[=VAL]           Set user parameter (API UserParam opt)

  Option Details
   Tag operations
    -*TAG*
         Extract information for the specified tag (eg. "-CreateDate").
         Multiple tags may be specified in a single command. A tag name is
         the handle by which a piece of information is referenced. See
         Image::ExifTool::TagNames for documentation on available tag names.
         A tag name may include leading group names separated by colons (eg.
         "-EXIF:CreateDate", or "-Doc1:XMP:Creator"), and each group name
         may be prefixed by a digit to specify family number (eg.
         "-1IPTC:City"). Use the -listg option to list available group names
         by family.

         A special tag name of "All" may be used to indicate all meta
         information. This is particularly useful when a group name is
         specified to extract all information in a group (but beware that
         unless the -a option is also used, some tags in the group may be
         suppressed by same-named tags in other groups). The wildcard
         characters "?" and "*" may be used in a tag name to match any
         single character and zero or more characters respectively. These
         may not be used in a group name, with the exception that a group
         name of "*" (or "All") may be used to extract all instances of a
         tag (as if -a was used). Note that arguments containing wildcards
         must be quoted on the command line of most systems to prevent shell
         globbing.

         A "#" may be appended to the tag name to disable the print
         conversion on a per-tag basis (see the -n option). This may also be
         used when writing or copying tags.

         If no tags are specified, all available information is extracted
         (as if "-All" had been specified).

         Note: Descriptions, not tag names, are shown by default when
         extracting information. Use the -s option to see the tag names
         instead.

    --*TAG*
         Exclude specified tag from extracted information. Same as the -x
         option. Group names and wildcards are permitted as described above
         for -TAG. Once excluded from the output, a tag may not be
         re-included by a subsequent option. May also be used following a
         -tagsFromFile option to exclude tags from being copied (when
         redirecting to another tag, it is the source tag that should be
         excluded), or to exclude groups from being deleted when deleting
         all information (eg. "-all= --exif:all" deletes all but EXIF
         information). But note that this will not exclude individual tags
         from a group delete (unless a family 2 group is specified, see note
         4 below). Instead, individual tags may be recovered using the
         -tagsFromFile option (eg. "-all= -tagsfromfile @ -artist").

    -*TAG*[+-]=[*VALUE*]
         Write a new value for the specified tag (eg. "-comment=wow"), or
         delete the tag if no *VALUE* is given (eg. "-comment="). "+=" and
         "-=" are used to add or remove existing entries from a list, or to
         shift date/time values (see Image::ExifTool::Shift.pl for details).
         "+=" may also be used to increment numerical values, and "-=" may
         be used to conditionally delete or replace a tag (see "WRITING
         EXAMPLES" for examples).

         *TAG* may contain one or more leading family 0, 1 or 2 group names,
         prefixed by optional family numbers, and separated colons. If no
         group name is specified, the tag is created in the preferred group,
         and updated in any other location where a same-named tag already
         exists. The preferred group is the first group in the following
         list where *TAG* is valid: 1) EXIF, 2) IPTC, 3) XMP.

         The wildcards "*" and "?" may be used in tag names to assign the
         same value to multiple tags. When specified with wildcards,
         "unsafe" tags are not written. A tag name of "All" is eqivalent to
         "*" (except that it doesn't require quoting, while arguments with
         wildcards do on systems with shell globbing), and is often used
         when deleting all metadata (ie. "-All=") or an entire group (eg.
         "-GROUP:All=", see note 4 below). Note that not all groups are
         deletable, and that the JPEG APP14 "Adobe" group is not removed by
         default with "-All=" because it may affect the appearance of the
         image. However, this will remove color space information, so the
         colors may be affected (but this may be avoided by copying back the
         tags defined by the ColorSpaceTags shortcut). Use the -listd option
         for a complete list of deletable groups, and see note 5 below
         regarding the "APP" groups. Also, within an image some groups may
         be contained within others, and these groups are removed if the
         containing group is deleted:

           JPEG Image:
           - Deleting EXIF or IFD0 also deletes ExifIFD, GlobParamIFD,
             GPS, IFD1, InteropIFD, MakerNotes, PrintIM and SubIFD.
           - Deleting ExifIFD also deletes InteropIFD and MakerNotes.
           - Deleting Photoshop also deletes IPTC.

           TIFF Image:
           - Deleting EXIF only removes ExifIFD which also deletes
             InteropIFD and MakerNotes.

         Notes:

         1) Many tag values may be assigned in a single command. If two
         assignments affect the same tag, the latter takes precedence
         (except for list-type tags, for which both values are written).

         2) In general, MakerNotes tags are considered "Permanent", and may
         be edited but not created or deleted individually. This avoids many
         potential problems, including the inevitable compatibility problems
         with OEM software which may be very inflexible about the
         information it expects to find in the maker notes.

         3) Changes to PDF files are reversible because the original
         information is never actually deleted from the file. So ExifTool
         alone may not be used to securely edit metadata in PDF files.

         4) Specifying "-GROUP:all=" deletes the entire group as a block
         only if a single family 0 or 1 group is specified. Otherwise all
         deletable tags in the specified group(s) are removed individually,
         and in this case is it possible to exclude individual tags from a
         mass delete. For example, "-time:all --Exif:Time:All" removes all
         deletable Time tags except those in the EXIF. This difference also
         applies if family 2 is specified when deleting all groups. For
         example, "-2all:all=" deletes tags individually, while "-all:all="
         deletes entire blocks.

         5) The "APP" group names ("APP0" through "APP15") are used to
         delete JPEG application segments which are not associated with
         another deletable group. For example, specifying "-APP14:All=" will
         NOT delete the APP14 "Adobe" segment because this is accomplished
         with "-Adobe:All".

         Special feature: Integer values may be specified in hexadecimal
         with a leading "0x", and simple rational values may be specified as
         fractions.

    -*TAG*&lt;=*DATFILE* or -*TAG*&lt;=*FMT*
         Set the value of a tag from the contents of file *DATFILE*. The
         file name may also be given by a *FMT* string where %d, %f and %e
         represent the directory, file name and extension of the original
         *FILE* (see the -w option for more details). Note that quotes are
         required around this argument to prevent shell redirection since it
         contains a "&lt;" symbol. If *DATFILE*/*FMT* is not provided, the
         effect is the same as "-TAG=", and the tag is simply deleted. "+&lt;="
         or "-&lt;=" may also be used to add or delete specific list entries,
         or to shift date/time values.

    -tagsFromFile *SRCFILE* or *FMT*
         Copy tag values from *SRCFILE* to *FILE*. Tag names on the command
         line after this option specify the tags to be copied, or excluded
         from the copy. Wildcards are permitted in these tag names. If no
         tags are specified, then all possible tags (see note 1 below) from
         the source file are copied to same-named tags in the preferred
         location of the output file (the same as specifying "-all"). More
         than one -tagsFromFile option may be used to copy tags from
         multiple files.

         By default, this option will update any existing and writable
         same-named tags in the output *FILE*, but will create new tags only
         in their preferred groups. This allows some information to be
         automatically transferred to the appropriate group when copying
         between images of different formats. However, if a group name is
         specified for a tag then the information is written only to this
         group (unless redirected to another group, see below). If "All" is
         used as a group name, then the specified tag(s) are written to the
         same family 1 group they had in the source file (ie. the same
         specific location, like ExifIFD or XMP-dc). For example, the common
         operation of copying all writable tags to the same specific
         locations in the output *FILE* is achieved by adding "-all:all". A
         different family may be specified by adding a leading family number
         to the group name (eg. "-0all:all" preserves the same general
         location, like EXIF or XMP).

         *SRCFILE* may be the same as *FILE* to move information around
         within a single file. In this case, "@" may be used to represent
         the source file (ie. "-tagsFromFile @"), permitting this feature to
         be used for batch processing multiple files. Specified tags are
         then copied from each file in turn as it is rewritten. For advanced
         batch use, the source file name may also be specified using a *FMT*
         string in which %d, %f and %e represent the directory, file name
         and extension of *FILE*. See -w option for *FMT* string examples.

         A powerful redirection feature allows a destination tag to be
         specified for each copied tag. With this feature, information may
         be written to a tag with a different name or group. This is done
         using "-*SRCTAG*&lt;*DSTTAG*" or "-*DSTTAG*&gt;*SRCTAG*" on the command
         line after -tagsFromFile, and causes the value of *SRCTAG* to be
         copied from *SRCFILE* and written to *DSTTAG* in *FILE*. Note that
         this argument must be quoted to prevent shell redirection, and
         there is no "=" sign as when assigning new values. Source and/or
         destination tags may be prefixed by a group name and/or suffixed by
         "#". Wildcards are allowed in both the source and destination tag
         names. A destination group and/or tag name of "All" or "*" writes
         to the same family 1 group and/or tag name as the source. If no
         destination group is specified, the information is written to the
         preferred group. Whitespace around the "&gt;" or "&lt;" is ignored. As a
         convenience, "-tagsFromFile @" is assumed for any redirected tags
         which are specified without a prior -tagsFromFile option. Copied
         tags may also be added or deleted from a list with arguments of the
         form "-*SRCTAG*+&lt;*DSTTAG*" or "-*SRCTAG*-&lt;*DSTTAG*".

         An extension of the redirection feature allows strings involving
         tag names to be used on the right hand side of the "&lt;" symbol with
         the syntax "-*DSTTAG*&lt;*STR*", where tag names in *STR* are prefixed
         with a "$" symbol. See the -p option for more details about this
         syntax. Strings starting with a "=" sign must insert a single space
         after the "&lt;" to avoid confusion with the "&lt;=" operator which sets
         the tag value from the contents of a file. A single space at the
         start of the string is removed if it exists, but all other
         whitespace in the string is preserved.  See note 8 below about
         using shortcuts or wildcards with the redirection feature.

         See "COPYING EXAMPLES" for examples using -tagsFromFile.

         Notes:

         1) Some tags (generally tags which may affect the appearance of the
         image) are considered "unsafe" to write, and are only copied if
         specified explicitly (ie. no wildcards). See the tag name
         documentation for more details about "unsafe" tags.

         2) Be aware of the difference between excluding a tag from being
         copied (--*TAG*), and deleting a tag (-*TAG*=). Excluding a tag
         prevents it from being copied to the destination image, but
         deleting will remove a pre-existing tag from the image.

         3) The maker note information is copied as a block, so it isn't
         affected like other information by subsequent tag assignments on
         the command line. Also, since the PreviewImage referenced from the
         maker notes may be rather large, it is not copied, and must be
         transferred separately if desired.

         4) The order of operations is to copy all specified tags at the
         point of the -tagsFromFile option in the command line. Any tag
         assignment to the right of the -tagsFromFile option is made after
         all tags are copied. For example, new tag values are set in the
         order One, Two, Three then Four with this command:

             exiftool -One=1 -tagsFromFile s.jpg -Two -Four=4 -Three d.jpg

         This is significant in the case where an overlap exists between the
         copied and assigned tags because later operations may override
         earlier ones.

         5) The normal behaviour of copied tags differs subtly from that of
         assigned tags for list-type tags. When copying to a list, each
         copied tag overrides any previous operations on the list. While
         this avoids duplicate list items when copying groups of tags from a
         file containing redundant information, it also prevents values of
         different tags from being copied into the same list when this is
         the intent. So a -addTagsFromFile option is provided which allows
         copying of multiple tags into the same list. eg)

             exiftool -addtagsfromfile @ "-subject&lt;make" "-subject&lt;model" ...

         Other than this difference, the -tagsFromFile and -addTagsFromFile
         options are equivalent.

         6) The -a option (allow duplicate tags) is always in effect when
         copying tags from *SRCFILE*.

         7) Structured tags are copied by default when copying tags. See the
         -struct option for details.

         8) With the redirection feature, copying a tag directly (ie.
         "-*DSTTAG*&lt;*SRCTAG*") is not the same as interpolating its value
         inside a string (ie. "-*DSTTAG*&lt;$*SRCTAG*") for shortcut tags or
         tag names containing wildcards. When copying directly, the values
         of each matching source tag are copied individually to the
         destination tag (as if multiple redirection arguments were used).
         However, when interpolated inside a string, the values of shortcut
         tags are concatenated, and wildcards are not allowed.

    -x *TAG* (-exclude)
         Exclude the specified tag. There may be multiple -x options. This
         has the same effect as --*TAG* on the command line. See the --*TAG*
         documentation above for a complete description.

   Input-output text formatting
    Note that trailing spaces are removed from extracted values for most
    output text formats. The exceptions are "-b", "-csv", "-j" and "-X".

    -args (-argFormat)
         Output information in the form of exiftool arguments, suitable for
         use with the -@ option when writing. May be combined with the -G
         option to include group names. This feature may be used to
         effectively copy tags between images, but allows the metadata to be
         altered by editing the intermediate file ("out.args" in this
         example):

             exiftool -args -G1 --filename --directory src.jpg &gt; out.args
             exiftool -@ out.args dst.jpg

         Note: Be careful when copying information with this technique since
         it is easy to write tags which are normally considered "unsafe".
         For instance, the FileName and Directory tags are excluded in the
         example above to avoid renaming and moving the destination file.
         Also note that the second command above will produce warning
         messages for any tags which are not writable.

         As well, the -sep option should be used when reading back to
         maintain separate list items, and the -struct option may be used
         when extracting to preserve structured XMP information.

    -b (-binary)
         Output requested metadata in binary format without tag names or
         descriptions. This option is mainly used for extracting embedded
         images or other binary data, but it may also be useful for some
         text strings since control characters (such as newlines) are not
         replaced by '.' as they are in the default output. List items are
         separated by a newline when extracted with the -b option. May be
         combined with "-j", "-php" or "-X" to extract binary data in JSON,
         PHP or XML format.

    -c *FMT* (-coordFormat)
         Set the print format for GPS coordinates. *FMT* uses the same
         syntax as the "printf" format string. The specifiers correspond to
         degrees, minutes and seconds in that order, but minutes and seconds
         are optional. For example, the following table gives the output for
         the same coordinate using various formats:

                     FMT                  Output
             -------------------    ------------------
             "%d deg %d' %.2f"\"    54 deg 59' 22.80"  (default for reading)
             "%d %d %.8f"           54 59 22.80000000  (default for copying)
             "%d deg %.4f min"      54 deg 59.3800 min
             "%.6f degrees"         54.989667 degrees

         Notes:

         1) To avoid loss of precision, the default coordinate format is
         different when copying tags using the -tagsFromFile option.

         2) If the hemisphere is known, a reference direction (N, S, E or W)
         is appended to each printed coordinate, but adding a "+" to the
         format specifier (eg. "%+.6f") prints a signed coordinate instead.

         3) This print formatting may be disabled with the -n option to
         extract coordinates as signed decimal degrees.

    -charset [[*TYPE*=]*CHARSET*]
         If *TYPE* is "ExifTool" or not specified, this option sets the
         ExifTool character encoding for output tag values when reading and
         input values when writing. The default ExifTool encoding is "UTF8".
         If no *CHARSET* is given, a list of available character sets is
         returned. Valid *CHARSET* values are:

             CHARSET     Alias(es)        Description
             ----------  ---------------  ----------------------------------
             UTF8        cp65001, UTF-8   UTF-8 characters (default)
             Latin       cp1252, Latin1   Windows Latin1 (West European)
             Latin2      cp1250           Windows Latin2 (Central European)
             Cyrillic    cp1251, Russian  Windows Cyrillic
             Greek       cp1253           Windows Greek
             Turkish     cp1254           Windows Turkish
             Hebrew      cp1255           Windows Hebrew
             Arabic      cp1256           Windows Arabic
             Baltic      cp1257           Windows Baltic
             Vietnam     cp1258           Windows Vietnamese
             Thai        cp874            Windows Thai
             MacRoman    cp10000, Roman   Macintosh Roman
             MacLatin2   cp10029          Macintosh Latin2 (Central Europe)
             MacCyrillic cp10007          Macintosh Cyrillic
             MacGreek    cp10006          Macintosh Greek
             MacTurkish  cp10081          Macintosh Turkish
             MacRomanian cp10010          Macintosh Romanian
             MacIceland  cp10079          Macintosh Icelandic
             MacCroatian cp10082          Macintosh Croatian

         *TYPE* may be "FileName" to specify the encoding of file names on
         the command line (ie. *FILE* arguments). In Windows, this triggers
         use of wide-character i/o routines, thus providing support for
         Unicode file names. See the "WINDOWS UNICODE FILE NAMES" section
         below for details.

         Other values of *TYPE* listed below are used to specify the
         internal encoding of various meta information formats.

             TYPE       Description                                  Default
             ---------  -------------------------------------------  -------
             EXIF       Internal encoding of EXIF "ASCII" strings    (none)
             ID3        Internal encoding of ID3v1 information       Latin
             IPTC       Internal IPTC encoding to assume when        Latin
                         IPTC:CodedCharacterSet is not defined
             Photoshop  Internal encoding of Photoshop IRB strings   Latin
             QuickTime  Internal encoding of QuickTime strings       MacRoman

         See &lt;http://owl.phy.queensu.ca/~phil/exiftool/faq.html#Q10&gt; for
         more information about coded character sets.

    -csv[=*CSVFILE*]
         Export information in CSV format, or import information if
         *CSVFILE* is specified. When importing, the CSV file must be in
         exactly the same format as the exported file. The first row of the
         *CSVFILE* must be the ExifTool tag names (with optional group
         names) for each column of the file, and values must be separated by
         commas. A special "SourceFile" column specifies the files
         associated with each row of information (and a SourceFile of "*"
         may be used to define default tags to be imported for all files).
         The following examples demonstrate basic use of this option:

             # generate CSV file with common tags from all images in a directory
             exiftool -common -csv dir &gt; out.csv

             # update metadata for all images in a directory from CSV file
             exiftool -csv=a.csv dir

         Empty values are ignored when importing. Also, FileName and
         Directory columns are ignored if they exist (ie. ExifTool will not
         attempt to write these tags with a CSV import). To force a tag to
         be deleted, use the -f option and set the value to "-" in the CSV
         file (or to the MissingTagValue if this API option was used).
         Multiple databases may be imported in a single command.

         When exporting a CSV file, the -g or -G option to add group names
         to the tag headings. If the -a option is used to allow duplicate
         tag names, the duplicate tags are only included in the CSV output
         if the column headings are unique. Adding the -G4 option ensures a
         unique column heading for each tag. When exporting specific tags,
         the CSV columns are arranged in the same order as the specified
         tags provided the column headings exactly match the specified tag
         names, otherwise the columns are sorted in alphabetical order.

         When importing from a CSV file, only files specified on the command
         line are processed. Any extra entries in the CSV file are ignored.

         List-type tags are stored as simple strings in a CSV file, but the
         -sep option may be used to split them back into separate items when
         importing.

         Special feature: -csv+=*CSVFILE* may be used to add items to
         existing lists. This affects only list-type tags. Also applies to
         the -j option.

         Note that this option is fundamentally different than all other
         output format options because it requires information from all
         input files to be buffered in memory before the output is written.
         This may result in excessive memory usage when processing a very
         large number of files with a single command. Also, it makes this
         option incompatible with the -w option.

    -d *FMT* (-dateFormat)
         Set the format for date/time tag values. The specifics of the *FMT*
         syntax are system dependent -- consult the "strftime" man page on
         your system for details. The default format is equivalent to
         "%Y:%m:%d %H:%M:%S". This option has no effect on date-only or
         time-only tags and ignores timezone information if present. Only
         one -d option may be used per command. The inverse operation (ie.
         un-formatting a date/time value) is currently not applied when
         writing a date/time tag.

    -D (-decimal)
         Show tag ID number in decimal when extracting information.

    -E, -ex (-escapeHTML, -escapeXML)
         Escape characters in output values for HTML (-E) or XML (-ex). For
         HTML, all characters with Unicode code points above U+007F are
         escaped as well as the following 5 characters: & (&amp;) ' (&#39;)
         " (&quot;) &gt; (&gt;) and &lt; (&lt;). For XML, only these 5 characters
         are escaped. The -E option is implied with -h, and -ex is implied
         with -X. The inverse conversion is applied when writing tags.

    -f (-forcePrint)
         Force printing of tags even if their values are not found. This
         option only applies when specific tags are requested on the command
         line (ie. not with wildcards or by "-all"). With this option, a
         dash ("-") is printed for the value of any missing tag, but the
         dash may be changed via the API MissingTagValue option. May also be
         used to add a 'flags' attribute to the -listx output, or to allow
         tags to be deleted when writing with the -csv=*CSVFILE* feature.

    -g[*NUM*][:*NUM*...] (-groupHeadings)
         Organize output by tag group. *NUM* specifies a group family
         number, and may be 0 (general location), 1 (specific location), 2
         (category), 3 (document number) or 4 (instance number). Multiple
         families may be specified by separating them with colons. By
         default the resulting group name is simplified by removing any
         leading "Main:" and collapsing adjacent identical group names, but
         this can be avoided by placing a colon before the first family
         number (eg. -g:3:1). If *NUM* is not specified, -g0 is assumed. Use
         the -listg option to list group names for a specified family.

    -G[*NUM*][:*NUM*...] (-groupNames)
         Same as -g but print group name for each tag.

    -h (-htmlFormat)
         Use HTML table formatting for output. Implies the -E option. The
         formatting options -D, -H, -g, -G, -l and -s may be used in
         combination with -h to influence the HTML format.

    -H (-hex)
         Show tag ID number in hexadecimal when extracting information.

    -htmlDump[*OFFSET*]
         Generate a dynamic web page containing a hex dump of the EXIF
         information. This can be a very powerful tool for low-level
         analysis of EXIF information. The -htmlDump option is also invoked
         if the -v and -h options are used together. The verbose level
         controls the maximum length of the blocks dumped. An *OFFSET* may
         be given to specify the base for displayed offsets. If not
         provided, the EXIF/TIFF base offset is used. Use -htmlDump0 for
         absolute offsets. Currently only EXIF/TIFF and JPEG information is
         dumped, but the -u option can be used to give a raw hex dump of
         other file formats.

    -j[=*JSONFILE*] (-json)
         Use JSON (JavaScript Object Notation) formatting for console
         output, or import JSON file if *JSONFILE* is specified. This option
         may be combined with -g to organize the output into objects by
         group, or -G to add group names to each tag. List-type tags with
         multiple items are output as JSON arrays unless -sep is used. By
         default XMP structures are flattened into individual tags in the
         JSON output, but the original structure may be preserved with the
         -struct option (this also causes all list-type XMP tags to be
         output as JSON arrays, otherwise single-item lists are output as
         simple strings). The -a option is implied if the -g or -G options
         are used, otherwise it is ignored and duplicate tags are
         suppressed. Adding the -D or -H option changes tag values to JSON
         objects with "val" and "id" fields, and adding -l adds a "desc"
         field, and a "num" field if the numerical value is different from
         the converted "val". The -b option may be added to output binary
         data, encoded in base64 if necessary (indicated by "base64:" as the
         first 7 bytes of the value). The JSON output is UTF-8 regardless of
         any -L or -charset option setting, but the UTF-8 validation is
         disabled if a character set other than UTF-8 is specified.

         If *JSONFILE* is specified, the file is imported and the tag
         definitions from the file are used to set tag values on a per-file
         basis. The special "SourceFile" entry in each JSON object
         associates the information with a specific target file. An object
         with a missing SourceFile or a SourceFile of "*" defines default
         tags for all target files. The imported JSON file must have the
         same format as the exported JSON files with the exception that the
         -g option is not compatible with the import file format (use -G
         instead). Additionally, tag names in the input JSON file may be
         suffixed with a "#" to disable print conversion.

         Unlike CSV import, empty values are not ignored, and will cause an
         empty value to be written if supported by the specific metadata
         type. Tags are deleted by using the -f option and setting the tag
         value to "-" (or to the MissingTagValue setting if this API option
         was used). Importing with -j+=*JSONFILE* causes new values to be
         added to existing lists.

    -l (-long)
         Use long 2-line Canon-style output format. Adds a description and
         unconverted value (if it is different from the converted value) to
         the XML, JSON or PHP output when -X, -j or -php is used. May also
         be combined with -listf, -listr or -listwf to add descriptions of
         the file types.

    -L (-latin)
         Use Windows Latin1 encoding (cp1252) for output tag values instead
         of the default UTF-8. When writing, -L specifies that input text
         values are Latin1 instead of UTF-8. Equivalent to "-charset latin".

    -lang [*LANG*]
         Set current language for tag descriptions and converted values.
         *LANG* is "de", "fr", "ja", etc. Use -lang with no other arguments
         to get a list of available languages. The default language is "en"
         if -lang is not specified. Note that tag/group names are always
         English, independent of the -lang setting, and translation of
         warning/error messages has not yet been implemented. May also be
         combined with -listx to output descriptions in one language only.

         By default, ExifTool uses UTF-8 encoding for special characters,
         but the the -L or -charset option may be used to invoke other
         encodings.

         Currently, the language support is not complete, but users are
         welcome to help improve this by submitting their own translations.
         To submit a set of translations, first use the -listx option and
         redirect the output to a file to generate an XML tag database, then
         add entries for other languages, zip this file, and email it to
         phil at owl.phy.queensu.ca for inclusion in ExifTool.

    -listItem *INDEX*
         For list-type tags, this causes only the item with the specified
         index to be extracted. *INDEX* is 0 for the first item in the list.
         Negative indices may also be used to reference items from the end
         of the list. Has no effect on single-valued tags. Also applies to
         tag values when copying, and in -if conditions.

    -n (--printConv)
         Read and write values as numbers instead of words. By default,
         extracted values are converted to a more human-readable format for
         printing, but the -n option disables this print conversion for all
         tags. For example:

             &gt; exiftool -Orientation -S a.jpg
             Orientation: Rotate 90 CW
             &gt; exiftool -Orientation -S -n a.jpg
             Orientation: 6

         The print conversion may also be disabled on a per-tag basis by
         suffixing the tag name with a "#" character:

             &gt; exiftool -Orientation# -Orientation -S a.jpg
             Orientation: 6
             Orientation: Rotate 90 CW

         These techniques may also be used to disable the inverse print
         conversion when writing. For example, the following commands all
         have the same effect:

             &gt; exiftool -Orientation='Rotate 90 CW' a.jpg
             &gt; exiftool -Orientation=6 -n a.jpg
             &gt; exiftool -Orientation#=6 a.jpg

    -p *FMTFILE* or *STR* (-printFormat)
         Print output in the format specified by the given file or string
         (and ignore other format options). Tag names in the format file or
         string begin with a "$" symbol and may contain a leading group
         names and/or a trailing "#". Case is not significant. Braces "{}"
         may be used around the tag name to separate it from subsequent
         text. Use $$ to represent a "$" symbol, and $/ for a newline.
         Multiple -p options may be used, each contributing a line of text
         to the output. Lines beginning with "#[HEAD]" and "#[TAIL]" are
         output only for the first and last processed files respectively.
         Lines beginning with "#[BODY]" and lines not beginning with "#" are
         output for each processed file. Other lines beginning with "#" are
         ignored. For example, this format file:

             # this is a comment line
             #[HEAD]-- Generated by ExifTool $exifToolVersion --
             File: $FileName - $DateTimeOriginal
             (f/$Aperture, ${ShutterSpeed}s, ISO $EXIF:ISO)
             #[TAIL]-- end --

         with this command:

             exiftool -p test.fmt a.jpg b.jpg

         produces output like this:

             -- Generated by ExifTool 10.11 --
             File: a.jpg - 2003:10:31 15:44:19
             (f/5.6, 1/60s, ISO 100)
             File: b.jpg - 2006:05:23 11:57:38
             (f/8.0, 1/13s, ISO 100)
             -- end --

         When -ee (-extractEmbedded) is combined with -p, embedded documents
         are effectively processed as separate input files.

         If a specified tag does not exist, a minor warning is issued and
         the line with the missing tag is not printed. However, the -f
         option may be used to set the value of missing tags to '-' (but
         this may be configured via the MissingTagValue API option), or the
         -m option may be used to ignore minor warnings and leave the
         missing values empty.

         An advanced formatting feature allows an arbitrary Perl expression
         to be applied to the value of any tag by placing it inside the
         braces after a semicolon following the tag name. The expression has
         access to the value of this tag through the default input variable
         ($_), and the full API through the current ExifTool object ($self).
         It may contain any valid Perl code, including translation ("tr///")
         and substitution ("s///") operations, but note that braces within
         the expression must be balanced. The example below prints the
         camera Make with spaces translated to underlines, and multiple
         consecutive underlines replaced by a single underline:

             exiftool -p "${make;tr/ /_/;s/__+/_/g}" image.jpg

         A default expression of "tr(/\\?*:|"&lt;&gt;\0)()d" is assumed if the
         expression is empty. This removes the characters / \ ? * : | &lt; &gt;
         and null from the printed value. (These characters are illegal in
         Windows file names, so this feature is useful if tag values are
         used in file names.)

    -php Format output as a PHP Array. The -g, -G, -D, -H, -l, -sep and
         -struct options combine with -php, and duplicate tags are handled
         in the same way as with the -json option. As well, the -b option
         may be added to output binary data. Here is a simple example
         showing how this could be used in a PHP script:

             &lt;?php
             eval('$array=' . `exiftool -php -q image.jpg`);
             print_r($array);
             ?&gt;

    -s[*NUM*] (-short)
         Short output format. Prints tag names instead of descriptions. Add
         *NUM* or up to 3 -s options for even shorter formats:

             -s1 or -s        - print tag names instead of descriptions
             -s2 or -s -s     - no extra spaces to column-align values
             -s3 or -s -s -s  - print values only (no tag names)

         Also effective when combined with -t, -h, -X or -listx options.

    -S (-veryShort)
         Very short format. The same as -s2 or two -s options. Tag names are
         printed instead of descriptions, and no extra spaces are added to
         column-align values.

    -sep *STR* (-separator)
         Specify separator string for items in list-type tags. When reading,
         the default is to join list items with ", ". When writing, this
         option causes values assigned to list-type tags to be split into
         individual items at each substring matching *STR* (otherwise they
         are not split by default). Space characters in *STR* match zero or
         more whitespace characters in the value.

         Note that an empty separator ("") is allowed, and will join items
         with no separator when reading, or split the value into individual
         characters when writing.

    -sort, --sort
         Sort output by tag description, or by tag name if the -s option is
         used. When sorting by description, the sort order will depend on
         the -lang option setting. Without the -sort option, tags appear in
         the order they were specified on the command line, or if not
         specified, the order they were extracted from the file. By default,
         tags are organized by groups when combined with the -g or -G
         option, but this grouping may be disabled with --sort.

    -struct, --struct
         Output structured XMP information instead of flattening to
         individual tags. This option works well when combined with the XML
         (-X) and JSON (-j) output formats. For other output formats, the
         structures are serialized into the same format as when writing
         structured information (see
         &lt;http://owl.phy.queensu.ca/~phil/exiftool/struct.html&gt; for
         details). When copying, structured tags are copied by default
         unless --struct is used to disable this feature (although flattened
         tags may still be copied by specifying them individually unless
         -struct is used). These options have no effect when assigning new
         values since both flattened and structured tags may always be used
         when writing.

    -t (-tab)
         Output a tab-delimited list of description/values (useful for
         database import). May be combined with -s to print tag names
         instead of descriptions, or -S to print tag values only,
         tab-delimited on a single line. The -t option may also be used to
         add tag table information to the -X option output.

    -T (-table)
         Output tag values in table form. Equivalent to -t -S -q -f.

    -v[*NUM*] (-verbose)
         Print verbose messages. *NUM* specifies the level of verbosity in
         the range 0-5, with higher numbers being more verbose. If *NUM* is
         not given, then each -v option increases the level of verbosity by
         1. With any level greater than 0, most other options are ignored
         and normal console output is suppressed unless specific tags are
         extracted. Using -v0 causes the console output buffer to be flushed
         after each line (which may be useful to avoid delays when piping
         exiftool output), and prints the name of each processed file when
         writing. Also see the -progress option.

    -w[+|!] *EXT* or *FMT* (-textOut)
         Write console output to files with names ending in *EXT*, one for
         each source file. The output file name is obtained by replacing the
         source file extension (including the '.') with the specified
         extension (and a '.' is added to the start of *EXT* if it doesn't
         already contain one). Alternatively, a *FMT* string may be used to
         give more control over the output file name and directory. In the
         format string, %d, %f and %e represent the directory, filename and
         extension of the source file, and %c represents a copy number which
         is automatically incremented if the file already exists. %d
         includes the trailing '/' if necessary, but %e does not include the
         leading '.'. For example:

             -w %d%f.txt       # same effect as "-w txt"
             -w dir/%f_%e.out  # write files to "dir" as "FILE_EXT.out"
             -w dir2/%d%f.txt  # write to "dir2", keeping dir structure
             -w a%c.txt        # write to "a.txt" or "a1.txt" or "a2.txt"...

         Existing files will not be overwritten unless an exclamation point
         is added to the option name (ie. -w! or -textOut!), or a plus sign
         to append to the existing file (ie. -w+ or -textOut+). Both may be
         used (ie. -w+! or -textOut+!) to overwrite output files that didn't
         exist before the command was run, and append the output from
         multiple source files. For example, to write one output file for
         all source files in each directory:

             exiftool -filename -createdate -T -w+! %d/out.txt -r DIR

         Notes:

         1) In a Windows BAT file the "%" character is represented by "%%",
         so an argument like "%d%f.txt" is written as "%%d%%f.txt".

         2) If the argument for -w does not contain a format code (%d, %f or
         %e), then it is interpreted as a file extension. Therefore it is
         not possible to specify a simple filename as an argument, so
         creating a single output file from multiple source files is
         typically done by shell redirection, ie)

             exiftool FILE1 FILE2 ... &gt; out.txt

         But if necessary, an empty format code may be used to force the
         argument to be interpreted as a format string, and the same result
         may be obtained without the use of shell redirection:

             exiftool -w+! %0fout.txt FILE1 FILE2 ...

         Advanced features:

         A substring of the original file name, directory or extension may
         be taken by specifying a field width immediately following the '%'
         character. If the width is negative, the substring is taken from
         the end. The substring position (characters to ignore at the start
         or end of the string) may be given by a second optional value after
         a decimal point. For example:

             Input File Name     Format Specifier    Output File Name
             ----------------    ----------------    ----------------
             Picture-123.jpg     %7f.txt             Picture.txt
             Picture-123.jpg     %-.4f.out           Picture.out
             Picture-123.jpg     %7f.%-3f            Picture.123
             Picture-123a.jpg    Meta%-3.1f.txt      Meta123.txt

         For %d, the field width/position specifiers may be applied to the
         directory levels instead of substring position by using a colon
         instead of a decimal point in the format specifier. For example:

             Source Dir     Format   Result       Notes
             ------------   ------   ----------   ------------------
             pics/2012/02   %2:d     pics/2012/   take top 2 levels
             pics/2012/02   %-:1d    pics/2012/   up one directory level
             pics/2012/02   %:1d     2012/02/     ignore top level
             pics/2012/02   %1:1d    2012/        take 1 level after top
             /Users/phil    %:2d     phil/        ignore top 2 levels

         (Note that the root directory counts as one level when an absolute
         path is used as in the last example above.)

         For %c, these modifiers have a different effects. If a field width
         is given, the copy number is padded with zeros to the specified
         width. A leading '-' adds a dash before the copy number, and a '+'
         adds an underline. By default, the copy number is omitted from the
         first file of a given name, but this can be changed by adding a
         decimal point to the modifier. For example:

             -w A%-cZ.txt      # AZ.txt, A-1Z.txt, A-2Z.txt ...
             -w B%5c.txt       # B.txt, B00001.txt, B00002.txt ...
             -w C%.c.txt       # C0.txt, C1.txt, C2.txt ...
             -w D%-.c.txt      # D-0.txt, D-1.txt, D-2.txt ...
             -w E%-.4c.txt     # E-0000.txt, E-0001.txt, E-0002.txt ...
             -w F%-.4nc.txt    # F-0001.txt, F-0002.txt, F-0003.txt ...
             -w G%+c.txt       # G.txt, G_1.txt G_2.txt ...
             -w H%-lc.txt      # H.txt, H-b.txt, H-c.txt ...
             -w I.%.3uc.txt    # I.AAA.txt, I.AAB.txt, I.AAC.txt ...

         A special feature allows the copy number to be incremented for each
         processed file by using %C (upper case) instead of %c. This allows
         a sequential number to be added to output file names, even if the
         names are different. For %C, a copy number of zero is not omitted
         as it is with %c. The number before the decimal place gives the
         starting index, the number after the decimal place gives the field
         width. The following examples show the output filenames when used
         with the command "exiftool rose.jpg star.jpg jet.jpg ...":

             -w %C%f.txt       # 0rose.txt, 1star.txt, 2jet.txt
             -w %f-%10C.txt    # rose-10.txt, star-11.txt, jet-12.txt
             -w %.3C-%f.txt    # 000-rose.txt, 001-star.txt, 002-jet.txt
             -w %57.4C%f.txt   # 0057rose.txt, 0058star.txt, 0059jet.txt

         All format codes may be modified by 'l' or 'u' to specify lower or
         upper case respectively (ie. %le for a lower case file extension).
         When used to modify %c or %C, the numbers are changed to an
         alphabetical base (see example H above). Also, %c may be modified
         by 'n' to count using natural numbers starting from 1, instead of 0
         (see example F above).

         This same *FMT* syntax is used with the -o and -tagsFromFile
         options, although %c is only valid for output file names.

    -W[!|+] *FMT* (-tagOut)
         This enhanced version of the -w option allows a separate output
         file to be created for each extracted tag. The differences between
         -W and -w are as follows:

         1) With -W, a new output file is created for each extracted tag.

         2) -W supports three additional format codes: %t, %g and %s
         represent the tag name, group name, and suggested extension for the
         output file (based on the format of the data). The %g code may be
         followed by a single digit to specify the group family number (eg.
         %g1), otherwise family 0 is assumed. The substring
         width/position/case specifiers may be used with these format codes
         in exactly the same way as with %f and %e.

         3) The argument for -W is interpreted as a file name if it contains
         no format codes. (For -w, this would be a file extension.) This
         change allows a simple file name to be specified, which, when
         combined with the append feature, provides a method to write
         metadata from multiple source files to a single output file without
         the need for shell redirection.

         4) Adding the -v option to -W generates a list of the tags and
         output file names instead of giving a verbose dump of the entire
         file. (Unless appending all output to one file for each source file
         by using -W+ with an output file *FMT* that does not contain %t, $g
         or %s.)

         5) Individual list items are stored in separate files when -W is
         combined with -b, but note that for separate files to be created %c
         must be used in *FMT* to give the files unique names.

    -Wext *EXT*, --Wext *EXT* (-tagOutExt)
         This option is used to specify the type of output file(s) written
         by the -W option. An output file is written only if the suggested
         extension matches *EXT*. Multiple -Wext options may be used to
         write more than one type of file. Use --Wext to write all but the
         specified type(s).

    -X (-xmlFormat)
         Use ExifTool-specific RDF/XML formatting for console output.
         Implies the -a option, so duplicate tags are extracted. The
         formatting options -b, -D, -H, -l, -s, -sep, -struct and -t may be
         used in combination with -X to affect the output, but note that the
         tag ID (-D, -H and -t), binary data (-b) and structured output
         (-struct) options are not effective for the short output (-s).
         Another restriction of -s is that only one tag with a given group
         and name may appear in the output. Note that the tag ID options
         (-D, -H and -t) will produce non-standard RDF/XML unless the -l
         option is also used.

         By default, -X outputs flattened tags, so -struct should be added
         if required to preserve XMP structures. List-type tags with
         multiple values are formatted as an RDF Bag, but they are combined
         into a single string when -s or -sep is used. Using -L changes the
         XML encoding from "UTF-8" to "windows-1252". Other -charset
         settings change the encoding only if there is a corresponding
         standard XML character set. The -b option causes binary data values
         to be written, encoded in base64 if necessary. The -t option adds
         tag table information to the output (table "name", decimal tag
         "id", and "index" for cases where multiple conditional tags exist
         with the same ID).

         Note: This output is NOT the same as XMP because it uses
         dynamically-generated property names corresponding to the ExifTool
         tag names, and not the standard XMP properties. To write XMP
         instead, use the -o option with an XMP extension for the output
         file.

   Processing control
    -a, --a (-duplicates, --duplicates)
         Allow (-a) or suppress (--a) duplicate tag names to be extracted.
         By default, duplicate tags are suppressed unless the -ee or -X
         options are used or the Duplicates option is enabled in the
         configuration file.

    -e (--composite)
         Extract existing tags only -- don't calculate composite tags.

    -ee (-extractEmbedded)
         Extract information from embedded documents in EPS files, embedded
         EPS information and JPEG and Jpeg2000 images in PDF files, embedded
         MPF images in JPEG and MPO files, streaming metadata in AVCHD
         videos, and the resource fork of Mac OS files. Implies the -a
         option. Use -g3 or -G3 to identify the originating document for
         extracted information. Embedded documents containing sub-documents
         are indicated with dashes in the family 3 group name. (eg. "Doc2-3"
         is the 3rd sub-document of the 2nd embedded document.) Note that
         this option may increase processing time substantially, especially
         for PDF files with many embedded images.

    -ext *EXT*, --ext *EXT* (-extension)
         Process only files with (-ext) or without (--ext) a specified
         extension. There may be multiple -ext and --ext options. Extensions
         may begin with a leading '.', and case is not significant. For
         example:

             exiftool -ext .JPG DIR            # process only JPG files
             exiftool --ext cr2 --ext dng DIR  # supported files but CR2/DNG
             exiftool --ext . DIR              # ignore if no extension
             exiftool -ext "*" DIR             # process all files
             exiftool -ext "*" --ext xml DIR   # process all but XML files

         The extension may be "*" as in the last two examples above to force
         processing files with any extension (not just supported files).

         Using this option has two main advantages over specifying "*.*EXT*"
         on the command line: 1) It applies to files in subdirectories when
         combined with the -r option. 2) The -ext option is
         case-insensitive, which is useful when processing files on
         case-sensitive filesystems.

    -F[*OFFSET*] (-fixBase)
         Fix the base for maker notes offsets. A common problem with some
         image editors is that offsets in the maker notes are not adjusted
         properly when the file is modified. This may cause the wrong values
         to be extracted for some maker note entries when reading the edited
         file. This option allows an integer *OFFSET* to be specified for
         adjusting the maker notes base offset. If no *OFFSET* is given,
         ExifTool takes its best guess at the correct base. Note that
         exiftool will automatically fix the offsets for images which store
         original offset information (eg. newer Canon models). Offsets are
         fixed permanently if -F is used when writing EXIF to an image. eg)

             exiftool -F -exif:resolutionunit=inches image.jpg

    -fast[*NUM*]
         Increase speed of extracting information from JPEG images. With
         this option, ExifTool will not scan to the end of a JPEG image to
         check for an AFCP or PreviewImage trailer, or past the first
         comment in GIF images or the audio/video data in WAV/AVI files to
         search for additional metadata. These speed benefits are small when
         reading images directly from disk, but can be substantial if piping
         images through a network connection. For more substantial speed
         benefits, -fast2 also causes exiftool to avoid extracting any EXIF
         MakerNote information. -fast3 avoids processing the file entirely,
         and returns only an initial guess at FileType and the pseudo System
         tags.

    -fileOrder [-]*TAG*
         Set file processing order according to the sorted value of the
         specified *TAG*. For example, to process files in order of date:

             exiftool -fileOrder DateTimeOriginal DIR

         Additional -fileOrder options may be added for secondary sort keys.
         Numbers are sorted numerically, and all other values are sorted
         alphabetically. The sort order may be reversed by prefixing the tag
         name with a "-" (eg. "-fileOrder -createdate"). Print conversion of
         the sorted values is disabled with the -n option, or a "#" appended
         to the tag name. Other formatting options (eg. -d) have no effect
         on the sorted values. Note that the -fileOrder option has a large
         performance impact since it involves an additional processing pass
         of each file.

    -i *DIR* (-ignore)
         Ignore specified directory name. *DIR* may be either an individual
         folder name, or a full path. If a full path is specified, it must
         match the Directory tag exactly to be ignored. Use multiple -i
         options to ignore more than one directory name. A special *DIR*
         value of "SYMLINKS" (case sensitive) may be specified to ignore
         symbolic links when the -r option is used.

    -if *EXPR*
         Specify a condition to be evaluated before processing each *FILE*.
         *EXPR* is a Perl-like logic expression containing tag names
         prefixed by "$" symbols. It is evaluated with the tags from each
         *FILE* in turn, and the file is processed only if the expression
         returns true. Unlike Perl variable names, tag names are not case
         sensitive and may contain a hyphen. As well, tag names may have a
         leading group names separated by colons, and/or a trailing "#"
         character to disable print conversion. The expression $GROUP:all
         evaluates to 1 if any tag exists in the specified "GROUP", or 0
         otherwise (see note 2 below). When multiple -if options are used,
         all conditions must be satisfied to process the file. Returns an
         exit status of 1 if all files fail the condition. Below are a few
         examples:

             # extract shutterspeed from all Canon images in a directory
             exiftool -shutterspeed -if "$make eq 'Canon'" dir

             # add one hour to all images created on or after Apr. 2, 2006
             exiftool -alldates+=1 -if "$CreateDate ge '2006:04:02'" dir

             # set EXIF ISO value if possible, unless it is set already
             exiftool "-exif:iso&lt;iso" -if "not $exif:iso" dir

             # find images containing a specific keyword (case insensitive)
             exiftool -if "$keywords =~ /harvey/i" -filename dir

         Notes:

         1) The -n and -b options also apply to tags used in *EXPR*.

         2) Some binary data blocks are not extracted unless specified
         explicitly. These tags are not available for use in the -if
         condition unless they are also specified on the command line. The
         alternative is to use the $GROUP:all syntax. (eg. Use $exif:all
         instead of $exif in *EXPR* to test for the existence of EXIF tags.)

         3) Tags in the string are interpolated the same way as with -p
         before the expression is evaluated. In this interpolation, $/ is
         converted to a newline and $$ represents a single "$" symbol (so
         Perl variables, if used, require a double "$").

         4) The condition may only test tags from the file being processed.
         To process one file based on tags from another, two steps are
         required. For example, to process XMP sidecar files in directory
         "DIR" based on tags from the associated NEF:

             exiftool -if EXPR -p '$directory/$filename' -ext nef DIR &gt; nef.txt
             exiftool -@ nef.txt -srcfile %d%f.xmp ...

         5) The -a option has no effect on the evaluation of the expression,
         and the values of duplicate tags are accessible only by specifying
         a group name (such as a family 4 instance number, eg. $Copy1:TAG,
         $Copy2:TAG, etc).

    -m (-ignoreMinorErrors)
         Ignore minor errors and warnings. This enables writing to files
         with minor errors and disables some validation checks which could
         result in minor warnings. Generally, minor errors/warnings indicate
         a problem which usually won't result in loss of metadata if
         ignored. However, there are exceptions, so ExifTool leaves it up to
         you to make the final decision. Minor errors and warnings are
         indicated by "[minor]" at the start of the message. Warnings which
         affect processing when ignored are indicated by "[Minor]" (with a
         capital "M").

    -o *OUTFILE* or *FMT* (-out)
         Set the output file or directory name when writing information.
         Without this option, when any "real" tags are written the original
         file is renamed to "FILE_original" and output is written to *FILE*.
         When writing only FileName and/or Directory "pseudo" tags, -o
         causes the file to be copied instead of moved, but directories
         specified for either of these tags take precedence over that
         specified by the -o option.

         *OUTFILE* may be "-" to write to stdout. The output file name may
         also be specified using a *FMT* string in which %d, %f and %e
         represent the directory, file name and extension of *FILE*. Also,
         %c may be used to add a copy number. See the -w option for *FMT*
         string examples.

         The output file is taken to be a directory name if it already
         exists as a directory or if the name ends with '/'. Output
         directories are created if necessary. Existing files will not be
         overwritten. Combining the -overwrite_original option with -o
         causes the original source file to be erased after the output file
         is successfully written.

         A special feature of this option allows the creation of certain
         types of files from scratch, or with the metadata from another type
         of file. The following file types may be created using this
         technique:

             XMP, ICC/ICM, MIE, VRD, DR4, EXIF, EXV

         The output file type is determined by the extension of *OUTFILE*
         (specified as "-.EXT" when writing to stdout). The output file is
         then created from a combination of information in *FILE* (as if the
         -tagsFromFile option was used), and tag values assigned on the
         command line. If no *FILE* is specified, the output file may be
         created from scratch using only tags assigned on the command line.

    -overwrite_original
         Overwrite the original *FILE* (instead of preserving it by adding
         "_original" to the file name) when writing information to an image.
         Caution: This option should only be used if you already have
         separate backup copies of your image files. The overwrite is
         implemented by renaming a temporary file to replace the original.
         This deletes the original file and replaces it with the edited
         version in a single operation. When combined with -o, this option
         causes the original file to be deleted if the output file was
         successfully written (ie. the file is moved instead of copied).

    -overwrite_original_in_place
         Similar to -overwrite_original except that an extra step is added
         to allow the original file attributes to be preserved. For example,
         on a Mac this causes the original file creation date, type,
         creator, label color, icon, Finder tags and hard links to the file
         to be preserved (but note that the Mac OS resource fork is always
         preserved unless specifically deleted with "-rsrc:all="). This is
         implemented by opening the original file in update mode and
         replacing its data with a copy of a temporary file before deleting
         the temporary. The extra step results in slower performance, so the
         -overwrite_original option should be used instead unless necessary.

    -P (-preserve)
         Preserve the filesystem modification date/time of the original file
         ("FileModifyDate") when writing. Note that some filesystems store a
         creation date ("FileCreateDate") which is not affected by this
         option. This creation date is preserved only on Windows systems
         where Win32API::File and Win32::API are available. For other
         systems, the -overwrite_original_in_place option may be used if
         necessary to preserve the creation date. This option is superseded
         by writing FileModifyDate (and FileCreateDate) manually.

    -password *PASSWD*
         Specify password to allow processing of password-protected PDF
         documents. If a password is required but not given, a warning is
         issued and the document is not processed. This option is ignored if
         a password is not required.

    -progress
         Show file progress count in messages. The progress count appears in
         brackets after the name of each processed file, and gives the
         current file number and the total number of files to be processed.
         Implies the -v0 option, which prints the name of each processed
         file when writing. When combined with the -if option, the total
         count includes all files before the condition is applied, but files
         that fail the condition will not have their names printed.

    -q (-quiet)
         Quiet processing. One -q suppresses normal informational messages,
         and a second -q suppresses warnings as well. Error messages can not
         be suppressed, although minor errors may be downgraded to warnings
         with the -m option, which may then be suppressed with "-q -q".

    -r[.] (-recurse)
         Recursively process files in subdirectories. Only meaningful if
         *FILE* is a directory name. Subdirectories with names beginning
         with "." are not processed unless "." is added to the option name
         (ie. -r. or -recurse.). By default, exiftool will also follow
         symbolic links to directories if supported by the system, but this
         may be disabled with "-i SYMLINKS" (see the -i option for details).

    -scanForXMP
         Scan all files (even unsupported formats) for XMP information
         unless found already. When combined with the -fast option, only
         unsupported file types are scanned. Warning: It can be time
         consuming to scan large files.

    -u (-unknown)
         Extract values of unknown tags. Add another -u to also extract
         unknown information from binary data blocks. This option applies to
         tags with numerical tag ID's, and causes tag names like
         "Exif_0xc5d9" to be generated for unknown information. It has no
         effect on information types which have human-readable tag ID's
         (such as XMP), since unknown tags are extracted automatically from
         these formats.

    -U (-unknown2)
         Extract values of unknown tags as well as unknown information from
         some binary data blocks. This is the same as two -u options.

    -wm *MODE* (-writeMode)
         Set mode for writing/creating tags. *MODE* is a string of one or
         more characters from the list below. Write mode is "wcg" unless
         otherwise specified.

             w - Write existing tags
             c - Create new tags
             g - create new Groups as necessary

         For example, use "-wm cg" to only create new tags (and avoid
         editing existing ones).

         The level of the group is the SubDirectory level in the metadata
         structure. For XMP or IPTC this is the full XMP/IPTC block (the
         family 0 group), but for EXIF this is the individual IFD (the
         family 1 group).

    -z (-zip)
         When reading, causes information to be extracted from .gz and .bz2
         compressed images. (Only one image per archive. Requires gzip and
         bzip2 to be installed on the system.) When writing, causes
         compressed information to be written if supported by the metadata
         format. (eg. PNG supports compressed textual metadata.) This option
         also disables the recommended padding in embedded XMP, saving 2424
         bytes when writing XMP in a file.

   Other options
    -@ *ARGFILE*
         Read command-line arguments from the specified file. The file
         contains one argument per line (NOT one option per line -- some
         options require additional arguments, and all arguments must be
         placed on separate lines). Blank lines and lines beginning with "#"
         and are ignored. Normal shell processing of arguments is not
         performed, which among other things means that arguments should not
         be quoted and spaces are treated as any other character. *ARGFILE*
         may exist relative to either the current directory or the exiftool
         directory unless an absolute pathname is given.

         For example, the following *ARGFILE* will set the value of
         Copyright to "Copyright YYYY, Phil Harvey", where "YYYY" is the
         year of CreateDate:

             -d
             %Y
             -copyright&lt;Copyright $createdate, Phil Harvey

    -k (-pause)
         Pause with the message "-- press any key --" before terminating.
         This option is used to prevent the command window from closing when
         run as a Windows drag and drop application.

    -list, -listw, -listf, -listr, -listwf, -listg[*NUM*], -listd, -listx
         Print a list of all valid tag names (-list), all writable tag names
         (-listw), all supported file extensions (-listf), all recognized
         file extensions (-listr), all writable file extensions (-listwf),
         all tag groups [in a specified family] (-listg[*NUM*]), all
         deletable tag groups (-listd), or an XML database of tag details
         including language translations (-listx). The -list, -listw and
         -listx options may be followed by an additional argument of the
         form "-GROUP:All" to list only tags in a specific group, where
         "GROUP" is one or more family 0-2 group names (excepting EXIF IFD
         groups) separated by colons. With -listg, *NUM* may be given to
         specify the group family, otherwise family 0 is assumed. The -l
         option may be combined with -listf, -listr or -listwf to add file
         descriptions to the list. The -lang option may be combined with
         -listx to output descriptions in a single language. Here are some
         examples:

             -list               # list all tag names
             -list -EXIF:All     # list all EXIF tags
             -list -xmp:time:all # list all XMP tags relating to time
             -listw -XMP-dc:All  # list all writable XMP-dc tags
             -listf              # list all supported file extensions
             -listr              # list all recognized file extensions
             -listwf             # list all writable file extensions
             -listg1             # list all groups in family 1
             -listd              # list all deletable groups
             -listx -EXIF:All    # list database of EXIF tags in XML format
             -listx -XMP:All -s  # list short XML database of XMP tags

         When combined with -listx, the -s option shortens the output by
         omitting the descriptions and values (as in the last example
         above), and -f adds a 'flags' attribute if applicable. The flags
         are formatted as a comma-separated list of the following possible
         values: Avoid, Binary, List, Mandatory, Permanent, Protected,
         Unknown and Unsafe (see the Tag Name documentation). For XMP List
         tags, the list type (Alt, Bag or Seq) is added to the flags, and
         flattened structure tags are indicated by a Flattened flag.

         Note that none of the -list options require an input *FILE*.

    -ver Print exiftool version number.

   Special features
    -geotag *TRKFILE*
         Geotag images from the specified GPS track log file. Using the
         -geotag option is equivalent to writing a value to the "Geotag"
         tag. After the -geotag option has been specified, the value of the
         "Geotime" tag is written to define a date/time for the position
         interpolation. If "Geotime" is not specified, the value is copied
         from "DateTimeOriginal". For example, the following two commands
         are equivalent:

             exiftool -geotag track.log image.jpg
             exiftool -geotag "-Geotime&lt;DateTimeOriginal" image.jpg

         When the "Geotime" value is converted to UTC, the local system
         timezone is assumed unless the date/time value contains a timezone.
         Writing "Geotime" causes the following tags to be written (provided
         they can be calculated from the track log, and they are supported
         by the destination metadata format): GPSLatitude, GPSLatitudeRef,
         GPSLongitude, GPSLongitudeRef, GPSAltitude, GPSAltitudeRef,
         GPSDateStamp, GPSTimeStamp, GPSDateTime, GPSTrack, GPSTrackRef,
         GPSSpeed, GPSSpeedRef, GPSImgDirection, GPSImgDirectionRef,
         GPSPitch and GPSRoll. By default, tags are created in EXIF, and
         updated in XMP only if they already exist. However, "EXIF:Geotime"
         or "XMP:Geotime" may be specified to write only EXIF or XMP tags
         respectively. Note that GPSPitch and GPSRoll are non-standard, and
         require user-defined tags in order to be written.

         The "Geosync" tag may be used to specify a time correction which is
         applied to each "Geotime" value for synchronization with GPS time.
         For example, the following command compensates for image times
         which are 1 minute and 20 seconds behind GPS:

             exiftool -geosync=+1:20 -geotag a.log DIR

         "Geosync" must be set before "Geotime" (if specified) to be
         effective. Advanced "Geosync" features allow a linear time drift
         correction and synchronization from previously geotagged images.
         See "geotag.html" in the full ExifTool distribution for more
         information.

         Multiple -geotag options may be used to concatinate GPS track log
         data. Also, a single -geotag option may be used to load multiple
         track log files by using wildcards in the *TRKFILE* name, but note
         that in this case *TRKFILE* must be quoted on most systems (with
         the notable exception of Windows) to prevent filename expansion.
         For example:

             exiftool -geotag "TRACKDIR/*.log" IMAGEDIR

         Currently supported track file formats are GPX, NMEA RMC/GGA/GLL,
         KML, IGC, Garmin XML and TCX, Magellan PMGNTRK, Honeywell PTNTHPR,
         Winplus Beacon text, and Bramor gEO log files. See "GEOTAGGING
         EXAMPLES" for examples. Also see "geotag.html" in the full ExifTool
         distribution and the Image::ExifTool Options for more details and
         for information about geotag configuration options.

    -globalTimeShift *SHIFT*
         Shift all formatted date/time values by the specified amount when
         reading. Does not apply to unformatted (-n) output. *SHIFT* takes
         the same form as the date/time shift when writing (see
         Image::ExifTool::Shift.pl for details), with a negative shift being
         indicated with a minus sign ("-") at the start of the *SHIFT*
         string. For example:

             # return all date/times, shifted back by 1 hour
             exiftool -globalTimeShift -1 -time:all a.jpg

             # set the file name from the shifted CreateDate (-1 day) for
             # all images in a directory
             exiftool "-filename&lt;createdate" -globaltimeshift "-0:0:1 0:0:0" \
                 -d %Y%m%d-%H%M%S.%%e dir

    -use *MODULE*
         Add features from specified plug-in *MODULE*. Currently, the MWG
         module is the only plug-in module distributed with exiftool. This
         module adds read/write support for tags as recommended by the
         Metadata Working Group. To save typing, "-use MWG" is assumed if
         the "MWG" group is specified for any tag on the command line. See
         the MWG Tags documentation for more details. Note that this option
         is not reversible, and remains in effect until the application
         terminates, even across the "-execute" option.

   Utilities
    -restore_original
    -delete_original[!]
         These utility options automate the maintenance of the "_original"
         files created by exiftool. They have no effect on files without an
         "_original" copy. The -restore_original option restores the
         specified files from their original copies by renaming the
         "_original" files to replace the edited versions. For example, the
         following command restores the originals of all JPG images in
         directory "DIR":

             exiftool -restore_original -ext jpg DIR

         The -delete_original option deletes the "_original" copies of all
         files specified on the command line. Without a trailing "!" this
         option prompts for confirmation before continuing. For example, the
         following command deletes "a.jpg_original" if it exists, after
         asking "Are you sure?":

             exiftool -delete_original a.jpg

         These options may not be used with other options to read or write
         tag values in the same command, but may be combined with options
         such -ext, -if, -r, -q and -v.

   Advanced options
    Among other things, the advanced options allow complex processing to be
    performed from a single command without the need for additional
    scripting. This may be particularly useful for implementations such as
    Windows drag-and-drop applications. These options may also be used to
    improve performance in multi-pass processing by reducing the overhead
    required to load exiftool for each invocation.

    -api *OPT[=VAL]*
         Set ExifTool API option. *OPT* is an API option name. The option
         value is set to 1 if *=VAL* is omitted, or undef if just *VAL* is
         omitted. An option may not be set to an empty string ("") via the
         command line, but the config file may be used to accomplish this if
         necessary. See Image::ExifTool Options for a list of available API
         options. This overrides API options set via the config file.

    -common_args
         Specifies that all arguments following this option are common to
         all executed commands when -execute is used. This and the -config
         option are the only options that may not be used inside a -@
         *ARGFILE*. Note that by definition this option and its arguments
         MUST come after all other options on the command line.

    -config *CFGFILE*
         Load specified configuration file instead of the default
         ".ExifTool_config". If used, this option must come before all other
         arguments on the command line. The *CFGFILE* name may contain a
         directory specification (otherwise the file must exist in the
         current directory), or may be set to an empty string ("") to
         disable loading of the config file. See the sample configuration
         file and "config.html" in the full ExifTool distribution for more
         information about the ExifTool configuration file.

    -echo[*NUM*] *TEXT*
         Echo text to stdout (-echo or -echo1) or stderr (-echo2). Text is
         output as the command line is parsed, before the processing of any
         input files. *NUM* may also be 3 or 4 to output text (to stdout or
         stderr respectively) after processing is complete.

    -execute[*NUM*]
         Execute command for all arguments up to this point on the command
         line (plus any arguments specified by -common_args). Allows
         multiple commands to be executed from a single command line. *NUM*
         is an optional number that is echoed in the "{ready}" message when
         using the -stay_open feature.

    -srcfile *FMT*
         Specify a different source file to be processed based on the name
         of the original *FILE*. This may be useful in some special
         situations for processing related preview images or sidecar files.
         See the -w option for a description of the *FMT* syntax. Note that
         file name *FMT* strings for all options are based on the original
         *FILE* specified from the command line, not the name of the source
         file specified by -srcfile.

         For example, to copy metadata from NEF files to the corresponding
         JPG previews in a directory where other JPG images may exist:

             exiftool -ext nef -tagsfromfile @ -srcfile %d%f.jpg dir

         If than one -srcfile option is specified, the files are tested in
         order and the first existing source file is processed. If none of
         the source files already exist, then exiftool uses the first
         -srcfile specified.

         A *FMT* of "@" may be used to represent the original *FILE*, which
         may be useful when specifying multiple -srcfile options (eg. to
         fall back to processing the original *FILE* if no sidecar exists).

    -stay_open *FLAG*
         If *FLAG* is 1 or "True", causes exiftool keep reading from the -@
         *ARGFILE* even after reaching the end of file. This feature allows
         calling applications to pre-load exiftool, thus avoiding the
         overhead of loading exiftool for each command. The procedure is as
         follows:

         1) Execute "exiftool -stay_open True -@ *ARGFILE*", where *ARGFILE*
         is the name of an existing (possibly empty) argument file or "-" to
         pipe arguments from the standard input.

         2) Write exiftool command-line arguments to *ARGFILE*, one argument
         per line (see the -@ option for details).

         3) Write "-execute\n" to *ARGFILE*, where "\n" represents a newline
         sequence. (Note: You may need to flush your write buffers here if
         using buffered output.) Exiftool will then execute the command with
         the arguments received up to this point, send a "{ready}" message
         to stdout when done (unless the -q or -T option is used), and
         continue trying to read arguments for the next command from
         *ARGFILE*. To aid in command/response synchronization, any number
         appended to the "-execute" option is echoed in the "{ready}"
         message. For example, "-execute613" results in "{ready613}".

         4) Repeat steps 2 and 3 for each command.

         5) Write "-stay_open\nFalse\n" to *ARGFILE* when done. This will
         cause exiftool to process any remaining command-line arguments then
         exit normally.

         The input *ARGFILE* may be changed at any time before step 5 above
         by writing the following lines to the currently open *ARGFILE*:

             -stay_open
             True
             -@
             NEWARGFILE

         This causes *ARGFILE* to be closed, and *NEWARGFILE* to be kept
         open. (Without the -stay_open here, exiftool would have returned to
         reading arguments from *ARGFILE* after reaching the end of
         *NEWARGFILE*.)

         Note: When writing arguments to a disk file there is a delay of up
         to 0.01 seconds after writing "-execute\n" before exiftool starts
         processing the command. This delay may be avoided by sending a CONT
         signal to the exiftool process immediately after writing
         "-execute\n". (There is no associated delay when writing arguments
         via a pipe with "-@ -", so the signal is not necessary when using
         this technique.)

    -userParam *PARAM[=VAL]*
         Set user parameter. *PARAM* is an arbitrary user parameter name.
         This is an interface to the API UserParam option (see the
         Image::ExifTool Options documentation), and provides a method to
         access user-defined parameters from inside tag name expressions (as
         if it were any other tag, see example below), and from
         PrintConv/ValueConv logic (via the ExifTool Options function).
         Similar to the -api option, the parameter value is set to 1 if
         *=VAL* is omitted, or undef if just *VAL* is omitted.

             exiftool -p "$test from $filename" -userparam test=Hello FILE

WINDOWS UNICODE FILE NAMES
    In Windows, by default, file and directory names are specified on the
    command line (or in arg files) using the system code page, which varies
    with the system settings. Unfortunately, these code pages are not
    complete character sets, so not all file names may be represented.

    ExifTool 9.79 and later allow the file name encoding to be specified
    with "-charset filename=CHARSET", where "CHARSET" is the name of a valid
    ExifTool character set, preferably "UTF8" (see the -charset option for a
    complete list). Setting this triggers the use of Windows wide-character
    i/o routines, thus providing support for all Unicode file names. But
    note that it is not trivial to pass properly encoded file names on the
    Windows command line (see
    &lt;http://owl.phy.queensu.ca/~phil/exiftool/faq.html#Q18&gt; for details), so
    placing them in a UTF-8 encoded -@ argfile is recommended if possible.

    When a directory name is provided, the file name encoding need not be
    specified (unless the directory name contains special characters), and
    ExifTool will automatically use wide-character routines to scan the
    directory.

    The filename character set applies to the *FILE* arguments as well as
    filename arguments of -@, -geotag, -o, -p, -srcfile, -tagsFromFile,
    -csv=, -j= and -*TAG*&lt;=. However, it does not apply to the -config
    filename, which always uses the system character set. The "-charset
    filename=" option must come before the -@ option to be effective, but
    the order doesn't matter with respect to other options.

    Notes:

    1) FileName and Directory tag values still use the same encoding as
    other tag values, and are converted to/from the filename character set
    when writing/reading if specified.

    2) Unicode support is not yet implemented for other Windows-based
    systems like Cygwin.

    3) See "WRITING READ-ONLY FILES" below for a note about editing
    read-only files with Unicode names.

WRITING READ-ONLY FILES
    In general, ExifTool may be used to write metadata to read-only files
    provided that the user has write permission in the directory. However,
    there are two cases where file write permission is also required:

    1) When using the -overwrite_original_in_place option.

    2) On Windows if the file has Unicode characters in its name, and a) the
    -overwrite_original option is used, or b) the "_original" backup already
    exists.

READING EXAMPLES
    exiftool -a -u -g1 a.jpg
         Print all meta information in an image, including duplicate and
         unknown tags, sorted by group (for family 1).

    exiftool -common dir
         Print common meta information for all images in "dir". "-common" is
         a shortcut tag representing common EXIF meta information.

    exiftool -T -createdate -aperture -shutterspeed -iso dir &gt; out.txt
         List specified meta information in tab-delimited column form for
         all images in "dir" to an output text file named "out.txt".

    exiftool -s -ImageSize -ExposureTime b.jpg
         Print ImageSize and ExposureTime tag names and values.

    exiftool -l -canon c.jpg d.jpg
         Print standard Canon information from two image files.

    exiftool -r -w .txt -common pictures
         Recursively extract common meta information from files in
         "pictures" directory, writing text output to ".txt" files with the
         same names.

    exiftool -b -ThumbnailImage image.jpg &gt; thumbnail.jpg
         Save thumbnail image from "image.jpg" to a file called
         "thumbnail.jpg".

    exiftool -b -JpgFromRaw -w _JFR.JPG -ext NEF -r .
         Recursively extract JPG image from all Nikon NEF files in the
         current directory, adding "_JFR.JPG" for the name of the output JPG
         files.

    exiftool -a -b -W %d%f_%t%-c.%s -preview:all dir
         Extract all types of preview images (ThumbnailImage, PreviewImage,
         JpgFromRaw, etc.) from files in directory "dir", adding the tag
         name to the output preview image file names.

    exiftool -d "%r %a, %B %e, %Y" -DateTimeOriginal -S -s -ext jpg .
         Print formatted date/time for all JPG files in the current
         directory.

    exiftool -IFD1:XResolution -IFD1:YResolution image.jpg
         Extract image resolution from EXIF IFD1 information (thumbnail
         image IFD).

    exiftool "-*resolution*" image.jpg
         Extract all tags with names containing the word "Resolution" from
         an image.

    exiftool -xmp:author:all -a image.jpg
         Extract all author-related XMP information from an image.

    exiftool -xmp -b a.jpg &gt; out.xmp
         Extract complete XMP data record intact from "a.jpg" and write it
         to "out.xmp" using the special "XMP" tag (see the Extra tags in
         Image::ExifTool::TagNames).

    exiftool -p "$filename has date $dateTimeOriginal" -q -f dir
         Print one line of output containing the file name and
         DateTimeOriginal for each image in directory "dir".

    exiftool -ee -p "$gpslatitude, $gpslongitude, $gpstimestamp" a.m2ts
         Extract all GPS positions from an AVCHD video.

    exiftool -icc_profile -b -w icc image.jpg
         Save complete ICC_Profile from an image to an output file with the
         same name and an extension of ".icc".

    exiftool -htmldump -w tmp/%f_%e.html t/images
         Generate HTML pages from a hex dump of EXIF information in all
         images from the "t/images" directory. The output HTML files are
         written to the "tmp" directory (which is created if it didn't
         exist), with names of the form "FILENAME_EXT.html".

    exiftool -a -b -ee -embeddedimage -W Image_%.3g3.%s file.pdf
         Extract embedded JPG and JP2 images from a PDF file. The output
         images will have file names like "Image_#.jpg" or "Image_#.jp2",
         where "#" is the ExifTool family 3 embedded document number for the
         image.

WRITING EXAMPLES
    Note that quotes are necessary around arguments which contain certain
    special characters such as "&gt;", "&lt;" or any white space. These quoting
    techniques are shell dependent, but the examples below will work in
    the Windows CMD shell.

    exiftool -Comment="This is a new comment" dst.jpg
         Write new comment to a JPG image (replaces any existing comment).

    exiftool -comment= -o newdir -ext jpg .
         Remove comment from all JPG images in the current directory,
         writing the modified images to a new directory.

    exiftool -keywords=EXIF -keywords=editor dst.jpg
         Replace existing keyword list with two new keywords ("EXIF" and
         "editor").

    exiftool -Keywords+=word -o newfile.jpg src.jpg
         Copy a source image to a new file, and add a keyword ("word") to
         the current list of keywords.

    exiftool -exposurecompensation+=-0.5 a.jpg
         Decrement the value of ExposureCompensation by 0.5 EV. Note that +=
         with a negative value is used for decrementing because the -=
         operator is used for conditional deletion (see next example).

    exiftool -credit-=xxx dir
         Delete Credit information from all files in a directory where the
         Credit value was "xxx".

    exiftool -xmp:description-de="k&uuml;hl" -E dst.jpg
         Write alternate language for XMP:Description, using HTML character
         escaping to input special characters.

    exiftool -all= dst.jpg
         Delete all meta information from an image. Note: You should NOT do
         this to RAW images (except DNG) since proprietary RAW image formats
         often contain information in the makernotes that is necessary for
         converting the image.

    exiftool -all= -comment="lonely" dst.jpg
         Delete all meta information from an image and add a comment back
         in. (Note that the order is important: -comment="lonely" -all=
         would also delete the new comment.)

    exiftool -all= --jfif:all dst.jpg
         Delete all meta information except JFIF group from an image.

    exiftool -Photoshop:All= dst.jpg
         Delete Photoshop meta information from an image (note that the
         Photoshop information also includes IPTC).

    exiftool -r -XMP-crss:all= DIR
         Recursively delete all XMP-crss information from images in a
         directory.

    exiftool "-ThumbnailImage&lt;=thumb.jpg" dst.jpg
         Set the thumbnail image from specified file (Note: The quotes are
         necessary to prevent shell redirection).

    exiftool "-JpgFromRaw&lt;=%d%f_JFR.JPG" -ext NEF -r .
         Recursively write JPEG images with filenames ending in "_JFR.JPG"
         to the JpgFromRaw tag of like-named files with extension ".NEF" in
         the current directory. (This is the inverse of the "-JpgFromRaw"
         command of the "READING EXAMPLES" section above.)

    exiftool -DateTimeOriginal-="0:0:0 1:30:0" dir
         Adjust original date/time of all images in directory "dir" by
         subtracting one hour and 30 minutes. (This is equivalent to
         "-DateTimeOriginal-=1.5". See Image::ExifTool::Shift.pl for
         details.)

    exiftool -createdate+=3 -modifydate+=3 a.jpg b.jpg
         Add 3 hours to the CreateDate and ModifyDate timestamps of two
         images.

    exiftool -AllDates+=1:30 -if "$make eq 'Canon'" dir
         Shift the values of DateTimeOriginal, CreateDate and ModifyDate
         forward by 1 hour and 30 minutes for all Canon images in a
         directory. (The AllDates tag is provided as a shortcut for these
         three tags, allowing them to be accessed via a single tag.)

    exiftool -xmp:city=Kingston image1.jpg image2.nef
         Write a tag to the XMP group of two images. (Without the "xmp:"
         this tag would get written to the IPTC group since "City" exists in
         both, and IPTC is preferred by default.)

    exiftool -LightSource-="Unknown (0)" dst.tiff
         Delete "LightSource" tag only if it is unknown with a value of 0.

    exiftool -whitebalance-=auto -WhiteBalance=tung dst.jpg
         Set "WhiteBalance" to "Tungsten" only if it was previously "Auto".

    exiftool -comment-= -comment="new comment" a.jpg
         Write a new comment only if the image doesn't have one already.

    exiftool -o %d%f.xmp dir
         Create XMP meta information data files for all images in "dir".

    exiftool -o test.xmp -owner=Phil -title="XMP File"
         Create an XMP data file only from tags defined on the command line.

    exiftool "-ICC_Profile&lt;=%d%f.icc" image.jpg
         Write ICC_Profile to an image from a ".icc" file of the same name.

    exiftool -hierarchicalkeywords="{keyword=one,children={keyword=B}}"
         Write structured XMP information. See
         &lt;http://owl.phy.queensu.ca/~phil/exiftool/struct.html&gt; for more
         details.

    exiftool -trailer:all= image.jpg
         Delete any trailer found after the end of image (EOI) in a JPEG
         file. A number of digital cameras store a large PreviewImage after
         the JPEG EOI, and the file size may be reduced significantly by
         deleting this trailer. See the JPEG Tags documentation for a list
         of recognized JPEG trailers.

COPYING EXAMPLES
    These examples demonstrate the ability to copy tag values between files.

    exiftool -tagsFromFile src.cr2 dst.jpg
         Copy the values of all writable tags from "src.cr2" to "dst.jpg",
         writing the information to same-named tags in the preferred groups.

    exiftool -TagsFromFile src.jpg -all:all dst.jpg
         Copy the values of all writable tags from "src.jpg" to "dst.jpg",
         preserving the original tag groups.

    exiftool -all= -tagsfromfile src.jpg -exif:all dst.jpg
         Erase all meta information from "dst.jpg" image, then copy EXIF
         tags from "src.jpg".

    exiftool -exif:all= -tagsfromfile @ -all:all -unsafe bad.jpg
         Rebuild all EXIF meta information from scratch in an image. This
         technique can be used in JPEG images to repair corrupted EXIF
         information which otherwise could not be written due to errors. The
         "Unsafe" tag is a shortcut for unsafe EXIF tags in JPEG images
         which are not normally copied. See the tag name documentation for
         more details about unsafe tags.

    exiftool -Tagsfromfile a.jpg out.xmp
         Copy meta information from "a.jpg" to an XMP data file. If the XMP
         data file "out.xmp" already exists, it will be updated with the new
         information. Otherwise the XMP data file will be created. Only XMP,
         ICC and MIE files may be created like this (other file types may be
         edited but not created). See "WRITING EXAMPLES" above for another
         technique to generate XMP files.

    exiftool -tagsFromFile a.jpg -XMP:All= -ThumbnailImage= -m b.jpg
         Copy all meta information from "a.jpg" to "b.jpg", deleting all XMP
         information and the thumbnail image from the destination.

    exiftool -TagsFromFile src.jpg -title -author=Phil dst.jpg
         Copy title from one image to another and set a new author name.

    exiftool -TagsFromFile a.jpg -ISO -TagsFromFile b.jpg -comment dst.jpg
         Copy ISO from one image and Comment from another image to a
         destination image.

    exiftool -tagsfromfile src.jpg -exif:all --subifd:all dst.jpg
         Copy only the EXIF information from one image to another, excluding
         SubIFD tags.

    exiftool "-FileModifyDate&lt;DateTimeOriginal" dir
         Use the original date from the meta information to set the same
         file's filesystem modification date for all images in a directory.
         (Note that "-TagsFromFile @" is assumed if no other -TagsFromFile
         is specified when redirecting information as in this example.)

    exiftool -TagsFromFile src.jpg "-xmp:all&lt;all" dst.jpg
         Copy all possible information from "src.jpg" and write in XMP
         format to "dst.jpg".

    exiftool -@ iptc2xmp.args -iptc:all= a.jpg
         Translate IPTC information to XMP with appropriate tag name
         conversions, and delete the original IPTC information from an
         image. This example uses iptc2xmp.args, which is a file included
         with the ExifTool distribution that contains the required arguments
         to convert IPTC information to XMP format. Also included with the
         distribution are xmp2iptc.args (which performs the inverse
         conversion) and a few more .args files for other conversions
         between EXIF, IPTC and XMP.

    exiftool -tagsfromfile %d%f.CR2 -r -ext JPG dir
         Recursively rewrite all "JPG" images in "dir" with information
         copied from the corresponding "CR2" images in the same directories.

    exiftool "-keywords+&lt;make" image.jpg
         Add camera make to list of keywords.

    exiftool "-comment&lt;ISO=$exif:iso Exposure=${shutterspeed}" dir
         Set the Comment tag of all images in "dir" from the values of the
         EXIF:ISO and ShutterSpeed tags. The resulting comment will be in
         the form "ISO=100 Exposure=1/60".

    exiftool -TagsFromFile src.jpg -icc_profile dst.jpg
         Copy ICC_Profile from one image to another.

    exiftool -TagsFromFile src.jpg -all:all dst.mie
         Copy all meta information in its original form from a JPEG image to
         a MIE file. The MIE file will be created if it doesn't exist. This
         technique can be used to store the metadata of an image so it can
         be inserted back into the image (with the inverse command) later in
         a workflow.

    exiftool -o dst.mie -all:all src.jpg
         This command performs exactly the same task as the command above,
         except that the "-o" option will not write to an output file that
         already exists.

    exiftool -if $jpgfromraw -b -jpgfromraw -w %d%f_%ue.jpg -execute -if
    $previewimage -b -previewimage -w %d%f_%ue.jpg -execute -tagsfromfile @
    -srcfile %d%f_%ue.jpg -overwrite_original -common_args --ext jpg DIR
         [Advanced] Extract JpgFromRaw or PreviewImage from all but JPG
         files in DIR, saving them with file names like "image_EXT.jpg",
         then add all meta information from the original files to the
         extracted images. Here, the command line is broken into three
         sections (separated by -execute options), and each is executed as
         if it were a separate command. The -common_args option causes the
         "--ext jpg DIR" arguments to be applied to all three commands, and
         the -srcfile option allows the extracted JPG image to be the source
         file for the third command (whereas the RAW files are the source
         files for the other two commands).

RENAMING EXAMPLES
    By writing the "FileName" and "Directory" tags, files are renamed and/or
    moved to new directories. This can be particularly useful and powerful
    for organizing files by date when combined with the -d option. New
    directories are created as necessary, but existing files will not be
    overwritten. The format codes %d, %f and %e may be used in the new file
    name to represent the directory, name and extension of the original
    file, and %c may be used to add a copy number if the file already exists
    (see the -w option for details). Note that if used within a date format
    string, an extra '%' must be added to pass these codes through the
    date/time parser. (And further note that in a Windows batch file, all
    '%' characters must also be escaped, so in this extreme case "%%%%f" is
    necessary to pass a simple "%f" through the two levels of parsing.) See
    &lt;http://owl.phy.queensu.ca/~phil/exiftool/filename.html&gt; for additional
    documentation and examples.

    exiftool -filename=new.jpg dir/old.jpg
         Rename "old.jpg" to "new.jpg" in directory "dir".

    exiftool -directory=%e dir
         Move all files from directory "dir" into directories named by the
         original file extensions.

    exiftool "-Directory&lt;DateTimeOriginal" -d %Y/%m/%d dir
         Move all files in "dir" into a directory hierarchy based on year,
         month and day of "DateTimeOriginal". eg) This command would move
         the file "dir/image.jpg" with a "DateTimeOriginal" of "2005:10:12
         16:05:56" to "2005/10/12/image.jpg".

    exiftool -o . "-Directory&lt;DateTimeOriginal" -d %Y/%m/%d dir
         Same effect as above except files are copied instead of moved.

    exiftool "-filename&lt;%f_${model;}.%e" dir
         Rename all files in "dir" by adding the camera model name to the
         file name. The semicolon after the tag name inside the braces
         causes characters which are invalid in Windows file names to be
         deleted from the tag value (see the -p option documentation for an
         explanation).

    exiftool "-FileName&lt;CreateDate" -d %Y%m%d_%H%M%S%%-c.%%e dir
         Rename all images in "dir" according to the "CreateDate" date and
         time, adding a copy number with leading '-' if the file already
         exists ("%-c"), and preserving the original file extension (%e).
         Note the extra '%' necessary to escape the filename codes (%c and
         %e) in the date format string.

    exiftool -r "-FileName&lt;CreateDate" -d %Y-%m-%d/%H%M_%%f.%%e dir
         Both the directory and the filename may be changed together via the
         "FileName" tag if the new "FileName" contains a '/'. The example
         above recursively renames all images in a directory by adding a
         "CreateDate" timestamp to the start of the filename, then moves
         them into new directories named by date.

    exiftool "-FileName&lt;${CreateDate}_$filenumber.jpg" -d %Y%m%d -ext jpg .
         Set the filename of all JPG images in the current directory from
         the CreateDate and FileNumber tags, in the form
         "20060507_118-1861.jpg".

GEOTAGGING EXAMPLES
    ExifTool implements geotagging via 3 special tags: Geotag (which for
    convenience is also implemented as an exiftool option), Geosync and
    Geotime. The examples below highlight some geotagging features. See
    &lt;http://owl.phy.queensu.ca/~phil/exiftool/geotag.html&gt; for additional
    documentation.

    exiftool -geotag track.log a.jpg
         Geotag an image ("a.jpg") from position information in a GPS track
         log ("track.log"). Since the "Geotime" tag is not specified, the
         value of DateTimeOriginal is used for geotagging. Local system time
         is assumed unless DateTimeOriginal contains a timezone.

    exiftool -geotag t.log -geotime="2009:04:02 13:41:12-05:00" a.jpg
         Geotag an image with the GPS position for a specific time. (Note
         that the "Geotag" tag must be assigned before "Geotime" for the GPS
         data to be available when "Geotime" is set.)

    exiftool -geotag log.gpx "-xmp:geotime&lt;createdate" dir
         Geotag all images in directory "dir" with XMP tags instead of EXIF
         tags, based on the image CreateDate. (In this case, the order of
         the arguments doesn't matter because tags with values copied from
         other tags are always set after constant values.)

    exiftool -geotag a.log -geosync=-20 dir
         Geotag images in directory "dir", accounting for image timestamps
         which were 20 seconds ahead of GPS.

    exiftool -geotag a.log -geosync=1.jpg -geosync=2.jpg dir
         Geotag images using time synchronization from two previously
         geotagged images (1.jpg and 2.jpg), synchronizing the image and GPS
         times using a linear time drift correction.

    exiftool -geotag a.log "-geotime&lt;${createdate}+01:00" dir
         Geotag images in "dir" using CreateDate with the specified
         timezone. If CreateDate already contained a timezone, then the
         timezone specified on the command line is ignored.

    exiftool -geotag= a.jpg
         Delete GPS tags which may have been added by the geotag feature.
         Note that this does not remove all GPS tags -- to do this instead
         use "-gps:all=".

    exiftool -xmp:geotag= a.jpg
         Delete XMP GPS tags which were added by the geotag feature.

    exiftool -xmp:geotag=track.log a.jpg
         Geotag an image with XMP tags, using the time from
         DateTimeOriginal.

    exiftool -geotag a.log -geotag b.log -r dir
         Combine multiple track logs and geotag an entire directory tree of
         images.

    exiftool -geotag "tracks/*.log" -r dir
         Read all track logs from the "tracks" directory.

    exiftool -p gpx.fmt -d %Y-%m-%dT%H:%M:%SZ dir &gt; out.gpx
         Generate a GPX track log from all images in directory "dir". This
         example uses the "gpx.fmt" file included in the full ExifTool
         distribution package and assumes that the images in "dir" have all
         been previously geotagged.

PIPING EXAMPLES
    type a.jpg | exiftool -
         Extract information from stdin.

    exiftool image.jpg -thumbnailimage -b | exiftool -
         Extract information from an embedded thumbnail image.

    type a.jpg | exiftool -iptc:keywords+=fantastic - &gt; b.jpg
         Add an IPTC keyword in a pipeline, saving output to a new file.

    curl -s http://a.domain.com/bigfile.jpg | exiftool -fast -
         Extract information from an image over the internet using the cURL
         utility. The -fast option prevents exiftool from scanning for
         trailer information, so only the meta information header is
         transferred.

    exiftool a.jpg -thumbnailimage -b | exiftool -comment=wow - | exiftool
    a.jpg "-thumbnailimage&lt;=-"
         Add a comment to an embedded thumbnail image. (Why anyone would
         want to do this I don't know, but I've included this as an example
         to illustrate the flexibility of ExifTool.)

DIAGNOSTICS
    The exiftool application exits with a status of 0 on success, or 1 if an
    error occurred or if all files failed the -if condition (for any of the
    commands if -execute was used).

AUTHOR
    Copyright 2003-2016, Phil Harvey

    This is free software; you can redistribute it and/or modify it under
    the same terms as Perl itself.

SEE ALSO
    Image::ExifTool(3pm), Image::ExifTool::TagNames(3pm),
    Image::ExifTool::Shortcuts(3pm), Image::ExifTool::Shift.pl

</pre>