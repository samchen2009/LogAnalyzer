require "treetop"
require "polyglot"
require "pp"
require "debugger"
require "./libs/android_dumpstate.rb"
require "test/unit"

class AndroidDumpStateTest < Test::Unit::TestCase

@@dumpstate = <<END
------ MEMORY INFO (/proc/meminfo) ------
MemTotal:         641800 kB
MemFree:          240216 kB
Buffers:           16768 kB
Cached:           196132 kB
SwapCached:            0 kB
Active:           188032 kB
Inactive:         162296 kB
Active(anon):     145240 kB
Inactive(anon):      240 kB
Active(file):      42792 kB
Inactive(file):   162056 kB
Unevictable:       11576 kB
Mlocked:           11592 kB
HighTotal:         81920 kB
HighFree:            524 kB
LowTotal:         559880 kB
LowFree:          239692 kB
SwapTotal:             0 kB
SwapFree:              0 kB
Dirty:                 4 kB
Writeback:             0 kB
AnonPages:        149124 kB
Mapped:            60464 kB
Shmem:               284 kB
Slab:              14556 kB
SReclaimable:       6700 kB
SUnreclaim:         7856 kB
KernelStack:        4368 kB
PageTables:         6180 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:      320900 kB
Committed_AS:    3983884 kB
VmallocTotal:     450560 kB
VmallocUsed:      191372 kB
VmallocChunk:      98240 kB

------ PROCESSES (ps -P) ------
USER     PID   PPID  VSIZE  RSS    PCY  WCHAN    PC         NAME
root      1     0     484    352       ffffffff 00000000 S /init
root      2     0     0      0         ffffffff 00000000 S kthreadd
root      3     2     0      0         ffffffff 00000000 S ksoftirqd/0
root      5     2     0      0         ffffffff 00000000 S kworker/u:0
root      6     2     0      0         ffffffff 00000000 S migration/0
root      7     2     0      0         ffffffff 00000000 S migration/1
root      8     2     0      0         ffffffff 00000000 S kworker/1:0
root      9     2     0      0         ffffffff 00000000 S ksoftirqd/1
root      10    2     0      0         ffffffff 00000000 S khelper
r
this is the ps -p log
------ PROCESSES AND THREADS (ps -t -p -P) ------
this is the process and thread 
------ LIBRANK (librank) ------
librank .......
------ KERNEL LOG (dmesg) ------
<6>[    0.290000] SMP: Total of 2 processors activated (3188.32 BogoMIPS).
<6>[    0.297533] dummy: 
<6>[    0.297849] NET: Registered protocol family 16
<6>[    0.305387] hw-breakpoint: found 5 (+1 reserved) breakpoint and 1 watchpoint registers.
<6>[    0.305404] hw-breakpoint: maximum watchpoint size is 4 bytes.
------ SYSTEM LOG (logcat -v threadtime -d *:v) ------
--------- beginning of /dev/log/system
04-18 11:56:19.702  1501  1521 I BootReceiver: Copying /data/tombstones/tombstone_09 to DropBox (SYSTEM_TOMBSTONE)
04-18 11:58:51.122  1501  1519 W BatteryStatsImpl: Couldn't get kernel wake lock stats
04-18 12:00:43.162  1501  1517 I ActivityManager: No longer want com.google.tv.dial.launcher (pid 2787): empty for 1838s
04-18 12:00:43.162  1501  1517 I ActivityManager: No longer want com.marvell.tv.onewaycontrol (pid 2736): empty for 3648s
END

  def test_parse
	sytanxNode = AndroidDumpStateParser.new.parse(@@dumpstate)
    assert sytanxNode
  end
end
