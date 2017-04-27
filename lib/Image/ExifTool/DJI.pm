#line 1 "Image/ExifTool/DJI.pm"
#------------------------------------------------------------------------------
# File:         DJI.pm
#
# Description:  DJI Phantom maker notes tags
#
# Revisions:    2016-07-25 - P. Harvey Created
#------------------------------------------------------------------------------

package Image::ExifTool::DJI;

use strict;
use vars qw($VERSION);
use Image::ExifTool::Exif;

$VERSION = '1.00';

my %convFloat2 = (
    PrintConv => 'sprintf("%+.2f", $val)',
    PrintConvInv => '$val',
);

# DJI maker notes (ref PH, mostly educated guesses based on DJI QuickTime::UserData tags)
%Image::ExifTool::DJI::Main = (
    WRITE_PROC => \&Image::ExifTool::Exif::WriteExif,
    CHECK_PROC => \&Image::ExifTool::Exif::CheckExif,
    GROUPS => { 0 => 'MakerNotes', 2 => 'Camera' },
    NOTES => q{
        This table lists tags found in the maker notes of images from some DJI
        Phantom drones.
    },
    0x01 => { Name => 'Make',       Writable => 'string' },
  # 0x02 - int8u[4]: "1 0 0 0", "1 1 0 0"
    0x03 => { Name => 'SpeedX',     Writable => 'float', %convFloat2 }, # (guess)
    0x04 => { Name => 'SpeedY',     Writable => 'float', %convFloat2 }, # (guess)
    0x05 => { Name => 'SpeedZ',     Writable => 'float', %convFloat2 }, # (guess)
    0x06 => { Name => 'Pitch',      Writable => 'float', %convFloat2 },
    0x07 => { Name => 'Yaw',        Writable => 'float', %convFloat2 },
    0x08 => { Name => 'Roll',       Writable => 'float', %convFloat2 },
    0x09 => { Name => 'CameraPitch',Writable => 'float', %convFloat2 },
    0x0a => { Name => 'CameraYaw',  Writable => 'float', %convFloat2 },
    0x0b => { Name => 'CameraRoll', Writable => 'float', %convFloat2 },
);

__END__

#line 72
