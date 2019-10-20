<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk_in" />
        <signal name="A(0)">
        </signal>
        <signal name="A(1)">
        </signal>
        <signal name="A(2)">
        </signal>
        <signal name="A(3)">
        </signal>
        <signal name="A(3:0)" />
        <signal name="B(1)">
        </signal>
        <signal name="B(2)">
        </signal>
        <signal name="B(3)">
        </signal>
        <signal name="B(3:0)" />
        <signal name="XLXN_14" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="B(0)">
        </signal>
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="clear" />
        <signal name="XLXN_31" />
        <port polarity="Input" name="clk_in" />
        <port polarity="Output" name="A(3:0)" />
        <port polarity="Output" name="B(3:0)" />
        <port polarity="Input" name="clear" />
        <blockdef name="cd4ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <rect width="256" x="64" y="-512" height="448" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
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
        <block symbolname="cd4ce" name="XLXI_1">
            <blockpin signalname="clk_in" name="C" />
            <blockpin signalname="XLXN_19" name="CE" />
            <blockpin signalname="XLXN_31" name="CLR" />
            <blockpin signalname="XLXN_14" name="CEO" />
            <blockpin signalname="A(0)" name="Q0" />
            <blockpin signalname="A(1)" name="Q1" />
            <blockpin signalname="A(2)" name="Q2" />
            <blockpin signalname="A(3)" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cd4ce" name="XLXI_2">
            <blockpin signalname="XLXN_14" name="C" />
            <blockpin signalname="XLXN_19" name="CE" />
            <blockpin signalname="XLXN_31" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="B(0)" name="Q0" />
            <blockpin signalname="B(1)" name="Q1" />
            <blockpin signalname="B(2)" name="Q2" />
            <blockpin signalname="B(3)" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="vcc" name="XLXI_3">
            <blockpin signalname="XLXN_19" name="P" />
        </block>
        <block symbolname="and4" name="XLXI_6">
            <blockpin signalname="XLXN_26" name="I0" />
            <blockpin signalname="B(2)" name="I1" />
            <blockpin signalname="B(1)" name="I2" />
            <blockpin signalname="XLXN_22" name="I3" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="B(0)" name="I" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="B(3)" name="I" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_9">
            <blockpin signalname="XLXN_29" name="I0" />
            <blockpin signalname="clear" name="I1" />
            <blockpin signalname="XLXN_31" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1376" y="1808" name="XLXI_1" orien="R0" />
        <instance x="1392" y="1088" name="XLXI_2" orien="R0" />
        <branch name="clk_in">
            <wire x2="1376" y1="1680" y2="1680" x1="1344" />
        </branch>
        <iomarker fontsize="28" x="1344" y="1680" name="clk_in" orien="R180" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1360" type="branch" />
            <wire x2="1792" y1="1360" y2="1360" x1="1760" />
        </branch>
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1424" type="branch" />
            <wire x2="1792" y1="1424" y2="1424" x1="1760" />
        </branch>
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1488" type="branch" />
            <wire x2="1792" y1="1488" y2="1488" x1="1760" />
        </branch>
        <branch name="A(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1552" type="branch" />
            <wire x2="1792" y1="1552" y2="1552" x1="1760" />
        </branch>
        <branch name="A(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="1376" type="branch" />
            <wire x2="2256" y1="1376" y2="1376" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2256" y="1376" name="A(3:0)" orien="R0" />
        <branch name="B(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="640" type="branch" />
            <wire x2="1856" y1="640" y2="640" x1="1776" />
            <wire x2="1904" y1="640" y2="640" x1="1856" />
            <wire x2="2064" y1="64" y2="64" x1="1856" />
            <wire x2="1856" y1="64" y2="224" x1="1856" />
            <wire x2="1856" y1="224" y2="640" x1="1856" />
        </branch>
        <branch name="B(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="704" type="branch" />
            <wire x2="1840" y1="704" y2="704" x1="1776" />
            <wire x2="1904" y1="704" y2="704" x1="1840" />
            <wire x2="1840" y1="272" y2="704" x1="1840" />
            <wire x2="2160" y1="272" y2="272" x1="1840" />
            <wire x2="2160" y1="224" y2="272" x1="2160" />
            <wire x2="2496" y1="224" y2="224" x1="2160" />
        </branch>
        <branch name="B(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="768" type="branch" />
            <wire x2="1824" y1="768" y2="768" x1="1776" />
            <wire x2="1904" y1="768" y2="768" x1="1824" />
            <wire x2="2496" y1="288" y2="288" x1="1824" />
            <wire x2="1824" y1="288" y2="336" x1="1824" />
            <wire x2="1824" y1="336" y2="768" x1="1824" />
        </branch>
        <branch name="B(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2016" y="640" type="branch" />
            <wire x2="2048" y1="640" y2="640" x1="2016" />
            <wire x2="2256" y1="640" y2="640" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="2256" y="640" name="B(3:0)" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="1392" y1="960" y2="960" x1="1328" />
            <wire x2="1328" y1="960" y2="1136" x1="1328" />
            <wire x2="1824" y1="1136" y2="1136" x1="1328" />
            <wire x2="1824" y1="1136" y2="1616" x1="1824" />
            <wire x2="1824" y1="1616" y2="1616" x1="1760" />
        </branch>
        <instance x="800" y="1216" name="XLXI_3" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="864" y1="1216" y2="1232" x1="864" />
            <wire x2="864" y1="1232" y2="1616" x1="864" />
            <wire x2="1376" y1="1616" y2="1616" x1="864" />
            <wire x2="1120" y1="1232" y2="1232" x1="864" />
            <wire x2="1120" y1="896" y2="1232" x1="1120" />
            <wire x2="1392" y1="896" y2="896" x1="1120" />
        </branch>
        <instance x="2064" y="96" name="XLXI_7" orien="R0" />
        <instance x="2064" y="480" name="XLXI_8" orien="R0" />
        <instance x="2496" y="416" name="XLXI_6" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="2496" y1="64" y2="64" x1="2288" />
            <wire x2="2496" y1="64" y2="160" x1="2496" />
        </branch>
        <branch name="B(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1904" y="832" type="branch" />
            <wire x2="1808" y1="832" y2="832" x1="1776" />
            <wire x2="1904" y1="832" y2="832" x1="1808" />
            <wire x2="1808" y1="576" y2="576" x1="1792" />
            <wire x2="1792" y1="576" y2="816" x1="1792" />
            <wire x2="1808" y1="816" y2="816" x1="1792" />
            <wire x2="1808" y1="816" y2="832" x1="1808" />
            <wire x2="2064" y1="448" y2="448" x1="1808" />
            <wire x2="1808" y1="448" y2="576" x1="1808" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="2496" y1="448" y2="448" x1="2288" />
            <wire x2="2496" y1="352" y2="448" x1="2496" />
        </branch>
        <instance x="480" y="1872" name="XLXI_9" orien="R0" />
        <branch name="XLXN_29">
            <wire x2="480" y1="1808" y2="1808" x1="448" />
            <wire x2="448" y1="1808" y2="2112" x1="448" />
            <wire x2="1248" y1="2112" y2="2112" x1="448" />
            <wire x2="2832" y1="2112" y2="2112" x1="1248" />
            <wire x2="2832" y1="256" y2="256" x1="2752" />
            <wire x2="2832" y1="256" y2="2112" x1="2832" />
        </branch>
        <branch name="clear">
            <wire x2="480" y1="1744" y2="1744" x1="448" />
        </branch>
        <iomarker fontsize="28" x="448" y="1744" name="clear" orien="R180" />
        <branch name="XLXN_31">
            <wire x2="1056" y1="1776" y2="1776" x1="736" />
            <wire x2="1376" y1="1776" y2="1776" x1="1056" />
            <wire x2="1056" y1="1056" y2="1776" x1="1056" />
            <wire x2="1392" y1="1056" y2="1056" x1="1056" />
        </branch>
    </sheet>
</drawing>