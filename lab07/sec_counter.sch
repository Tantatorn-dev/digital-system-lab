<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk_in" />
        <signal name="A(3:0)" />
        <signal name="B(3:0)" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_26" />
        <signal name="XLXN_29" />
        <signal name="clear" />
        <signal name="XLXN_31" />
        <signal name="A(0)" />
        <signal name="A(1)" />
        <signal name="A(2)" />
        <signal name="A(3)" />
        <signal name="XLXN_42" />
        <signal name="XLXN_45" />
        <signal name="XLXN_47" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_60" />
        <signal name="tc">
        </signal>
        <signal name="B(3)" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_70" />
        <signal name="XLXN_71" />
        <signal name="XLXN_73" />
        <signal name="tclk" />
        <signal name="B(0)" />
        <signal name="B(1)" />
        <signal name="B(2)" />
        <signal name="XLXN_75" />
        <port polarity="Input" name="clk_in" />
        <port polarity="Output" name="A(3:0)" />
        <port polarity="Output" name="B(3:0)" />
        <port polarity="Input" name="clear" />
        <port polarity="Output" name="tclk" />
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <blockdef name="and3b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
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
        <block symbolname="vcc" name="XLXI_3">
            <blockpin signalname="XLXN_45" name="P" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="B(0)" name="I" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="B(3)" name="I" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_6">
            <blockpin signalname="XLXN_26" name="I0" />
            <blockpin signalname="B(2)" name="I1" />
            <blockpin signalname="B(1)" name="I2" />
            <blockpin signalname="XLXN_15" name="I3" />
            <blockpin signalname="tc" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_9">
            <blockpin signalname="tc" name="I0" />
            <blockpin signalname="clear" name="I1" />
            <blockpin signalname="XLXN_54" name="O" />
        </block>
        <block symbolname="cd4ce" name="XLXI_13">
            <blockpin signalname="clk_in" name="C" />
            <blockpin signalname="XLXN_45" name="CE" />
            <blockpin signalname="XLXN_54" name="CLR" />
            <blockpin signalname="XLXN_73" name="CEO" />
            <blockpin signalname="A(0)" name="Q0" />
            <blockpin signalname="A(1)" name="Q1" />
            <blockpin signalname="A(2)" name="Q2" />
            <blockpin signalname="A(3)" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="cd4ce" name="XLXI_14">
            <blockpin signalname="clk_in" name="C" />
            <blockpin signalname="XLXN_73" name="CE" />
            <blockpin signalname="XLXN_54" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="B(0)" name="Q0" />
            <blockpin signalname="B(1)" name="Q1" />
            <blockpin signalname="B(2)" name="Q2" />
            <blockpin signalname="B(3)" name="Q3" />
            <blockpin name="TC" />
        </block>
        <block symbolname="and2" name="XLXI_20">
            <blockpin signalname="XLXN_75" name="I0" />
            <blockpin signalname="XLXN_73" name="I1" />
            <blockpin signalname="tclk" name="O" />
        </block>
        <block symbolname="and3b1" name="XLXI_21">
            <blockpin signalname="B(0)" name="I0" />
            <blockpin signalname="B(2)" name="I1" />
            <blockpin signalname="B(1)" name="I2" />
            <blockpin signalname="XLXN_75" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="clk_in">
            <wire x2="800" y1="224" y2="688" x1="800" />
            <wire x2="864" y1="688" y2="688" x1="800" />
            <wire x2="1392" y1="224" y2="224" x1="800" />
            <wire x2="1392" y1="224" y2="1872" x1="1392" />
            <wire x2="1456" y1="1872" y2="1872" x1="1392" />
            <wire x2="1456" y1="1872" y2="2096" x1="1456" />
            <wire x2="1744" y1="2096" y2="2096" x1="1456" />
            <wire x2="1168" y1="1872" y2="1872" x1="1136" />
            <wire x2="1392" y1="1872" y2="1872" x1="1168" />
        </branch>
        <branch name="A(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1856" y="1568" type="branch" />
            <wire x2="2048" y1="1568" y2="1568" x1="1856" />
        </branch>
        <branch name="B(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1808" y="832" type="branch" />
            <wire x2="2048" y1="832" y2="832" x1="1808" />
        </branch>
        <instance x="592" y="1408" name="XLXI_3" orien="R0" />
        <instance x="1856" y="288" name="XLXI_4" orien="R0" />
        <instance x="1856" y="672" name="XLXI_8" orien="R0" />
        <instance x="2288" y="608" name="XLXI_6" orien="R0" />
        <branch name="XLXN_15">
            <wire x2="2288" y1="256" y2="256" x1="2080" />
            <wire x2="2288" y1="256" y2="352" x1="2288" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="2288" y1="640" y2="640" x1="2080" />
            <wire x2="2288" y1="544" y2="640" x1="2288" />
        </branch>
        <instance x="272" y="2064" name="XLXI_9" orien="R0" />
        <branch name="clear">
            <wire x2="272" y1="1936" y2="1936" x1="240" />
        </branch>
        <iomarker fontsize="28" x="1136" y="1872" name="clk_in" orien="R180" />
        <iomarker fontsize="28" x="2048" y="1568" name="A(3:0)" orien="R0" />
        <iomarker fontsize="28" x="2048" y="832" name="B(3:0)" orien="R0" />
        <iomarker fontsize="28" x="240" y="1936" name="clear" orien="R180" />
        <instance x="1744" y="2224" name="XLXI_13" orien="R0" />
        <branch name="A(0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1776" type="branch" />
            <wire x2="2160" y1="1776" y2="1776" x1="2128" />
        </branch>
        <branch name="A(1)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1840" type="branch" />
            <wire x2="2160" y1="1840" y2="1840" x1="2128" />
        </branch>
        <branch name="A(2)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1904" type="branch" />
            <wire x2="2160" y1="1904" y2="1904" x1="2128" />
        </branch>
        <branch name="A(3)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2160" y="1968" type="branch" />
            <wire x2="2160" y1="1968" y2="1968" x1="2128" />
        </branch>
        <instance x="864" y="816" name="XLXI_14" orien="R0" />
        <branch name="XLXN_45">
            <wire x2="656" y1="1408" y2="2032" x1="656" />
            <wire x2="1744" y1="2032" y2="2032" x1="656" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="848" y1="1968" y2="1968" x1="528" />
            <wire x2="1168" y1="1968" y2="1968" x1="848" />
            <wire x2="1168" y1="1968" y2="2192" x1="1168" />
            <wire x2="1744" y1="2192" y2="2192" x1="1168" />
            <wire x2="848" y1="1248" y2="1968" x1="848" />
            <wire x2="1200" y1="1248" y2="1248" x1="848" />
            <wire x2="864" y1="784" y2="1008" x1="864" />
            <wire x2="1200" y1="1008" y2="1008" x1="864" />
            <wire x2="1200" y1="1008" y2="1248" x1="1200" />
        </branch>
        <branch name="tc">
            <wire x2="272" y1="2000" y2="2000" x1="240" />
            <wire x2="240" y1="2000" y2="2304" x1="240" />
            <wire x2="2624" y1="2304" y2="2304" x1="240" />
            <wire x2="2624" y1="448" y2="448" x1="2544" />
            <wire x2="2624" y1="448" y2="1040" x1="2624" />
            <wire x2="2624" y1="1040" y2="2304" x1="2624" />
            <wire x2="2672" y1="1040" y2="1040" x1="2624" />
            <wire x2="2704" y1="1024" y2="1024" x1="2672" />
            <wire x2="2960" y1="1024" y2="1024" x1="2704" />
            <wire x2="2672" y1="1024" y2="1040" x1="2672" />
            <wire x2="2992" y1="992" y2="992" x1="2960" />
            <wire x2="2960" y1="992" y2="1024" x1="2960" />
        </branch>
        <branch name="B(3)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1488" y="1248" type="branch" />
            <wire x2="1488" y1="560" y2="560" x1="1248" />
            <wire x2="1552" y1="560" y2="560" x1="1488" />
            <wire x2="1552" y1="560" y2="640" x1="1552" />
            <wire x2="1856" y1="640" y2="640" x1="1552" />
            <wire x2="1488" y1="560" y2="1248" x1="1488" />
        </branch>
        <instance x="2416" y="96" name="XLXI_20" orien="M180" />
        <branch name="XLXN_73">
            <wire x2="864" y1="624" y2="624" x1="848" />
            <wire x2="848" y1="624" y2="912" x1="848" />
            <wire x2="2256" y1="912" y2="912" x1="848" />
            <wire x2="2256" y1="912" y2="2032" x1="2256" />
            <wire x2="2256" y1="2032" y2="2032" x1="2128" />
            <wire x2="2416" y1="224" y2="224" x1="2256" />
            <wire x2="2256" y1="224" y2="912" x1="2256" />
        </branch>
        <branch name="tclk">
            <wire x2="2704" y1="192" y2="192" x1="2672" />
        </branch>
        <iomarker fontsize="28" x="2704" y="192" name="tclk" orien="R0" />
        <branch name="B(0)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1616" y="928" type="branch" />
            <wire x2="1552" y1="368" y2="368" x1="1248" />
            <wire x2="1552" y1="256" y2="368" x1="1552" />
            <wire x2="1616" y1="256" y2="256" x1="1552" />
            <wire x2="1856" y1="256" y2="256" x1="1616" />
            <wire x2="1616" y1="256" y2="928" x1="1616" />
            <wire x2="1664" y1="176" y2="176" x1="1616" />
            <wire x2="1680" y1="176" y2="176" x1="1664" />
            <wire x2="1616" y1="176" y2="256" x1="1616" />
            <wire x2="1680" y1="64" y2="176" x1="1680" />
            <wire x2="1776" y1="64" y2="64" x1="1680" />
        </branch>
        <instance x="1776" y="0" name="XLXI_21" orien="M180" />
        <branch name="XLXN_75">
            <wire x2="2224" y1="128" y2="128" x1="2032" />
            <wire x2="2224" y1="128" y2="160" x1="2224" />
            <wire x2="2416" y1="160" y2="160" x1="2224" />
        </branch>
        <branch name="B(1)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="1056" type="branch" />
            <wire x2="1584" y1="432" y2="432" x1="1248" />
            <wire x2="1760" y1="432" y2="432" x1="1584" />
            <wire x2="1584" y1="432" y2="1056" x1="1584" />
            <wire x2="1664" y1="112" y2="112" x1="1584" />
            <wire x2="1696" y1="112" y2="112" x1="1664" />
            <wire x2="1696" y1="112" y2="192" x1="1696" />
            <wire x2="1776" y1="192" y2="192" x1="1696" />
            <wire x2="1584" y1="112" y2="432" x1="1584" />
            <wire x2="1760" y1="416" y2="432" x1="1760" />
            <wire x2="2288" y1="416" y2="416" x1="1760" />
        </branch>
        <branch name="B(2)">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1536" y="1136" type="branch" />
            <wire x2="1536" y1="496" y2="496" x1="1248" />
            <wire x2="1760" y1="496" y2="496" x1="1536" />
            <wire x2="1536" y1="496" y2="1136" x1="1536" />
            <wire x2="1664" y1="48" y2="48" x1="1536" />
            <wire x2="1712" y1="48" y2="48" x1="1664" />
            <wire x2="1712" y1="48" y2="128" x1="1712" />
            <wire x2="1776" y1="128" y2="128" x1="1712" />
            <wire x2="1536" y1="48" y2="496" x1="1536" />
            <wire x2="1760" y1="480" y2="496" x1="1760" />
            <wire x2="2288" y1="480" y2="480" x1="1760" />
        </branch>
    </sheet>
</drawing>