<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="N(3:0)" />
        <signal name="Output(3:0)" />
        <signal name="Output7(6:0)" />
        <signal name="Clkin" />
        <signal name="XLXN_29" />
        <signal name="Q0" />
        <signal name="Q1" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="C0" />
        <signal name="C1" />
        <signal name="XLXN_48" />
        <signal name="XLXN_52" />
        <signal name="M(3:0)" />
        <signal name="Carry(3:0)">
        </signal>
        <signal name="XLXN_56(3:0)" />
        <signal name="XLXN_58" />
        <port polarity="Input" name="N(3:0)" />
        <port polarity="Output" name="Output7(6:0)" />
        <port polarity="Input" name="Clkin" />
        <port polarity="Output" name="C0" />
        <port polarity="Output" name="C1" />
        <port polarity="Input" name="M(3:0)" />
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
        <blockdef name="BinaryToHex7Seg">
            <timestamp>2019-10-27T9:7:10</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="divideTo200Hz">
            <timestamp>2019-10-27T11:35:28</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
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
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
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
        <block symbolname="m4_1e" name="XLXI_1(3:0)">
            <blockpin signalname="N(3:0)" name="D0" />
            <blockpin signalname="M(3:0)" name="D1" />
            <blockpin signalname="Carry(3:0)" name="D2" />
            <blockpin signalname="Carry(3:0)" name="D3" />
            <blockpin signalname="XLXN_48" name="E" />
            <blockpin signalname="Q0" name="S0" />
            <blockpin signalname="Q1" name="S1" />
            <blockpin signalname="Output(3:0)" name="O" />
        </block>
        <block symbolname="BinaryToHex7Seg" name="XLXI_2">
            <blockpin signalname="Output(3:0)" name="Input(3:0)" />
            <blockpin signalname="Output7(6:0)" name="Output(6:0)" />
        </block>
        <block symbolname="divideTo200Hz" name="XLXI_4">
            <blockpin signalname="Clkin" name="clkin" />
            <blockpin signalname="XLXN_29" name="clkout" />
        </block>
        <block symbolname="vcc" name="XLXI_6">
            <blockpin signalname="XLXN_48" name="P" />
        </block>
        <block symbolname="cb2ce" name="XLXI_8">
            <blockpin signalname="XLXN_29" name="C" />
            <blockpin signalname="XLXN_48" name="CE" />
            <blockpin signalname="XLXN_52" name="CLR" />
            <blockpin name="CEO" />
            <blockpin signalname="Q0" name="Q0" />
            <blockpin signalname="Q1" name="Q1" />
            <blockpin name="TC" />
        </block>
        <block symbolname="d2_4e" name="XLXI_9">
            <blockpin signalname="Q0" name="A0" />
            <blockpin signalname="Q1" name="A1" />
            <blockpin signalname="XLXN_48" name="E" />
            <blockpin signalname="XLXN_36" name="D0" />
            <blockpin signalname="XLXN_37" name="D1" />
            <blockpin signalname="XLXN_38" name="D2" />
            <blockpin signalname="XLXN_38" name="D3" />
        </block>
        <block symbolname="gnd" name="XLXI_12">
            <blockpin signalname="XLXN_52" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_13(3:0)">
            <blockpin signalname="Carry(3:0)" name="G" />
        </block>
        <block symbolname="inv" name="XLXI_15">
            <blockpin signalname="XLXN_36" name="I" />
            <blockpin signalname="C0" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="XLXN_37" name="I" />
            <blockpin signalname="C1" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_17">
            <blockpin signalname="XLXN_38" name="G" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1616" y="1184" name="XLXI_1(3:0)" orien="R0" />
        <branch name="N(3:0)">
            <wire x2="1616" y1="768" y2="768" x1="1584" />
        </branch>
        <iomarker fontsize="28" x="1584" y="768" name="N(3:0)" orien="R180" />
        <branch name="Output(3:0)">
            <wire x2="1968" y1="864" y2="864" x1="1936" />
            <wire x2="2096" y1="864" y2="864" x1="1968" />
        </branch>
        <instance x="2096" y="896" name="XLXI_2" orien="R0">
        </instance>
        <branch name="Output7(6:0)">
            <wire x2="2576" y1="864" y2="864" x1="2480" />
        </branch>
        <iomarker fontsize="28" x="2576" y="864" name="Output7(6:0)" orien="R0" />
        <branch name="Clkin">
            <wire x2="736" y1="1728" y2="1728" x1="624" />
        </branch>
        <instance x="736" y="1760" name="XLXI_4" orien="R0">
        </instance>
        <iomarker fontsize="28" x="624" y="1728" name="Clkin" orien="R180" />
        <instance x="800" y="1536" name="XLXI_6" orien="R0" />
        <instance x="1616" y="1904" name="XLXI_8" orien="R0" />
        <branch name="XLXN_29">
            <wire x2="1200" y1="1728" y2="1728" x1="1120" />
            <wire x2="1200" y1="1616" y2="1728" x1="1200" />
            <wire x2="1264" y1="1616" y2="1616" x1="1200" />
            <wire x2="1280" y1="1616" y2="1616" x1="1264" />
            <wire x2="1280" y1="1616" y2="1776" x1="1280" />
            <wire x2="1616" y1="1776" y2="1776" x1="1280" />
        </branch>
        <branch name="Q0">
            <wire x2="1312" y1="1024" y2="1232" x1="1312" />
            <wire x2="2064" y1="1232" y2="1232" x1="1312" />
            <wire x2="2064" y1="1232" y2="1584" x1="2064" />
            <wire x2="1584" y1="1024" y2="1024" x1="1312" />
            <wire x2="1616" y1="1024" y2="1024" x1="1584" />
            <wire x2="2064" y1="1584" y2="1584" x1="2000" />
            <wire x2="2304" y1="1168" y2="1168" x1="2064" />
            <wire x2="2064" y1="1168" y2="1232" x1="2064" />
        </branch>
        <branch name="Q1">
            <wire x2="1376" y1="1088" y2="1200" x1="1376" />
            <wire x2="2048" y1="1200" y2="1200" x1="1376" />
            <wire x2="2048" y1="1200" y2="1648" x1="2048" />
            <wire x2="2176" y1="1200" y2="1200" x1="2048" />
            <wire x2="2176" y1="1200" y2="1232" x1="2176" />
            <wire x2="2304" y1="1232" y2="1232" x1="2176" />
            <wire x2="1584" y1="1088" y2="1088" x1="1376" />
            <wire x2="1616" y1="1088" y2="1088" x1="1584" />
            <wire x2="2048" y1="1648" y2="1648" x1="2000" />
        </branch>
        <instance x="2304" y="1488" name="XLXI_9" orien="R0" />
        <branch name="XLXN_36">
            <wire x2="2912" y1="1168" y2="1168" x1="2688" />
        </branch>
        <branch name="XLXN_37">
            <wire x2="2912" y1="1232" y2="1232" x1="2688" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="2912" y1="1296" y2="1296" x1="2688" />
            <wire x2="2912" y1="1296" y2="1360" x1="2912" />
            <wire x2="2912" y1="1360" y2="1360" x1="2688" />
            <wire x2="2912" y1="1280" y2="1296" x1="2912" />
            <wire x2="3168" y1="1280" y2="1280" x1="2912" />
            <wire x2="3168" y1="1280" y2="1296" x1="3168" />
        </branch>
        <branch name="C0">
            <wire x2="3168" y1="1168" y2="1168" x1="3136" />
        </branch>
        <branch name="C1">
            <wire x2="3168" y1="1232" y2="1232" x1="3136" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="864" y1="1536" y2="1552" x1="864" />
            <wire x2="1264" y1="1552" y2="1552" x1="864" />
            <wire x2="1280" y1="1552" y2="1552" x1="1264" />
            <wire x2="1440" y1="1552" y2="1552" x1="1280" />
            <wire x2="1440" y1="1552" y2="1712" x1="1440" />
            <wire x2="1616" y1="1712" y2="1712" x1="1440" />
            <wire x2="1488" y1="1152" y2="1152" x1="1440" />
            <wire x2="1616" y1="1152" y2="1152" x1="1488" />
            <wire x2="1440" y1="1152" y2="1360" x1="1440" />
            <wire x2="2304" y1="1360" y2="1360" x1="1440" />
            <wire x2="1440" y1="1360" y2="1552" x1="1440" />
        </branch>
        <iomarker fontsize="28" x="1296" y="832" name="M(3:0)" orien="R180" />
        <instance x="1232" y="1936" name="XLXI_12" orien="R0" />
        <branch name="XLXN_52">
            <wire x2="1296" y1="1744" y2="1808" x1="1296" />
            <wire x2="1376" y1="1744" y2="1744" x1="1296" />
            <wire x2="1376" y1="1744" y2="1872" x1="1376" />
            <wire x2="1616" y1="1872" y2="1872" x1="1376" />
        </branch>
        <iomarker fontsize="28" x="3168" y="1232" name="C1" orien="R0" />
        <iomarker fontsize="28" x="3168" y="1168" name="C0" orien="R0" />
        <branch name="M(3:0)">
            <wire x2="1616" y1="832" y2="832" x1="1296" />
        </branch>
        <branch name="Carry(3:0)">
            <wire x2="1296" y1="880" y2="912" x1="1296" />
            <wire x2="1376" y1="880" y2="880" x1="1296" />
            <wire x2="1376" y1="880" y2="960" x1="1376" />
            <wire x2="1616" y1="960" y2="960" x1="1376" />
            <wire x2="1584" y1="880" y2="880" x1="1376" />
            <wire x2="1584" y1="880" y2="896" x1="1584" />
            <wire x2="1616" y1="896" y2="896" x1="1584" />
        </branch>
        <instance x="1232" y="1040" name="XLXI_13(3:0)" orien="R0" />
        <instance x="2912" y="1200" name="XLXI_15" orien="R0" />
        <instance x="2912" y="1264" name="XLXI_16" orien="R0" />
        <instance x="3104" y="1424" name="XLXI_17" orien="R0" />
    </sheet>
</drawing>