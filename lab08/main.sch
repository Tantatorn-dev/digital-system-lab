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
        <signal name="common0" />
        <signal name="common1" />
        <signal name="OSC" />
        <signal name="SevSeg(6:0)" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="Sum(7)" />
        <signal name="Sum(6)" />
        <signal name="Sum(5)" />
        <signal name="Sum(4)" />
        <signal name="Sum(3)" />
        <signal name="Sum(2)" />
        <signal name="Sum(1)" />
        <signal name="Sum(0)" />
        <signal name="Buzzer" />
        <signal name="common2" />
        <signal name="common3" />
        <port polarity="Input" name="A(7:0)" />
        <port polarity="Input" name="B(7:0)" />
        <port polarity="Output" name="common0" />
        <port polarity="Output" name="common1" />
        <port polarity="Input" name="OSC" />
        <port polarity="Output" name="SevSeg(6:0)" />
        <port polarity="Output" name="Buzzer" />
        <port polarity="Output" name="common2" />
        <port polarity="Output" name="common3" />
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
            <timestamp>2019-10-28T2:29:26</timestamp>
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-220" height="24" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <line x2="0" y1="-48" y2="-48" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="256" x="64" y="-320" height="608" />
        </blockdef>
        <blockdef name="and4b4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="40" y1="-128" y2="-128" x1="0" />
            <circle r="12" cx="52" cy="-128" />
            <line x2="40" y1="-192" y2="-192" x1="0" />
            <circle r="12" cx="52" cy="-192" />
            <line x2="40" y1="-256" y2="-256" x1="0" />
            <circle r="12" cx="52" cy="-256" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="64" y1="-112" y2="-112" x1="144" />
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
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <block symbolname="add8" name="XLXI_1">
            <blockpin signalname="A(7:0)" name="A(7:0)" />
            <blockpin signalname="B(7:0)" name="B(7:0)" />
            <blockpin name="CI" />
            <blockpin name="CO" />
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
        </block>
        <block symbolname="and4b4" name="XLXI_5">
            <blockpin signalname="Sum(4)" name="I0" />
            <blockpin signalname="Sum(5)" name="I1" />
            <blockpin signalname="Sum(6)" name="I2" />
            <blockpin signalname="Sum(7)" name="I3" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="and4b4" name="XLXI_6">
            <blockpin signalname="Sum(0)" name="I0" />
            <blockpin signalname="Sum(1)" name="I1" />
            <blockpin signalname="Sum(2)" name="I2" />
            <blockpin signalname="Sum(3)" name="I3" />
            <blockpin signalname="XLXN_18" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="XLXN_18" name="I0" />
            <blockpin signalname="XLXN_17" name="I1" />
            <blockpin signalname="Buzzer" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_8">
            <blockpin signalname="common2" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_9">
            <blockpin signalname="common3" name="P" />
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
        <instance x="2000" y="528" name="XLXI_5" orien="R0" />
        <instance x="2000" y="880" name="XLXI_6" orien="R0" />
        <instance x="2368" y="624" name="XLXI_7" orien="R0" />
        <branch name="XLXN_17">
            <wire x2="2304" y1="368" y2="368" x1="2256" />
            <wire x2="2304" y1="368" y2="496" x1="2304" />
            <wire x2="2368" y1="496" y2="496" x1="2304" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="2304" y1="720" y2="720" x1="2256" />
            <wire x2="2304" y1="560" y2="720" x1="2304" />
            <wire x2="2368" y1="560" y2="560" x1="2304" />
        </branch>
        <branch name="Sum(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="272" type="branch" />
            <wire x2="2000" y1="272" y2="272" x1="1968" />
        </branch>
        <branch name="Sum(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="336" type="branch" />
            <wire x2="2000" y1="336" y2="336" x1="1968" />
        </branch>
        <branch name="Sum(5)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="400" type="branch" />
            <wire x2="2000" y1="400" y2="400" x1="1968" />
        </branch>
        <branch name="Sum(4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="464" type="branch" />
            <wire x2="2000" y1="464" y2="464" x1="1968" />
        </branch>
        <branch name="Sum(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="624" type="branch" />
            <wire x2="2000" y1="624" y2="624" x1="1968" />
        </branch>
        <branch name="Sum(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="688" type="branch" />
            <wire x2="2000" y1="688" y2="688" x1="1968" />
        </branch>
        <branch name="Sum(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="752" type="branch" />
            <wire x2="2000" y1="752" y2="752" x1="1968" />
        </branch>
        <branch name="Sum(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1968" y="816" type="branch" />
            <wire x2="2000" y1="816" y2="816" x1="1968" />
        </branch>
        <branch name="Buzzer">
            <wire x2="2656" y1="528" y2="528" x1="2624" />
        </branch>
        <iomarker fontsize="28" x="2656" y="528" name="Buzzer" orien="R0" />
        <instance x="2800" y="2128" name="XLXI_8" orien="R0" />
        <iomarker fontsize="28" x="2976" y="2128" name="common2" orien="R270" />
        <branch name="common2">
            <wire x2="2864" y1="2128" y2="2144" x1="2864" />
            <wire x2="2976" y1="2144" y2="2144" x1="2864" />
            <wire x2="2976" y1="2128" y2="2144" x1="2976" />
        </branch>
        <instance x="3040" y="2144" name="XLXI_9" orien="R0" />
        <branch name="common3">
            <wire x2="3104" y1="2144" y2="2176" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3104" y="2176" name="common3" orien="R90" />
    </sheet>
</drawing>