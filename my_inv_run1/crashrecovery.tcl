# SimVision Command Script (Sat Nov 22 17:39:04 EST 2025)
#
# Version 15.20.s031
#
# You can restore this configuration with:
#
#     simvision -input crashrecovery.tcl
#  or simvision -input crashrecovery.tcl database1 database2 ...
#


#
# Preferences
#
preferences set plugin-enable-svdatabrowser-new 1
preferences set toolbar-sendToIndago-WaveWindow {
  usual
  position -pos 1
}
preferences set toolbar-Standard-Console {
  usual
  position -pos 1
}
preferences set toolbar-Search-Console {
  usual
  position -pos 2
}
preferences set plugin-enable-groupscope 0
preferences set plugin-enable-interleaveandcompare 0
preferences set plugin-enable-waveformfrequencyplot 0

#
# Databases
#
array set dbNames ""
set dbNames(realName1) simulator

#
# Mnemonic Maps
#
mmap new -reuse -name {Boolean as Logic} -radix %b -contents {{%c=FALSE -edgepriority 1 -shape low}
{%c=TRUE -edgepriority 1 -shape high}}
mmap new -reuse -name {Example Map} -radix %x -contents {{%b=11???? -bgcolor orange -label REG:%x -linecolor yellow -shape bus}
{%x=1F -bgcolor red -label ERROR -linecolor white -shape EVENT}
{%x=2C -bgcolor red -label ERROR -linecolor white -shape EVENT}
{%x=* -label %x -linecolor gray -shape bus}}

#
# Console windows
#
console set -windowname Console
window geometry Console 730x250+480+384

#
# Layout selection
#

