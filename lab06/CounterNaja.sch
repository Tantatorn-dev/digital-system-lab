<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="SW" />
        <signal name="OutA_0" />
        <signal name="OutA_1" />
        <signal name="OutA_2" />
        <signal name="OutA_3" />
        <signal name="OutB_0" />
        <signal name="OutB_1" />
        <signal name="OutB_2" />
        <signal name="L7" />
        <signal name="XLXN_16" />
        <signal name="XLXN_18" />
        <signal name="ToSevSeg(3:0)" />
        <signal name="ToSevSeg(0)" />
        <signal name="ToSevSeg(1)" />
        <signal name="ToSevSeg(2)" />
        <signal name="ToSevSeg(3)" />
        <signal name="XLXN_76" />
        <signal name="COMMON0" />
        <signal name="COMMON2" />
        <signal name="COMMON3" />
        <signal name="SevSeg(6:0)" />
        <signal name="COMMON1" />
        <signal name="OSC" />
        <signal name="XLXN_124" />
        <signal name="XLXN_125" />
        <signal name="XLXN_126" />
        <signal name="XLXN_127" />
        <signal name="Buzzer">
        </signal>
        <signal name="swPush" />
        <signal name="Buzz" />
        <port polarity="Input" name="SW" />
        <port polarity="Output" name="COMMON0" />
        <port polarity="Output" name="COMMON2" />
        <port polarity="Output" name="COMMON3" />
        <port polarity="Output" name="SevSeg(6:0)" />
        <port polarity="Output" name="COMMON1" />
        <port polarity="Input" name="OSC" />
        <port polarity="Output" name="Buzz" />
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
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
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
        <blockdef name="BCDToSevSeg">
            <timestamp>2019-10-4T19:23:59</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="divider">
            <timestamp>2019-10-4T19:55:42</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="comp4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-640" height="576" />
            <line x2="320" y1="-352" y2="-352" x1="384" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
        </blockdef>
        <block symbolname="cd4ce" name="XLXI_1">
            <blockpin signalname="XLXN_16" name="C" />
            <blockpin signalname="XLXN_18" name="CE" />
            <blockpin name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="OutB_0" name="Q0" />
            <blockpin signalname="OutB_1" name="Q1" />
            <blockpin signalname="OutB_2" name="Q2" />
            <blockpin signalname="L7" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cd4ce" name="XLXI_2">
            <blockpin signalname="XLXN_76" name="C" />
            <blockpin signalname="XLXN_18" name="CE" />
            <blockpin name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="OutA_0" name="Q0" />
            <blockpin signalname="OutA_1" name="Q1" />
            <blockpin signalname="OutA_2" name="Q2" />
            <blockpin signalname="OutA_3" name="Q3" />
            <blockpin signalname="XLXN_16" name="TC" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="COMMON1" name="I0" />
            <blockpin signalname="SW" name="I1" />
            <blockpin signalname="XLXN_76" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="XLXN_18" name="P" />
        </block>
        <block symbolname="m2_1" name="XLXI_16">
            <blockpin signalname="OutA_3" name="D0" />
            <blockpin signalname="L7" name="D1" />
            <blockpin signalname="COMMON1" name="S0" />
            <blockpin signalname="ToSevSeg(3)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_17">
            <blockpin signalname="OutA_2" name="D0" />
            <blockpin signalname="OutB_2" name="D1" />
            <blockpin signalname="COMMON1" name="S0" />
            <blockpin signalname="ToSevSeg(2)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_18">
            <blockpin signalname="OutA_1" name="D0" />
            <blockpin signalname="OutB_1" name="D1" />
            <blockpin signalname="COMMON1" name="S0" />
            <blockpin signalname="ToSevSeg(1)" name="O" />
        </block>
        <block symbolname="m2_1" name="XLXI_19">
            <blockpin signalname="OutA_0" name="D0" />
            <blockpin signalname="OutB_0" name="D1" />
            <blockpin signalname="COMMON1" name="S0" />
            <blockpin signalname="ToSevSeg(0)" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_21">
            <blockpin signalname="COMMON1" name="I" />
            <blockpin signalname="COMMON0" name="O" />
        </block>
        <block symbolname="BCDToSevSeg" name="XLXI_32">
            <blockpin signalname="ToSevSeg(3:0)" name="Input(3:0)" />
            <blockpin signalname="SevSeg(6:0)" name="SevSeg(6:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_33">
            <blockpin signalname="COMMON2" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_34">
            <blockpin signalname="COMMON3" name="P" />
        </block>
        <block symbolname="divider" name="XLXI_40">
            <blockpin signalname="OSC" name="clk_in" />
            <blockpin signalname="COMMON1" name="clk_out" />
        </block>
        <block symbolname="comp4" name="XLXI_41">
            <blockpin signalname="OutB_0" name="A0" />
            <blockpin signalname="OutB_1" name="A1" />
            <blockpin signalname="OutB_2" name="A2" />
            <blockpin signalname="L7" name="A3" />
            <blockpin signalname="OutA_0" name="B0" />
            <blockpin signalname="OutA_1" name="B1" />
            <blockpin signalname="OutA_2" name="B2" />
            <blockpin signalname="OutA_3" name="B3" />
            <blockpin signalname="Buzzer" name="EQ" />
        </block>
        <block symbolname="inv" name="XLXI_42">
            <blockpin signalname="SW" name="I" />
            <blockpin signalname="swPush" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_43">
            <blockpin signalname="swPush" name="I0" />
            <blockpin signalname="Buzzer" name="I1" />
            <blockpin signalname="Buzz" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1248" y="1168" name="XLXI_1" orien="R0" />
        <instance x="1248" y="1760" name="XLXI_2" orien="R0" />
        <instance x="880" y="1920" name="XLXI_3" orien="R0" />
        <branch name="SW">
            <wire x2="832" y1="1792" y2="1792" x1="688" />
            <wire x2="848" y1="1792" y2="1792" x1="832" />
            <wire x2="880" y1="1792" y2="1792" x1="848" />
            <wire x2="832" y1="1616" y2="1792" x1="832" />
        </branch>
        <instance x="944" y="1584" name="XLXI_6" orien="R0" />
        <branch name="OutA_0">
            <wire x2="1664" y1="1312" y2="1312" x1="1632" />
            <wire x2="1696" y1="1312" y2="1312" x1="1664" />
            <wire x2="1824" y1="1312" y2="1312" x1="1696" />
            <wire x2="1824" y1="1312" y2="1568" x1="1824" />
            <wire x2="1984" y1="1568" y2="1568" x1="1824" />
            <wire x2="1840" y1="352" y2="352" x1="1696" />
            <wire x2="1696" y1="352" y2="1312" x1="1696" />
        </branch>
        <branch name="OutA_1">
            <wire x2="1664" y1="1376" y2="1376" x1="1632" />
            <wire x2="1664" y1="1344" y2="1376" x1="1664" />
            <wire x2="1744" y1="1344" y2="1344" x1="1664" />
            <wire x2="1984" y1="1344" y2="1344" x1="1744" />
            <wire x2="1840" y1="416" y2="416" x1="1744" />
            <wire x2="1744" y1="416" y2="1344" x1="1744" />
        </branch>
        <branch name="OutA_2">
            <wire x2="1664" y1="1440" y2="1440" x1="1632" />
            <wire x2="1752" y1="1440" y2="1440" x1="1664" />
            <wire x2="1760" y1="1440" y2="1440" x1="1752" />
            <wire x2="1776" y1="1440" y2="1440" x1="1760" />
            <wire x2="1760" y1="480" y2="1440" x1="1760" />
            <wire x2="1840" y1="480" y2="480" x1="1760" />
            <wire x2="1776" y1="1120" y2="1440" x1="1776" />
            <wire x2="1984" y1="1120" y2="1120" x1="1776" />
        </branch>
        <branch name="OutA_3">
            <wire x2="1664" y1="1504" y2="1504" x1="1632" />
            <wire x2="1792" y1="1504" y2="1504" x1="1664" />
            <wire x2="1840" y1="1504" y2="1504" x1="1792" />
            <wire x2="1728" y1="544" y2="1488" x1="1728" />
            <wire x2="1792" y1="1488" y2="1488" x1="1728" />
            <wire x2="1792" y1="1488" y2="1504" x1="1792" />
            <wire x2="1840" y1="544" y2="544" x1="1728" />
            <wire x2="1840" y1="896" y2="1504" x1="1840" />
            <wire x2="1984" y1="896" y2="896" x1="1840" />
        </branch>
        <branch name="OutB_0">
            <wire x2="1664" y1="720" y2="720" x1="1632" />
            <wire x2="1712" y1="720" y2="720" x1="1664" />
            <wire x2="1808" y1="720" y2="720" x1="1712" />
            <wire x2="1808" y1="720" y2="1632" x1="1808" />
            <wire x2="1984" y1="1632" y2="1632" x1="1808" />
            <wire x2="1840" y1="96" y2="96" x1="1712" />
            <wire x2="1712" y1="96" y2="720" x1="1712" />
        </branch>
        <branch name="OutB_1">
            <wire x2="1664" y1="784" y2="784" x1="1632" />
            <wire x2="1712" y1="784" y2="784" x1="1664" />
            <wire x2="1792" y1="784" y2="784" x1="1712" />
            <wire x2="1792" y1="784" y2="1408" x1="1792" />
            <wire x2="1984" y1="1408" y2="1408" x1="1792" />
            <wire x2="1712" y1="736" y2="784" x1="1712" />
            <wire x2="1824" y1="736" y2="736" x1="1712" />
            <wire x2="1824" y1="160" y2="736" x1="1824" />
            <wire x2="1840" y1="160" y2="160" x1="1824" />
        </branch>
        <branch name="OutB_2">
            <wire x2="1664" y1="848" y2="848" x1="1632" />
            <wire x2="1680" y1="848" y2="848" x1="1664" />
            <wire x2="1680" y1="848" y2="1184" x1="1680" />
            <wire x2="1984" y1="1184" y2="1184" x1="1680" />
            <wire x2="1664" y1="832" y2="848" x1="1664" />
            <wire x2="1776" y1="832" y2="832" x1="1664" />
            <wire x2="1776" y1="224" y2="832" x1="1776" />
            <wire x2="1840" y1="224" y2="224" x1="1776" />
        </branch>
        <branch name="L7">
            <wire x2="1648" y1="912" y2="912" x1="1632" />
            <wire x2="1664" y1="912" y2="912" x1="1648" />
            <wire x2="1664" y1="912" y2="960" x1="1664" />
            <wire x2="1984" y1="960" y2="960" x1="1664" />
            <wire x2="1648" y1="656" y2="912" x1="1648" />
            <wire x2="1680" y1="656" y2="656" x1="1648" />
            <wire x2="1680" y1="288" y2="656" x1="1680" />
            <wire x2="1840" y1="288" y2="288" x1="1680" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="1248" y1="1040" y2="1040" x1="1184" />
            <wire x2="1184" y1="1040" y2="1200" x1="1184" />
            <wire x2="1648" y1="1200" y2="1200" x1="1184" />
            <wire x2="1648" y1="1200" y2="1632" x1="1648" />
            <wire x2="1648" y1="1632" y2="1632" x1="1632" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="1008" y1="1584" y2="1664" x1="1008" />
            <wire x2="1072" y1="1664" y2="1664" x1="1008" />
            <wire x2="1248" y1="976" y2="976" x1="1072" />
            <wire x2="1072" y1="976" y2="1568" x1="1072" />
            <wire x2="1072" y1="1568" y2="1664" x1="1072" />
            <wire x2="1216" y1="1568" y2="1568" x1="1072" />
            <wire x2="1248" y1="1568" y2="1568" x1="1216" />
        </branch>
        <branch name="ToSevSeg(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2720" y="1008" type="branch" />
            <wire x2="2752" y1="1008" y2="1008" x1="2720" />
        </branch>
        <instance x="1984" y="1728" name="XLXI_19" orien="R0" />
        <instance x="1984" y="1504" name="XLXI_18" orien="R0" />
        <instance x="1984" y="1280" name="XLXI_17" orien="R0" />
        <instance x="1984" y="1056" name="XLXI_16" orien="R0" />
        <branch name="ToSevSeg(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="1600" type="branch" />
            <wire x2="2352" y1="1600" y2="1600" x1="2304" />
        </branch>
        <branch name="ToSevSeg(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="1376" type="branch" />
            <wire x2="2352" y1="1376" y2="1376" x1="2304" />
        </branch>
        <branch name="ToSevSeg(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2352" y="1152" type="branch" />
            <wire x2="2352" y1="1152" y2="1152" x1="2304" />
        </branch>
        <branch name="ToSevSeg(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2336" y="928" type="branch" />
            <wire x2="2336" y1="928" y2="928" x1="2304" />
        </branch>
        <branch name="XLXN_76">
            <wire x2="1184" y1="1824" y2="1824" x1="1136" />
            <wire x2="1184" y1="1632" y2="1824" x1="1184" />
            <wire x2="1248" y1="1632" y2="1632" x1="1184" />
        </branch>
        <instance x="2240" y="2208" name="XLXI_21" orien="R0" />
        <branch name="COMMON0">
            <wire x2="2496" y1="2176" y2="2176" x1="2464" />
        </branch>
        <iomarker fontsize="28" x="2496" y="2176" name="COMMON0" orien="R0" />
        <branch name="COMMON2">
            <wire x2="2848" y1="1392" y2="1472" x1="2848" />
            <wire x2="2896" y1="1472" y2="1472" x1="2848" />
            <wire x2="2896" y1="1072" y2="1472" x1="2896" />
            <wire x2="3136" y1="1072" y2="1072" x1="2896" />
            <wire x2="3168" y1="1072" y2="1072" x1="3136" />
        </branch>
        <iomarker fontsize="28" x="3168" y="1072" name="COMMON2" orien="R0" />
        <branch name="COMMON3">
            <wire x2="3136" y1="1136" y2="1136" x1="3104" />
            <wire x2="3168" y1="1136" y2="1136" x1="3136" />
            <wire x2="3104" y1="1136" y2="1536" x1="3104" />
            <wire x2="3168" y1="1536" y2="1536" x1="3104" />
            <wire x2="3168" y1="1456" y2="1536" x1="3168" />
        </branch>
        <iomarker fontsize="28" x="3168" y="1136" name="COMMON3" orien="R0" />
        <instance x="2752" y="1040" name="XLXI_32" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3248" y="1008" name="SevSeg(6:0)" orien="R0" />
        <branch name="SevSeg(6:0)">
            <wire x2="3216" y1="1008" y2="1008" x1="3136" />
            <wire x2="3248" y1="1008" y2="1008" x1="3216" />
        </branch>
        <instance x="2784" y="1392" name="XLXI_33" orien="R0" />
        <instance x="3104" y="1456" name="XLXI_34" orien="R0" />
        <instance x="864" y="2192" name="XLXI_40" orien="R0">
        </instance>
        <branch name="COMMON1">
            <wire x2="880" y1="1856" y2="1856" x1="816" />
            <wire x2="816" y1="1856" y2="1936" x1="816" />
            <wire x2="1488" y1="1936" y2="1936" x1="816" />
            <wire x2="1488" y1="1936" y2="2160" x1="1488" />
            <wire x2="1744" y1="2160" y2="2160" x1="1488" />
            <wire x2="1744" y1="2160" y2="2176" x1="1744" />
            <wire x2="1840" y1="2176" y2="2176" x1="1744" />
            <wire x2="2048" y1="2176" y2="2176" x1="1840" />
            <wire x2="2240" y1="2176" y2="2176" x1="2048" />
            <wire x2="1488" y1="2160" y2="2160" x1="1248" />
            <wire x2="1840" y1="1696" y2="2176" x1="1840" />
            <wire x2="1856" y1="1696" y2="1696" x1="1840" />
            <wire x2="1984" y1="1696" y2="1696" x1="1856" />
            <wire x2="1856" y1="1696" y2="1712" x1="1856" />
            <wire x2="1936" y1="1712" y2="1712" x1="1856" />
            <wire x2="1856" y1="1472" y2="1696" x1="1856" />
            <wire x2="1984" y1="1472" y2="1472" x1="1856" />
            <wire x2="1984" y1="1024" y2="1024" x1="1936" />
            <wire x2="1936" y1="1024" y2="1248" x1="1936" />
            <wire x2="1936" y1="1248" y2="1712" x1="1936" />
            <wire x2="1984" y1="1248" y2="1248" x1="1936" />
            <wire x2="2304" y1="1984" y2="1984" x1="2048" />
            <wire x2="2048" y1="1984" y2="2176" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="2304" y="1984" name="COMMON1" orien="R0" />
        <branch name="OSC">
            <wire x2="864" y1="2160" y2="2160" x1="832" />
        </branch>
        <iomarker fontsize="28" x="832" y="2160" name="OSC" orien="R180" />
        <instance x="1840" y="672" name="XLXI_41" orien="R0" />
        <branch name="Buzzer">
            <wire x2="2256" y1="320" y2="320" x1="2224" />
            <wire x2="2416" y1="320" y2="320" x1="2256" />
        </branch>
        <iomarker fontsize="28" x="688" y="1792" name="SW" orien="R180" />
        <instance x="864" y="1616" name="XLXI_42" orien="R270" />
        <branch name="swPush">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="832" y="1296" type="branch" />
            <wire x2="832" y1="1296" y2="1392" x1="832" />
        </branch>
        <instance x="2416" y="448" name="XLXI_43" orien="R0" />
        <branch name="Buzz">
            <wire x2="2704" y1="352" y2="352" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2704" y="352" name="Buzz" orien="R0" />
        <branch name="swPush">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2416" y="480" type="branch" />
            <wire x2="2416" y1="384" y2="384" x1="2400" />
            <wire x2="2400" y1="384" y2="480" x1="2400" />
            <wire x2="2416" y1="480" y2="480" x1="2400" />
        </branch>
    </sheet>
</drawing>