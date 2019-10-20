<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="start_stop" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_8" />
        <signal name="clk_counter" />
        <signal name="clk_display" />
        <signal name="clk_in" />
        <signal name="sw_clear" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="clear" />
        <port polarity="Input" name="start_stop" />
        <port polarity="Output" name="clk_counter" />
        <port polarity="Output" name="clk_display" />
        <port polarity="Input" name="clk_in" />
        <port polarity="Input" name="sw_clear" />
        <port polarity="Output" name="clear" />
        <blockdef name="divideTo1Hz">
            <timestamp>2019-10-20T9:59:58</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="divideTo100Hz">
            <timestamp>2019-10-20T9:46:0</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="ftc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
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
        <block symbolname="divideTo1Hz" name="XLXI_1">
            <blockpin signalname="XLXN_8" name="clk_in" />
            <blockpin signalname="clk_counter" name="clk_out" />
        </block>
        <block symbolname="divideTo100Hz" name="XLXI_2">
            <blockpin signalname="clk_in" name="clk_in" />
            <blockpin signalname="clk_display" name="clk_out" />
        </block>
        <block symbolname="ftc" name="XLXI_3">
            <blockpin signalname="start_stop" name="C" />
            <blockpin signalname="XLXN_3" name="CLR" />
            <blockpin signalname="XLXN_1" name="T" />
            <blockpin signalname="XLXN_16" name="Q" />
        </block>
        <block symbolname="vcc" name="XLXI_4">
            <blockpin signalname="XLXN_1" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="XLXN_3" name="G" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="XLXN_16" name="I0" />
            <blockpin signalname="clk_in" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="sw_clear" name="I0" />
            <blockpin signalname="XLXN_17" name="I1" />
            <blockpin signalname="clear" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="XLXN_16" name="I" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="160" y="864" name="XLXI_4" orien="R0" />
        <instance x="320" y="1328" name="XLXI_5" orien="R0" />
        <branch name="XLXN_3">
            <wire x2="384" y1="1152" y2="1184" x1="384" />
            <wire x2="384" y1="1184" y2="1200" x1="384" />
            <wire x2="416" y1="1152" y2="1152" x1="384" />
            <wire x2="416" y1="1152" y2="1200" x1="416" />
            <wire x2="448" y1="1200" y2="1200" x1="416" />
        </branch>
        <instance x="992" y="1040" name="XLXI_6" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="224" y1="864" y2="880" x1="224" />
            <wire x2="224" y1="880" y2="976" x1="224" />
            <wire x2="448" y1="976" y2="976" x1="224" />
        </branch>
        <instance x="448" y="1232" name="XLXI_3" orien="R0" />
        <instance x="1552" y="1296" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1536" y="976" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_8">
            <wire x2="1536" y1="944" y2="944" x1="1248" />
        </branch>
        <branch name="clk_counter">
            <wire x2="1952" y1="944" y2="944" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="1952" y="944" name="clk_counter" orien="R0" />
        <branch name="clk_display">
            <wire x2="1968" y1="1264" y2="1264" x1="1936" />
        </branch>
        <iomarker fontsize="28" x="1968" y="1264" name="clk_display" orien="R0" />
        <branch name="clk_in">
            <wire x2="896" y1="784" y2="784" x1="816" />
            <wire x2="896" y1="784" y2="912" x1="896" />
            <wire x2="992" y1="912" y2="912" x1="896" />
            <wire x2="896" y1="912" y2="1264" x1="896" />
            <wire x2="1552" y1="1264" y2="1264" x1="896" />
        </branch>
        <iomarker fontsize="28" x="816" y="784" name="clk_in" orien="R180" />
        <branch name="sw_clear">
            <wire x2="1840" y1="1664" y2="1664" x1="528" />
            <wire x2="1968" y1="1664" y2="1664" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="528" y="1664" name="sw_clear" orien="R180" />
        <instance x="1968" y="1728" name="XLXI_7" orien="R0" />
        <instance x="1536" y="1632" name="XLXI_8" orien="R0" />
        <branch name="start_stop">
            <wire x2="432" y1="1104" y2="1104" x1="416" />
            <wire x2="448" y1="1104" y2="1104" x1="432" />
        </branch>
        <iomarker fontsize="28" x="416" y="1104" name="start_stop" orien="R180" />
        <branch name="XLXN_16">
            <wire x2="960" y1="976" y2="976" x1="832" />
            <wire x2="976" y1="976" y2="976" x1="960" />
            <wire x2="992" y1="976" y2="976" x1="976" />
            <wire x2="960" y1="976" y2="1600" x1="960" />
            <wire x2="1536" y1="1600" y2="1600" x1="960" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1968" y1="1600" y2="1600" x1="1760" />
        </branch>
        <branch name="clear">
            <wire x2="2256" y1="1632" y2="1632" x1="2224" />
        </branch>
        <iomarker fontsize="28" x="2256" y="1632" name="clear" orien="R0" />
    </sheet>
</drawing>