require "treetop"
require "polyglot"
require "pp"
require "debugger"
require "./libs/top.rb"
require "test/unit"

class TopTest < Test::Unit::TestCase

@@top = <<END
 PID   TID PR CPU% S     VSS     RSS PCY UID      Thread          Proc
  1602  1602  1  30% R   3488K   1824K  fg root     procrank        procrank
   736   736  0  10% R   4916K   3436K  fg root     debuggerd       /system/bin/debuggerd
  1419  1419  1   9% R  68940K  10856K  fg chrome   chrome          /system/chrome/bin/chrome --reload-killed-tabs --no-default-bro
  1552  1552  1   9% D 506316K  26284K  fg app_40   .android.videos com.google.android.videos
  1605  1605  0   8% R   2900K    972K  fg shell    top             top
  1592  1592  1   4% D   2384K    808K  fg root     logcat          logcat
   717   792  1   3% S 238160K  43408K  fg root     AOUT_HAL_ISR_Ta /system/bin/berlin_avservice
   669   669  0   3% R      0K      0K  fg root     yaffs-bg-1
  1552  1554  1   2% S 506316K  26284K  fg app_40   GC              com.google.android.videos
   878   896  1   1% S 655756K  54144K  fg system   ActivityManager system_server
  1552  1557  0   1% R 506316K  26284K  fg app_40   Compiler        com.google.android.videos
   717   778  1   1% S 238160K  43408K  fg root     VPP_ISR_Task    /system/bin/berlin_avservice
   717   793  1   1% S 238160K  43408K  fg root     AudioHwAPPTask  /system/bin/berlin_avservice
   717   794  1   1% S 238160K  43408K  fg root     ADMTask         /system/bin/berlin_avservice
  1012  1031  1   1% S 542040K  30492K  fg app_5    Binder Thread # com.google.process.gapps
   717   777  1   0% S 238160K  43408K  fg root     tsp_daemon_task /system/bin/berlin_avservice
   717   780  1   0% S 238160K  43408K  fg root     berlin_avservic /system/bin/berlin_avservice
   717   785  1   0% S 238160K  43408K  fg root     VIDEO_Task      /system/bin/berlin_avservice
   717   788  1   0% S 238160K  43408K  fg root     TSP_VDHUB_Task  /system/bin/berlin_avservice
   717   872  0   0% R 238160K  43408K  fg root     mv_audio_engine /system/bin/berlin_avservice

END

@@syntaxNode = TopParser.new.parse(@@top, :consume_all_input => false)
@@lines = @@syntaxNode.elements

  def test_parse
    assert @@syntaxNode
    assert (@@lines.size == 20), "the lines parsed is not 20"
  end

  def test_parse_lines
    assert @@lines[0].pid.text_value = "1602"
    assert @@lines[19].pid.text_value = "717"
    assert @@lines[19].tid.text_value = "872"
    assert @@lines[0].cpu = "30%"
    assert @@lines[19].proc="/system/bin/berlin_avservice"
  end

end
