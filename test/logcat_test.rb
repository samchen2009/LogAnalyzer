require "treetop"
require "polyglot"
require "pp"
require "debugger"
require "./libs/logcat.rb"
require "test/unit"

class LogcatTest < Test::Unit::TestCase

@@logcat = <<END
04-18 11:56:19.702  1501  1521 I BootReceiver: Copying /data/tombstones/tombstone_09 to DropBox (SYSTEM_TOMBSTONE)
04-18 11:58:51.122  1501  1519 W BatteryStatsImpl: Couldn't get kernel wake lock stats
04-18 12:00:43.162  1501  1517 E ActivityManager: No longer want com.google.tv.dial.launcher (pid 2787): empty for 1838s
04-18 12:00:43.162  1501  1517 D ActivityManager: No longer want com.marvell.tv.onewaycontrol (pid 2736): empty for 3648s
END

@@logcat_no_time = <<END
W/MountService( 1509): getVolumeState(/mnt/media/usb.54AB-EB82): Unknown volume
W/MountService( 1509): notifyVolumeStateChange ignored for /mnt/media/usb.54AB-EB82
W/MountService( 1509): getVolumeState(/mnt/media/usb.54AB-EB82): Unknown volume
W/MountService( 1509): notifyVolumeStateChange ignored for /mnt/media/usb.54AB-EB82
I/MediaVolume( 1442): Handle NetlinkEvent::NlActionRemove for disk 8:16
E/MediaVolume( 1442): virtual int MediaVolume::handleBlockEvent(NetlinkEvent*): error mPath=/devices/soc.0/f7ed0000.usb/usb1/1-1/1-1.3/1-1.3:1.0/host2/target2:0:0/2:0:0:0/block/sda/sda1 dp=/devices/soc.0/f7ed0000.usb/usb1/1-1/1-1.1/1-1.1:1.0/host3/target3:0:0/3:0:0:0/block/sdb
I/MediaVolume( 1442): Handle NetlinkEvent::NlActionRemove for disk 8:16
D/MediaVolume( 1442): Volume usb2 /mnt/media/2 partition 8:16 removed
D/Vold    ( 1442): Volume usb2 state changing 1 (Idle-Unmounted) -> 0 (No-Media)
W/MountService( 1509): getVolumeState(/mnt/media/2): Unknown volume
W/MountService( 1509): notifyVolumeStateChange ignored for /mnt/media/2
I/ActivityManager( 1509): No longer want com.svox.pico (pid 2985): empty for 1825s
I/WindowState( 1509): WIN DEATH: Window{41517540 u0 com.android.chrome/com.google.android.apps.chrome.Webapp}
W/WindowManager( 1509): Force-removing child win Window{4102ee20 u0 SurfaceView} from container Window{41517540 u0 com.android.chrome/com.google.android.apps.chrome.Webapp}
W/WindowManager( 1509): Failure taking screenshot for (515x290) to layer 21020
END

  def test_parse
	syntaxNode = LogcatParser.new.parse(@@logcat)
    assert syntaxNode
    @@lines = syntaxNode.elements
  	assert (@@lines.size == 4), "the lines parsed is not 4"
  end

  def test_parse_datetime
  	assert @@lines[0].datetime.text_value == "04-18 11:56:19.702"
  end

  def test_parse_type
  	assert @@lines[0].type.text_value == "I"
  	assert @@lines[1].type.text_value == "W"
  	assert @@lines[2].type.text_value == "E"
  	assert @@lines[3].type.text_value == "D"
  end

  def test_parse_pid_tid
  	assert @@lines[0].pid.text_value == "1521"
  	assert @@lines[0].tid.text_value == "1501"
  end

  def test_parse_component
  	assert @@lines[0].message.component.text_value == "BootReceiver:"
  end
end
