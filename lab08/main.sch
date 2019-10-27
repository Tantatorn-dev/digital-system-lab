<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A(7:0)" />
        <signal name="B(7:0)" />
        <signal name="Sum(7:0)" />
        <signal name="Sum(7:4)" />
        <signal name="Sum(3:0)" />
        <signal name="XLXN_1(3:0)" />
        <signal name="XLXN_2" />
        <signal name="common0" />
        <signal name="common1" />
        <signal name="common2" />
        <signal name="common3" />
        <signal name="OSC" />
        <signal name="XLXN_9(3:0)" />
        <signal name="SevSeg(6:0)" />
        <signal name="C(0)">
        </signal>
        <signal name="C(3:0)">
        </signal>
        <signal name="XLXN_13" />
        <signal name="XLXN_15" />
        <signal name="C(3:1)">
        </signal>
        <port polarity="Input" name="A(7:0)" />
        <port polarity="Input" name="B(7:0)" />
        <port polarity="Output" name="common0" />
        <port polarity="Output" name="common1" />
        <port polarity="Output" name="common2" />
        <port polarity="Output" name="common3" />
        <port polarity="Input" name="OSC" />
        <port polarity="Output" name="SevSeg(6:0)" />
        <blockdef name="add8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="336" y1="-128" y2="-148" x1="336" />
            <line x2="336" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-288" y2="-432" x1="64" />
            <line x2="64" y1="-256" y2="-288" x1="128" />
            <line x2="128" y1="-224" y2="-256" x1="64" />
            <line x2="64" y1="-80" y2="-224" x1="64" />
            <line x2="64" y1="-160" y2="-80" x1="384" />
            <line x2="384" y1="-336" y2="-160" x1="384" />
            <line x2="384" y1="-352" y2="-336" x1="384" />
            <line x2="384" y1="-432" y2="-352" x1="64" />
            <line x2="64" y1="-448" y2="-448" x1="128" />
            <line x2="128" y1="-416" y2="-448" x1="128" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <rect width="64" x="384" y="-268" height="24" />
            <line x2="384" y1="-256" y2="-256" x1="448" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="64" x="0" y="-332" height="24" />
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="384" y1="-64" y2="-64" x1="240" />
            <line x2="240" y1="-124" y2="-64" x1="240" />
            <line x2="384" y1="-64" y2="-64" x1="448" />
            <line x2="384" y1="-128" y2="-128" x1="448" />
        </blockdef>
        <blockdef name="Selector">
            <timestamp>2019-10-27T13:4:26</timestamp>
            <rect width="64" x="0" y="164" height="24" />
            <line x2="0" y1="176" y2="176" x1="64" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-220" height="24" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-320" height="528" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <block symbolname="add8" name="XLXI_1">
            <blockpin signalname="A(7:0)" name="A(7:0)" />
            <blockpin signalname="B(7:0)" name="B(7:0)" />
            <blockpin name="CI" />
            <blockpin signalname="C(0)" name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="Sum(7:0)" name="S(7:0)" />
        </block>
        <block symbolname="Selector" name="XLXI_2">
            <blockpin signalname="Sum(3:0)" name="N(3:0)" />
            <blockpin signalname="OSC" name="Clkin" />
            <blockpin signalname="Sum(7:4)" name="M(3:0)" />
            <blockpin signalname="SevSeg(6:0)" name="Output7(6:0)" />
            <blockpin signalname="common0" name="C0" />
            <blockpin signalname="common1" name="C1" />
            <blockpin signalname="common3" name="C3" />
            <blockpin signalname="common2" name="C2" />
            <blockpin signalname="C(3:0)" name="Carry(3:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_3(2:0)">
            <blockpin signalname="C(3:1)" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1056" y="1504" name="XLXI_1" orien="R0" />
        <branch name="A(7:0)">
            <wire x2="1056" y1="1184" y2="1184" x1="1024" />
        </branch>
        <branch name="B(7:0)">
            <wire x2="1056" y1="1312" y2="1312" x1="1024" />
        </branch>
        <branch name="Sum(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1248" type="branch" />
            <wire x2="1536" y1="1248" y2="1248" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1024" y="1184" name="A(7:0)" orien="R180" />
        <iomarker fontsize="28" x="1024" y="1312" name="B(7:0)" orien="R180" />
        <branch name="Sum(7:4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1200" type="branch" />
            <wire x2="1936" y1="1200" y2="1200" x1="1760" />
            <wire x2="1936" y1="1200" y2="1456" x1="1936" />
            <wire x2="2112" y1="1456" y2="1456" x1="1936" />
        </branch>
        <branch name="Sum(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1760" y="1280" type="branch" />
            <wire x2="1776" y1="1280" y2="1280" x1="1760" />
            <wire x2="1776" y1="1280" y2="1536" x1="1776" />
            <wire x2="2112" y1="1536" y2="1536" x1="1776" />
        </branch>
        <branch name="common0">
            <wire x2="2528" y1="1520" y2="1520" x1="2496" />
            <wire x2="2544" y1="1504" y2="1504" x1="2528" />
            <wire x2="2528" y1="1504" y2="1520" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1504" name="common0" orien="R0" />
        <branch name="common1">
            <wire x2="2528" y1="1584" y2="1584" x1="2496" />
            <wire x2="2544" y1="1568" y2="1568" x1="2528" />
            <wire x2="2528" y1="1568" y2="1584" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1568" name="common1" orien="R0" />
        <branch name="common2">
            <wire x2="2528" y1="1648" y2="1648" x1="2496" />
            <wire x2="2544" y1="1632" y2="1632" x1="2528" />
            <wire x2="2528" y1="1632" y2="1648" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1632" name="common2" orien="R0" />
        <branch name="common3">
            <wire x2="2528" y1="1712" y2="1712" x1="2496" />
            <wire x2="2544" y1="1696" y2="1696" x1="2528" />
            <wire x2="2528" y1="1696" y2="1712" x1="2528" />
        </branch>
        <iomarker fontsize="28" x="2544" y="1696" name="common3" orien="R0" />
        <branch name="OSC">
            <wire x2="2112" y1="1680" y2="1680" x1="2096" />
            <wire x2="2112" y1="1680" y2="1696" x1="2112" />
        </branch>
        <iomarker fontsize="28" x="2096" y="1680" name="OSC" orien="R180" />
        <instance x="2112" y="1744" name="XLXI_2" orien="R0">
        </instance>
        <branch name="SevSeg(6:0)">
            <wire x2="2528" y1="1840" y2="1840" x1="2496" />
        </branch>
        <iomarker fontsize="28" x="2528" y="1840" name="SevSeg(6:0)" orien="R0" />
        <branch name="C(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1440" type="branch" />
            <wire x2="1536" y1="1440" y2="1440" x1="1504" />
        </branch>
        <branch name="C(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2080" y="1920" type="branch" />
            <wire x2="2112" y1="1920" y2="1920" x1="2080" />
        </branch>
        <instance x="1168" y="1904" name="XLXI_3(2:0)" orien="R0" />
        <branch name="C(3:1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1472" y="1776" type="branch" />
            <wire x2="1232" y1="1696" y2="1776" x1="1232" />
            <wire x2="1312" y1="1696" y2="1696" x1="1232" />
            <wire x2="1312" y1="1696" y2="1776" x1="1312" />
            <wire x2="1472" y1="1776" y2="1776" x1="1312" />
        </branch>
    </sheet>
</drawing>