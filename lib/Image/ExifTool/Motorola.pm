#line 1 "Image/ExifTool/Motorola.pm"
#------------------------------------------------------------------------------
# File:         Motorola.pm
#
# Description:  Read Motorola meta information
#
# Revisions:    2015/10/29 - P. Harvey Created
#------------------------------------------------------------------------------

package Image::ExifTool::Motorola;

use strict;
use vars qw($VERSION);
use Image::ExifTool::Exif;

$VERSION = '1.00';

# Motorola makernotes tags (ref PH)
%Image::ExifTool::Motorola::Main = (
    WRITE_PROC => \&Image::ExifTool::Exif::WriteExif,
    CHECK_PROC => \&Image::ExifTool::Exif::CheckExif,
    GROUPS => { 0 => 'MakerNotes', 2 => 'Camera' },
    WRITABLE => 1,
    # 0x5570 - some sort of picture mode (auto,hdr)
    # 0x6400 - HDR? (OFF,ON)
    # 0x6410 - HDR? (NO,YES)
    # 0x6420 - only exists in HDR images
    0x665e => { Name => 'Sensor',           Writable => 'string' }, # (eg. "BACK,IMX230")
    # 0x6700 - serial number?
    0x6705 => { Name => 'ManufactureDate',  Writable => 'string' }, # (NC, eg. "03Jun2015")
    # 0x6706 - serial number?
);

1; # end

__END__

#line 63
