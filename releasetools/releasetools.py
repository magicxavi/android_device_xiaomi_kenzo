import common
import struct

def FullOTA_PostValidate(info):
    info.script.AppendExtra('run_program("/tmp/install/bin/e2fsck_static", "-fy", "/dev/block/bootdevice/by-name/system");');
    info.script.AppendExtra('run_program("/tmp/install/bin/resize2fs_static", "-f", "/dev/block/bootdevice/by-name/system");');
    info.script.AppendExtra('run_program("/tmp/install/bin/e2fsck_static", "-fy", "/dev/block/bootdevice/by-name/system");');
