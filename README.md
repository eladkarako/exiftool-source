<h1><img width="48" height="48" src="icon.png"/>exiftool-source</h2>
<h2>exiftool is a collection of Perl scripts and LIBs, a.k.a distributed as PAR, if you're interested to see the source you can simply extract it with 7zip. This is what inside the latest version.</h2>

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
|   |       |   JVC.pm
|   |       |   Kodak.pm
|   |       |   KyoceraRaw.pm
|   |       |   Leaf.pm
|   |       |   LNK.pm
|   |       |   Lytro.pm
|   |       |   M2TS.pm
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
|   |       |   Radiance.pm
|   |       |   Rawzor.pm
|   |       |   README
|   |       |   Real.pm
|   |       |   Reconyx.pm
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
