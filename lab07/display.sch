<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="data(6:0)" />
        <signal name="B2(3)" />
        <signal name="B1(3)" />
        <signal name="A2(3)" />
        <signal name="A1(3)" />
        <signal name="B1(2)" />
        <signal name="A2(2)" />
        <signal name="A1(2)" />
        <signal name="B1(1)" />
        <signal name="A2(1)" />
        <signal name="A1(1)" />
        <signal name="B1(0)" />
        <signal name="A2(0)" />
        <signal name="A1(0)" />
        <signal name="B2(3:0)" />
        <signal name="A2(3:0)" />
        <signal name="B1(3:0)" />
        <signal name="A1(3:0)" />
        <signal name="B2(2)" />
        <signal name="B2(1)" />
        <signal name="B2(0)" />
        <signal name="clk" />
        <signal name="XLXN_31" />
        <signal name="XLXN_47" />
        <signal name="data_in(3:0)" />
        <signal name="data_in(3)" />
        <signal name="data_in(2)" />
        <signal name="data_in(1)" />
        <signal name="data_in(0)" />
        <signal name="XLXN_87" />
        <signal name="XLXN_88" />
        <signal name="XLXN_89" />
        <signal name="XLXN_90" />
        <signal name="XLXN_91" />
        <signal name="XLXN_92" />
        <signal name="XLXN_93" />
        <signal name="XLXN_94" />
        <signal name="XLXN_95" />
        <signal name="XLXN_96" />
        <signal name="XLXN_97" />
        <signal name="XLXN_98" />
        <signal name="C3" />
        <signal name="C1" />
        <signal name="C0" />
        <signal name="C2" />
        <port polarity="Output" name="data(6:0)" />
        <port polarity="Input" name="B2(3:0)" />
        <port polarity="Input" name="A2(3:0)" />
        <port polarity="Input" name="B1(3:0)" />
        <port polarity="Input" name="A1(3:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="C3" />
        <port polarity="Output" name="C1" />
        <port polarity="Output" name="C0" />
        <port polarity="Output" name="C2" />
        <blockdef name="BCDToSevSeg">
            <timestamp>2019-10-20T12:25:45</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="m4_1e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-416" y2="-416" x1="0" />
            <line x2="96" y1="-352" y2="-352" x1="0" />
            <line x2="96" y1="-288" y2="-288" x1="0" />
            <line x2="96" y1="-224" y2="-224" x1="0" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-320" y2="-320" x1="320" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-96" y2="-96" x1="176" />
            <line x2="176" y1="-208" y2="-96" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="224" />
            <line x2="224" y1="-216" y2="-32" x1="224" />
            <line x2="96" y1="-224" y2="-192" x1="256" />
            <line x2="256" y1="-416" y2="-224" x1="256" />
            <line x2="256" y1="-448" y2="-416" x1="96" />
            <line x2="96" y1="-192" y2="-448" x1="96" />
            <line x2="96" y1="-160" y2="-160" x1="128" />
            <line x2="128" y1="-200" y2="-160" x1="128" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="cb2ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <blockdef name="d2_4e">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="320" y1="-128" y2="-128" x1="384" />
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="320" y1="-320" y2="-320" x1="384" />
        </blockdef>
        <blockdef name="inv4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="160" y1="-96" y2="-96" x1="224" />
            <line x2="160" y1="-160" y2="-160" x1="224" />
            <line x2="160" y1="-224" y2="-224" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-96" y2="-96" x1="0" />
            <line x2="64" y1="-160" y2="-160" x1="0" />
            <line x2="64" y1="-224" y2="-224" x1="0" />
            <line x2="128" y1="-256" y2="-224" x1="64" />
            <line x2="64" y1="-224" y2="-192" x1="128" />
            <line x2="64" y1="-192" y2="-256" x1="64" />
            <circle r="16" cx="144" cy="-32" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="128" y1="-128" y2="-96" x1="64" />
            <line x2="64" y1="-96" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="-128" x1="64" />
            <circle r="16" cx="144" cy="-96" />
            <line x2="128" y1="-192" y2="-160" x1="64" />
            <line x2="64" y1="-160" y2="-128" x1="128" />
            <line x2="64" y1="-128" y2="-192" x1="64" />
            <circle r="16" cx="144" cy="-160" />
            <circle r="16" cx="144" cy="-224" />
        </blockdef>
        <block symbolname="BCDToSevSeg" name="XLXI_1">
            <blockpin signalname="data_in(3:0)" name="Input(3:0)" />
            <blockpin signalname="data(6:0)" name="SevSeg(6:0)" />
        </block>
        <block symbolname="m4_1e" name="XLXI_8">
            <blockpin signalname="B2(3)" name="D0" />
            <blockpin signalname="B1(3)" name="D1" />
            <blockpin signalname="A2(3)" name="D2" />
            <blockpin signalname="A1(3)" name="D3" />
            <blockpin signalname="XLXN_31" name="E" />
            <blockpin signalname="XLXN_91" name="S0" />
            <blockpin signalname="XLXN_92" name="S1" />
            <blockpin signalname="data_in(3)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_9">
            <blockpin signalname="B2(2)" name="D0" />
            <blockpin signalname="B1(2)" name="D1" />
            <blockpin signalname="A2(2)" name="D2" />
            <blockpin signalname="A1(2)" name="D3" />
            <blockpin signalname="XLXN_31" name="E" />
            <blockpin signalname="XLXN_91" name="S0" />
            <blockpin signalname="XLXN_92" name="S1" />
            <blockpin signalname="data_in(2)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_10">
            <blockpin signalname="B2(1)" name="D0" />
            <blockpin signalname="B1(1)" name="D1" />
            <blockpin signalname="A2(1)" name="D2" />
            <blockpin signalname="A1(1)" name="D3" />
            <blockpin signalname="XLXN_31" name="E" />
            <blockpin signalname="XLXN_91" name="S0" />
            <blockpin signalname="XLXN_92" name="S1" />
            <blockpin signalname="data_in(1)" name="O" />
        </block>
        <block symbolname="m4_1e" name="XLXI_11">
            <blockpin signalname="B2(0)" name="D0" />
            <blockpin signalname="B1(0)" name="D1" />
            <blockpin signalname="A2(0)" name="D2" />
            <blockpin signalname="A1(0)" name="D3" />
            <blockpin signalname="XLXN_31" name="E" />
            <blockpin signalname="XLXN_91" name="S0" />
            <blockpin signalname="XLXN_92" name="S1" />
            <blockpin signalname="data_in(0)" name="O" />
        </block>
        <block symbolname="cb2ce" name="XLXI_13">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_47" name="CE" />
            <blockpin name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="XLXN_91" name="Q0" />
            <blockpin signalname="XLXN_92" name="Q1" />
            <blockpin name="TC" />
        </block>
        <block symbolname="vcc" name="XLXI_18">
            <blockpin signalname="XLXN_47" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_29">
            <blockpin signalname="XLXN_31" name="P" />
        </block>
        <block symbolname="d2_4e" name="XLXI_30">
            <blockpin signalname="XLXN_91" name="A0" />
            <blockpin signalname="XLXN_92" name="A1" />
            <blockpin signalname="XLXN_31" name="E" />
            <blockpin signalname="XLXN_93" name="D0" />
            <blockpin signalname="XLXN_94" name="D1" />
            <blockpin signalname="XLXN_95" name="D2" />
            <blockpin signalname="XLXN_96" name="D3" />
        </block>
        <block symbolname="inv4" name="XLXI_31">
            <blockpin signalname="XLXN_96" name="I0" />
            <blockpin signalname="XLXN_95" name="I1" />
            <blockpin signalname="XLXN_94" name="I2" />
            <blockpin signalname="XLXN_93" name="I3" />
            <blockpin signalname="C0" name="O0" />
            <blockpin signalname="C2" name="O1" />
            <blockpin signalname="C1" name="O2" />
            <blockpin signalname="C3" name="O3" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1552" y="736" name="XLXI_1" orien="R0">
        </instance>
        <branch name="data(6:0)">
            <wire x2="1968" y1="704" y2="704" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1968" y="704" name="data(6:0)" orien="R0" />
        <instance x="1024" y="768" name="XLXI_8" orien="R0" />
        <instance x="1024" y="1248" name="XLXI_9" orien="R0" />
        <instance x="1024" y="1696" name="XLXI_10" orien="R0" />
        <instance x="1024" y="2144" name="XLXI_11" orien="R0" />
        <branch name="B2(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="352" type="branch" />
            <wire x2="1024" y1="352" y2="352" x1="960" />
        </branch>
        <branch name="B1(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="416" type="branch" />
            <wire x2="1024" y1="416" y2="416" x1="960" />
        </branch>
        <branch name="A2(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="480" type="branch" />
            <wire x2="1024" y1="480" y2="480" x1="960" />
        </branch>
        <branch name="A1(3)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="544" type="branch" />
            <wire x2="1024" y1="544" y2="544" x1="960" />
        </branch>
        <branch name="B2(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="944" y="832" type="branch" />
            <wire x2="1024" y1="832" y2="832" x1="944" />
        </branch>
        <branch name="B1(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="944" y="896" type="branch" />
            <wire x2="1024" y1="896" y2="896" x1="944" />
        </branch>
        <branch name="A2(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="944" y="960" type="branch" />
            <wire x2="1024" y1="960" y2="960" x1="944" />
        </branch>
        <branch name="A1(2)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="944" y="1024" type="branch" />
            <wire x2="1024" y1="1024" y2="1024" x1="944" />
        </branch>
        <branch name="B2(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="960" y="1280" type="branch" />
            <wire x2="1024" y1="1280" y2="1280" x1="960" />
        </branch>
        <branch name="B1(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="944" y="1344" type="branch" />
            <wire x2="1024" y1="1344" y2="1344" x1="944" />
        </branch>
        <branch name="A2(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="944" y="1408" type="branch" />
            <wire x2="1024" y1="1408" y2="1408" x1="944" />
        </branch>
        <branch name="A1(1)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="944" y="1472" type="branch" />
            <wire x2="1024" y1="1472" y2="1472" x1="944" />
        </branch>
        <branch name="B2(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="928" y="1728" type="branch" />
            <wire x2="1024" y1="1728" y2="1728" x1="928" />
        </branch>
        <branch name="B1(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="912" y="1792" type="branch" />
            <wire x2="1024" y1="1792" y2="1792" x1="912" />
        </branch>
        <branch name="A2(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="912" y="1856" type="branch" />
            <wire x2="1024" y1="1856" y2="1856" x1="912" />
        </branch>
        <branch name="A1(0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="896" y="1920" type="branch" />
            <wire x2="1024" y1="1920" y2="1920" x1="896" />
        </branch>
        <branch name="B2(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="352" type="branch" />
            <wire x2="720" y1="352" y2="352" x1="576" />
        </branch>
        <branch name="A2(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="736" y="832" type="branch" />
            <wire x2="736" y1="832" y2="832" x1="560" />
        </branch>
        <branch name="B1(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="736" y="1280" type="branch" />
            <wire x2="736" y1="1280" y2="1280" x1="576" />
        </branch>
        <branch name="A1(3:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="720" y="1728" type="branch" />
            <wire x2="720" y1="1728" y2="1728" x1="576" />
        </branch>
        <iomarker fontsize="28" x="576" y="352" name="B2(3:0)" orien="R180" />
        <iomarker fontsize="28" x="560" y="832" name="A2(3:0)" orien="R180" />
        <iomarker fontsize="28" x="576" y="1280" name="B1(3:0)" orien="R180" />
        <iomarker fontsize="28" x="576" y="1728" name="A1(3:0)" orien="R180" />
        <branch name="clk">
            <wire x2="400" y1="2032" y2="2032" x1="160" />
            <wire x2="400" y1="2032" y2="2464" x1="400" />
            <wire x2="528" y1="2464" y2="2464" x1="400" />
        </branch>
        <iomarker fontsize="28" x="160" y="2032" name="clk" orien="R180" />
        <branch name="XLXN_31">
            <wire x2="560" y1="736" y2="736" x1="240" />
            <wire x2="672" y1="736" y2="736" x1="560" />
            <wire x2="688" y1="736" y2="736" x1="672" />
            <wire x2="688" y1="736" y2="800" x1="688" />
            <wire x2="768" y1="800" y2="800" x1="688" />
            <wire x2="240" y1="736" y2="752" x1="240" />
            <wire x2="672" y1="800" y2="1216" x1="672" />
            <wire x2="1024" y1="1216" y2="1216" x1="672" />
            <wire x2="672" y1="1216" y2="1664" x1="672" />
            <wire x2="1024" y1="1664" y2="1664" x1="672" />
            <wire x2="672" y1="1664" y2="1680" x1="672" />
            <wire x2="672" y1="1680" y2="2112" x1="672" />
            <wire x2="1024" y1="2112" y2="2112" x1="672" />
            <wire x2="1600" y1="1680" y2="1680" x1="672" />
            <wire x2="688" y1="800" y2="800" x1="672" />
            <wire x2="768" y1="736" y2="800" x1="768" />
            <wire x2="1024" y1="736" y2="736" x1="768" />
        </branch>
        <instance x="528" y="2592" name="XLXI_13" orien="R0" />
        <instance x="416" y="2384" name="XLXI_18" orien="R0" />
        <branch name="XLXN_47">
            <wire x2="480" y1="2384" y2="2400" x1="480" />
            <wire x2="528" y1="2400" y2="2400" x1="480" />
        </branch>
        <branch name="data_in(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1520" y="704" type="branch" />
            <wire x2="1552" y1="704" y2="704" x1="1520" />
        </branch>
        <branch name="data_in(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="448" type="branch" />
            <wire x2="1376" y1="448" y2="448" x1="1344" />
        </branch>
        <branch name="data_in(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="928" type="branch" />
            <wire x2="1376" y1="928" y2="928" x1="1344" />
        </branch>
        <branch name="data_in(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="1376" type="branch" />
            <wire x2="1376" y1="1376" y2="1376" x1="1344" />
        </branch>
        <branch name="data_in(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1376" y="1824" type="branch" />
            <wire x2="1376" y1="1824" y2="1824" x1="1344" />
        </branch>
        <instance x="304" y="752" name="XLXI_29" orien="R180" />
        <instance x="1600" y="1808" name="XLXI_30" orien="R0" />
        <instance x="2016" y="1712" name="XLXI_31" orien="R0" />
        <branch name="XLXN_91">
            <wire x2="960" y1="2272" y2="2272" x1="912" />
            <wire x2="960" y1="1536" y2="1984" x1="960" />
            <wire x2="960" y1="1984" y2="2272" x1="960" />
            <wire x2="1024" y1="1984" y2="1984" x1="960" />
            <wire x2="976" y1="1536" y2="1536" x1="960" />
            <wire x2="1024" y1="1536" y2="1536" x1="976" />
            <wire x2="976" y1="1536" y2="2176" x1="976" />
            <wire x2="1408" y1="2176" y2="2176" x1="976" />
            <wire x2="1024" y1="608" y2="608" x1="976" />
            <wire x2="976" y1="608" y2="1088" x1="976" />
            <wire x2="976" y1="1088" y2="1536" x1="976" />
            <wire x2="1024" y1="1088" y2="1088" x1="976" />
            <wire x2="1408" y1="1488" y2="2176" x1="1408" />
            <wire x2="1600" y1="1488" y2="1488" x1="1408" />
        </branch>
        <branch name="XLXN_92">
            <wire x2="944" y1="2336" y2="2336" x1="912" />
            <wire x2="1024" y1="672" y2="672" x1="928" />
            <wire x2="928" y1="672" y2="1152" x1="928" />
            <wire x2="928" y1="1152" y2="1600" x1="928" />
            <wire x2="944" y1="1600" y2="1600" x1="928" />
            <wire x2="1024" y1="1600" y2="1600" x1="944" />
            <wire x2="944" y1="1600" y2="1616" x1="944" />
            <wire x2="944" y1="1616" y2="2048" x1="944" />
            <wire x2="944" y1="2048" y2="2336" x1="944" />
            <wire x2="1024" y1="2048" y2="2048" x1="944" />
            <wire x2="1008" y1="1616" y2="1616" x1="944" />
            <wire x2="1008" y1="1616" y2="2160" x1="1008" />
            <wire x2="1392" y1="2160" y2="2160" x1="1008" />
            <wire x2="1024" y1="1152" y2="1152" x1="928" />
            <wire x2="1392" y1="1552" y2="2160" x1="1392" />
            <wire x2="1600" y1="1552" y2="1552" x1="1392" />
        </branch>
        <branch name="XLXN_93">
            <wire x2="2016" y1="1488" y2="1488" x1="1984" />
        </branch>
        <branch name="XLXN_94">
            <wire x2="2016" y1="1552" y2="1552" x1="1984" />
        </branch>
        <branch name="XLXN_95">
            <wire x2="2016" y1="1616" y2="1616" x1="1984" />
        </branch>
        <branch name="XLXN_96">
            <wire x2="2016" y1="1680" y2="1680" x1="1984" />
        </branch>
        <branch name="C3">
            <wire x2="2272" y1="1488" y2="1488" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2272" y="1488" name="C3" orien="R0" />
        <branch name="C1">
            <wire x2="2272" y1="1552" y2="1552" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2272" y="1552" name="C1" orien="R0" />
        <branch name="C0">
            <wire x2="2272" y1="1680" y2="1680" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2272" y="1680" name="C0" orien="R0" />
        <branch name="C2">
            <wire x2="2272" y1="1616" y2="1616" x1="2240" />
        </branch>
        <iomarker fontsize="28" x="2272" y="1616" name="C2" orien="R0" />
    </sheet>
</drawing>