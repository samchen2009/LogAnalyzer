require "treetop"
require "polyglot"
require "pp"
require "debugger"
require "./logcat.rb"
require "test/unit"

class LogcatTest < Test::Unit::TestCase

@@logcat = <<END
04-18 11:56:19.702  1501  1521 I BootReceiver: Copying /data/tombstones/tombstone_09 to DropBox (SYSTEM_TOMBSTONE)
04-18 11:58:51.122  1501  1519 W BatteryStatsImpl: Couldn't get kernel wake lock stats
04-18 12:00:43.162  1501  1517 E ActivityManager: No longer want com.google.tv.dial.launcher (pid 2787): empty for 1838s
04-18 12:00:43.162  1501  1517 D ActivityManager: No longer want com.marvell.tv.onewaycontrol (pid 2736): empty for 3648s
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
