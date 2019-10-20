<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="clk_in" />
        <signal name="A(3:0)" />
        <signal name="XLXN_4" />
        <signal name="XLXN_7" />
        <signal name="B(3:0)" />
        <signal name="XLXN_12" />
        <signal name="clear" />
        <signal name="A(0)" />
        <signal name="A(1)" />
        <signal name="A(2)" />
        <signal name="A(3)" />
        <signal name="XLXN_45" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <signal name="XLXN_23" />
        <signal name="XLXN_54" />
        <signal name="XLXN_55" />
        <signal name="B(0)">
        </signal>
        <signal name="B(1)">
        </signal>
        <signal name="B(2)">
        </signal>
        <signal name="B(3)">
        </signal>
        <port polarity="Input" name="clk_in" />
        <port polarity="Output" name="A(3:0)" />
        <port polarity="Output" name="B(3:0)" />
        <port polarity="Input" name="clear" />
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
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
        <block symbolname="vcc" name="XLXI_1">
            <blockpin signalname="XLXN_45" name="P" />
        </block>
        <block symbolname="cd4ce" name="XLXI_13">
            <blockpin signalname="clk_in" name="C" />
            <blockpin signalname="XLXN_45" name="CE" />
            <blockpin signalname="clear" name="CLR" />
            <blockpin signalname="XLXN_55" name="CEO" />
            <blockpin signalname="A(0)" name="Q0" />
            <blockpin signalname="A(1)" name="Q1" />
            <blockpin signalname="A(2)" name="Q2" />
            <blockpin signalname="A(3)" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cd4ce" name="XLXI_14">
            <blockpin signalname="clk_in" name="C" />
            <blockpin signalname="XLXN_55" name="CE" />
            <blockpin signalname="clear" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="B(0)" name="Q0" />
            <blockpin signalname="B(1)" name="Q1" />
            <blockpin signalname="B(2)" name="Q2" />
            <blockpin signalname="B(3)" name="Q3" />
            <blockpin name="TC" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk_in">
            <wire x2="1152" y1="304" y2="768" x1="1152" />
            <wire x2="1216" y1="768" y2="768" x1="1152" />
            <wire x2="1744" y1="304" y2="304" x1="1152" />
            <wire x2="1744" y1="304" y2="1952" x1="1744" />
            <wire x2="1808" y1="1952" y2="1952" x1="1744" />
            <wire x2="1808" y1="1952" y2="2176" x1="1808" />
            <wire x2="2096" y1="2176" y2="2176" x1="1808" />
            <wire x2="1520" y1="1952" y2="1952" x1="1488" />
            <wire x2="1744" y1="1952" y2="1952" x1="1520" />
        </branch>
        <branch name="A(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2208" y="1648" type="branch" />
            <wire x2="2400" y1="1648" y2="1648" x1="2208" />
        </branch>
        <branch name="B(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="912" type="branch" />
            <wire x2="2400" y1="912" y2="912" x1="2160" />
        </branch>
        <instance x="944" y="1488" name="XLXI_1" orien="R0" />
        <branch name="clear">
            <wire x2="624" y1="2016" y2="2016" x1="592" />
            <wire x2="880" y1="2016" y2="2016" x1="624" />
            <wire x2="880" y1="2016" y2="2048" x1="880" />
            <wire x2="1200" y1="2048" y2="2048" x1="880" />
            <wire x2="1520" y1="2048" y2="2048" x1="1200" />
            <wire x2="1520" y1="2048" y2="2272" x1="1520" />
            <wire x2="2096" y1="2272" y2="2272" x1="1520" />
            <wire x2="1200" y1="1328" y2="2048" x1="1200" />
            <wire x2="1552" y1="1328" y2="1328" x1="1200" />
            <wire x2="1216" y1="864" y2="1088" x1="1216" />
            <wire x2="1552" y1="1088" y2="1088" x1="1216" />
            <wire x2="1552" y1="1088" y2="1328" x1="1552" />
        </branch>
        <instance x="2096" y="2304" name="XLXI_13" orien="R0" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2512" y="1856" type="branch" />
            <wire x2="2512" y1="1856" y2="1856" x1="2480" />
        </branch>
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2512" y="1920" type="branch" />
            <wire x2="2512" y1="1920" y2="1920" x1="2480" />
        </branch>
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2512" y="1984" type="branch" />
            <wire x2="2512" y1="1984" y2="1984" x1="2480" />
        </branch>
        <branch name="A(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2512" y="2048" type="branch" />
            <wire x2="2512" y1="2048" y2="2048" x1="2480" />
        </branch>
        <instance x="1216" y="896" name="XLXI_14" orien="R0" />
        <branch name="XLXN_45">
            <wire x2="1008" y1="1488" y2="2112" x1="1008" />
            <wire x2="2096" y1="2112" y2="2112" x1="1008" />
        </branch>
        <branch name="XLXN_55">
            <wire x2="1200" y1="240" y2="704" x1="1200" />
            <wire x2="1216" y1="704" y2="704" x1="1200" />
            <wire x2="2608" y1="240" y2="240" x1="1200" />
            <wire x2="2608" y1="240" y2="2112" x1="2608" />
            <wire x2="2608" y1="2112" y2="2112" x1="2480" />
        </branch>
        <iomarker fontsize="28" x="1488" y="1952" name="clk_in" orien="R180" />
        <iomarker fontsize="28" x="2400" y="1648" name="A(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2400" y="912" name="B(3:0)" orien="R0" />
        <iomarker fontsize="28" x="592" y="2016" name="clear" orien="R180" />
        <branch name="B(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="448" type="branch" />
            <wire x2="1632" y1="448" y2="448" x1="1600" />
        </branch>
        <branch name="B(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="576" type="branch" />
            <wire x2="1632" y1="576" y2="576" x1="1600" />
        </branch>
        <branch name="B(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1632" y="640" type="branch" />
            <wire x2="1632" y1="640" y2="640" x1="1600" />
        </branch>
        <branch name="B(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1648" y="496" type="branch" />
            <wire x2="1616" y1="512" y2="512" x1="1600" />
            <wire x2="1648" y1="496" y2="496" x1="1616" />
            <wire x2="1616" y1="496" y2="512" x1="1616" />
        </branch>
    </sheet>
</drawing>