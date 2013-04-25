require "treetop"
require "polyglot"
require "pp"
require "debugger"
require "./libs/dmesg.rb"
require "test/unit"

class DmesgTest < Test::Unit::TestCase

@@dmesg = <<END
>[    1.803567] hub 2-0:1.0: individual port power switching
<7>[    1.803575] hub 2-0:1.0: individual port over-current protection
<7>[    1.803584] hub 2-0:1.0: Single TT
<7>[    1.803592] hub 2-0:1.0: TT requires at most 8 FS bit times (666 ns)
<7>[    1.803602] hub 2-0:1.0: power on to power good time: 20ms
<7>[    1.803621] hub 2-0:1.0: local power source is good
<7>[    1.803630] hub 2-0:1.0: enabling power on all ports
<7>[    1.803839] drivers/usb/core/inode.c: creating file '001'
<4>[    1.803912] usb_ehci_mv_probe : usb_add_hcd successful
<6>[    1.809356] Initializing USB Mass Storage driver...
<6>[    1.814578] usbcore: registered new interface driver usb-storage
<6>[    1.820805] USB Mass Storage support registered.
<6>[    1.826142] Linux video capture interface: v2.00
<6>[    1.831383] usbcore: registered new interface driver uvcvideo
<6>[    1.837325] USB Video Class driver (v0.1.0)
<6>[    1.841665] Bluetooth: Generic Bluetooth SDIO driver ver 0.1
<6>[    1.847827] sdhci: Secure Digital Host Controller Interface driver
<6>[    1.854270] sdhci: Copyright(c) Pierre Ossman
END

@@syntaxNode = DmesgParser.new.parse(@@dmesg, :consume_all_input => false)
@@lines = @@syntaxNode.elements

  def test_parse
    assert @@syntaxNode
  	assert (@@lines.size == 18), "the lines parsed is not 4"
  end

  def test_parse_timestamp
  	assert @@lines[0].timestamp.time.text_value == "1.803567"
    assert @@lines[0].timestamp.time.second.text_value == "1"
    assert @@lines[0].timestamp.time.usecond.text_value == "803567"
  end

  def test_parse_message
  	assert @@lines[0].message.text_value == "hub 2-0:1.0: individual port power switching"
  end
end
