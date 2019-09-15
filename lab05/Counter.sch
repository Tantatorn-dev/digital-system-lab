<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_6" />
        <signal name="XLXN_15" />
        <signal name="Input(3:0)">
        </signal>
        <signal name="COM1" />
        <signal name="COM2" />
        <signal name="COM3" />
        <signal name="Seven(6:0)" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="Input(2)" />
        <signal name="Input(0)">
        </signal>
        <signal name="XLXN_42" />
        <signal name="Input(1)">
        </signal>
        <signal name="XLXN_45" />
        <signal name="Clr">
            <attr value="P46" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="XLXN_47" />
        <signal name="Clk">
            <attr value="P45" name="LOC">
                <trait verilog="all:0 wsynth:1" />
                <trait vhdl="all:0 wa:1 wd:1" />
            </attr>
        </signal>
        <signal name="XLXN_49" />
        <signal name="XLXN_50" />
        <port polarity="Output" name="COM1" />
        <port polarity="Output" name="COM2" />
        <port polarity="Output" name="COM3" />
        <port polarity="Output" name="Seven(6:0)" />
        <port polarity="Input" name="Clr" />
        <port polarity="Input" name="Clk" />
        <blockdef name="FourBitsToSevenSegment">
            <timestamp>2019-9-15T9:26:11</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="fjkc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="256" x="64" y="-384" height="320" />
        </blockdef>
        <blockdef name="fjkp">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-416" y2="-416" x1="192" />
            <line x2="192" y1="-384" y2="-416" x1="192" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-416" y2="-416" x1="0" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="fjkp" name="XLXI_6">
            <blockpin signalname="XLXN_49" name="C" />
            <blockpin signalname="XLXN_37" name="J" />
            <blockpin signalname="XLXN_37" name="K" />
            <blockpin signalname="Clr" name="PRE" />
            <blockpin signalname="Input(0)" name="Q" />
        </block>
        <block symbolname="fjkc" name="XLXI_7">
            <blockpin signalname="XLXN_49" name="C" />
            <blockpin signalname="Clr" name="CLR" />
            <blockpin signalname="Input(0)" name="J" />
            <blockpin signalname="XLXN_42" name="K" />
            <blockpin signalname="Input(1)" name="Q" />
        </block>
        <block symbolname="fjkc" name="XLXI_8">
            <blockpin signalname="XLXN_49" name="C" />
            <blockpin signalname="Clr" name="CLR" />
            <blockpin signalname="XLXN_45" name="J" />
            <blockpin signalname="Input(1)" name="K" />
            <blockpin signalname="Input(2)" name="Q" />
        </block>
        <block symbolname="FourBitsToSevenSegment" name="XLXI_2">
            <blockpin signalname="Input(3:0)" name="Input(3:0)" />
            <blockpin signalname="COM1" name="COMMON1" />
            <blockpin signalname="COM2" name="COMMON2" />
            <blockpin signalname="COM3" name="COMMON3" />
            <blockpin signalname="Seven(6:0)" name="SevSeg(6:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_12">
            <blockpin signalname="XLXN_37" name="P" />
        </block>
        <block symbolname="or2" name="XLXI_13">
            <blockpin signalname="Input(2)" name="I0" />
            <blockpin signalname="Input(0)" name="I1" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="Input(1)" name="I0" />
            <blockpin signalname="Input(0)" name="I1" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_15">
            <blockpin signalname="Clk" name="I" />
            <blockpin signalname="XLXN_49" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2352" y="1168" name="XLXI_2" orien="R0">
        </instance>
        <branch name="Input(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2320" y="944" type="branch" />
            <wire x2="2352" y1="944" y2="944" x1="2320" />
        </branch>
        <branch name="COM1">
            <wire x2="2768" y1="944" y2="944" x1="2736" />
        </branch>
        <branch name="COM2">
            <wire x2="2768" y1="1008" y2="1008" x1="2736" />
        </branch>
        <branch name="COM3">
            <wire x2="2768" y1="1072" y2="1072" x1="2736" />
        </branch>
        <branch name="Seven(6:0)">
            <wire x2="2768" y1="1136" y2="1136" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="2768" y="944" name="COM1" orien="R0" />
        <iomarker fontsize="28" x="2768" y="1008" name="COM2" orien="R0" />
        <iomarker fontsize="28" x="2768" y="1072" name="COM3" orien="R0" />
        <iomarker fontsize="28" x="2768" y="1136" name="Seven(6:0)" orien="R0" />
        <instance x="336" y="1248" name="XLXI_6" orien="R0" />
        <instance x="1408" y="1248" name="XLXI_8" orien="R0" />
        <instance x="112" y="1040" name="XLXI_12" orien="R0" />
        <branch name="XLXN_37">
            <wire x2="176" y1="1040" y2="1104" x1="176" />
            <wire x2="272" y1="1104" y2="1104" x1="176" />
            <wire x2="336" y1="928" y2="928" x1="272" />
            <wire x2="272" y1="928" y2="992" x1="272" />
            <wire x2="272" y1="992" y2="1104" x1="272" />
            <wire x2="336" y1="992" y2="992" x1="272" />
        </branch>
        <instance x="864" y="464" name="XLXI_13" orien="R0" />
        <branch name="Input(2)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="1200" type="branch" />
            <wire x2="864" y1="400" y2="400" x1="800" />
            <wire x2="800" y1="400" y2="480" x1="800" />
            <wire x2="1856" y1="480" y2="480" x1="800" />
            <wire x2="1856" y1="480" y2="992" x1="1856" />
            <wire x2="2016" y1="992" y2="992" x1="1856" />
            <wire x2="2016" y1="992" y2="1200" x1="2016" />
            <wire x2="1856" y1="992" y2="992" x1="1792" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="1200" y1="800" y2="800" x1="816" />
            <wire x2="816" y1="800" y2="992" x1="816" />
            <wire x2="832" y1="992" y2="992" x1="816" />
            <wire x2="1200" y1="368" y2="368" x1="1120" />
            <wire x2="1200" y1="368" y2="800" x1="1200" />
        </branch>
        <instance x="1424" y="464" name="XLXI_14" orien="R0" />
        <branch name="Input(1)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="1168" type="branch" />
            <wire x2="1312" y1="992" y2="992" x1="1216" />
            <wire x2="1408" y1="992" y2="992" x1="1312" />
            <wire x2="1312" y1="992" y2="1344" x1="1312" />
            <wire x2="2080" y1="1344" y2="1344" x1="1312" />
            <wire x2="1312" y1="400" y2="992" x1="1312" />
            <wire x2="1424" y1="400" y2="400" x1="1312" />
            <wire x2="2080" y1="1168" y2="1344" x1="2080" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1408" y1="928" y2="928" x1="1344" />
            <wire x2="1344" y1="928" y2="1280" x1="1344" />
            <wire x2="1840" y1="1280" y2="1280" x1="1344" />
            <wire x2="1840" y1="368" y2="368" x1="1680" />
            <wire x2="1840" y1="368" y2="1280" x1="1840" />
        </branch>
        <branch name="Clr">
            <wire x2="336" y1="768" y2="768" x1="288" />
            <wire x2="336" y1="768" y2="832" x1="336" />
            <wire x2="288" y1="768" y2="1216" x1="288" />
            <wire x2="832" y1="1216" y2="1216" x1="288" />
            <wire x2="288" y1="1216" y2="1312" x1="288" />
            <wire x2="1408" y1="1312" y2="1312" x1="288" />
            <wire x2="336" y1="672" y2="768" x1="336" />
            <wire x2="1408" y1="1216" y2="1312" x1="1408" />
        </branch>
        <iomarker fontsize="28" x="336" y="672" name="Clr" orien="R270" />
        <instance x="240" y="1456" name="XLXI_15" orien="R0" />
        <branch name="Clk">
            <wire x2="240" y1="1424" y2="1424" x1="208" />
        </branch>
        <iomarker fontsize="28" x="208" y="1424" name="Clk" orien="R180" />
        <branch name="XLXN_49">
            <wire x2="320" y1="784" y2="1120" x1="320" />
            <wire x2="336" y1="1120" y2="1120" x1="320" />
            <wire x2="768" y1="784" y2="784" x1="320" />
            <wire x2="768" y1="784" y2="1424" x1="768" />
            <wire x2="800" y1="1424" y2="1424" x1="768" />
            <wire x2="1296" y1="1424" y2="1424" x1="800" />
            <wire x2="768" y1="1424" y2="1424" x1="464" />
            <wire x2="800" y1="1120" y2="1424" x1="800" />
            <wire x2="832" y1="1120" y2="1120" x1="800" />
            <wire x2="1296" y1="1120" y2="1424" x1="1296" />
            <wire x2="1408" y1="1120" y2="1120" x1="1296" />
        </branch>
        <branch name="Input(0)">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="2000" y="944" type="branch" />
            <wire x2="784" y1="992" y2="992" x1="720" />
            <wire x2="784" y1="992" y2="1264" x1="784" />
            <wire x2="2000" y1="1264" y2="1264" x1="784" />
            <wire x2="800" y1="992" y2="992" x1="784" />
            <wire x2="864" y1="336" y2="336" x1="784" />
            <wire x2="784" y1="336" y2="656" x1="784" />
            <wire x2="784" y1="656" y2="992" x1="784" />
            <wire x2="1136" y1="656" y2="656" x1="784" />
            <wire x2="800" y1="928" y2="992" x1="800" />
            <wire x2="832" y1="928" y2="928" x1="800" />
            <wire x2="1424" y1="336" y2="336" x1="1136" />
            <wire x2="1136" y1="336" y2="656" x1="1136" />
            <wire x2="2000" y1="944" y2="1264" x1="2000" />
        </branch>
        <instance x="832" y="1248" name="XLXI_7" orien="R0" />
    </sheet>
</drawing>