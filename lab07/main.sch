<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="osc" />
        <signal name="sw1" />
        <signal name="SevSeg(6:0)" />
        <signal name="common3" />
        <signal name="common2" />
        <signal name="common1" />
        <signal name="common0" />
        <signal name="XLXN_17" />
        <signal name="XLXN_23(3:0)" />
        <signal name="XLXN_24(3:0)" />
        <signal name="sw2" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27(3:0)" />
        <signal name="XLXN_28(3:0)" />
        <signal name="XLXN_29" />
        <signal name="XLXN_33(3:0)" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <port polarity="Input" name="osc" />
        <port polarity="Input" name="sw1" />
        <port polarity="Output" name="SevSeg(6:0)" />
        <port polarity="Output" name="common3" />
        <port polarity="Output" name="common2" />
        <port polarity="Output" name="common1" />
        <port polarity="Output" name="common0" />
        <port polarity="Input" name="sw2" />
        <blockdef name="control">
            <timestamp>2019-10-20T19:20:32</timestamp>
            <line x2="0" y1="32" y2="32" x1="64" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-128" height="192" />
        </blockdef>
        <blockdef name="display">
            <timestamp>2019-10-20T19:39:52</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="sec_counter">
            <timestamp>2019-10-20T21:55:49</timestamp>
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-128" height="576" />
        </blockdef>
        <blockdef name="min_counter">
            <timestamp>2019-10-20T20:15:22</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="control" name="XLXI_1">
            <blockpin signalname="sw1" name="start_stop" />
            <blockpin signalname="osc" name="clk_in" />
            <blockpin signalname="XLXN_38" name="clk_counter" />
            <blockpin signalname="XLXN_17" name="clk_display" />
            <blockpin signalname="sw2" name="sw_clear" />
            <blockpin signalname="XLXN_29" name="clear" />
        </block>
        <block symbolname="display" name="XLXI_7">
            <blockpin signalname="XLXN_28(3:0)" name="B2(3:0)" />
            <blockpin signalname="XLXN_27(3:0)" name="A2(3:0)" />
            <blockpin signalname="XLXN_23(3:0)" name="B1(3:0)" />
            <blockpin signalname="XLXN_24(3:0)" name="A1(3:0)" />
            <blockpin signalname="XLXN_17" name="clk" />
            <blockpin signalname="SevSeg(6:0)" name="data(6:0)" />
            <blockpin signalname="common3" name="c3" />
            <blockpin signalname="common1" name="c1" />
            <blockpin signalname="common0" name="c0" />
            <blockpin signalname="common2" name="c2" />
        </block>
        <block symbolname="sec_counter" name="XLXI_11">
            <blockpin signalname="XLXN_38" name="clk_in" />
            <blockpin signalname="XLXN_29" name="clear" />
            <blockpin signalname="XLXN_24(3:0)" name="A(3:0)" />
            <blockpin signalname="XLXN_23(3:0)" name="B(3:0)" />
            <blockpin signalname="XLXN_37" name="tclk" />
        </block>
        <block symbolname="min_counter" name="XLXI_12">
            <blockpin signalname="XLXN_37" name="clk_in" />
            <blockpin signalname="XLXN_29" name="clear" />
            <blockpin signalname="XLXN_27(3:0)" name="A(3:0)" />
            <blockpin signalname="XLXN_28(3:0)" name="B(3:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="976" y="1664" name="XLXI_1" orien="R0">
        </instance>
        <branch name="osc">
            <wire x2="976" y1="1632" y2="1632" x1="944" />
        </branch>
        <iomarker fontsize="28" x="944" y="1632" name="osc" orien="R180" />
        <branch name="sw1">
            <wire x2="976" y1="1568" y2="1568" x1="944" />
        </branch>
        <iomarker fontsize="28" x="944" y="1568" name="sw1" orien="R180" />
        <branch name="SevSeg(6:0)">
            <wire x2="2912" y1="1312" y2="1312" x1="2496" />
            <wire x2="2912" y1="1312" y2="1328" x1="2912" />
            <wire x2="2944" y1="1328" y2="1328" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2944" y="1328" name="SevSeg(6:0)" orien="R0" />
        <branch name="common3">
            <wire x2="2912" y1="1376" y2="1376" x1="2496" />
            <wire x2="2912" y1="1376" y2="1392" x1="2912" />
            <wire x2="2944" y1="1392" y2="1392" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2944" y="1392" name="common3" orien="R0" />
        <branch name="common2">
            <wire x2="2912" y1="1440" y2="1440" x1="2496" />
            <wire x2="2912" y1="1440" y2="1456" x1="2912" />
            <wire x2="2944" y1="1456" y2="1456" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2944" y="1456" name="common2" orien="R0" />
        <branch name="common1">
            <wire x2="2912" y1="1504" y2="1504" x1="2496" />
            <wire x2="2912" y1="1504" y2="1520" x1="2912" />
            <wire x2="2944" y1="1520" y2="1520" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2944" y="1520" name="common1" orien="R0" />
        <branch name="common0">
            <wire x2="2912" y1="1568" y2="1568" x1="2496" />
            <wire x2="2912" y1="1568" y2="1584" x1="2912" />
            <wire x2="2944" y1="1584" y2="1584" x1="2912" />
        </branch>
        <iomarker fontsize="28" x="2944" y="1584" name="common0" orien="R0" />
        <instance x="2112" y="1600" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_17">
            <wire x2="2016" y1="1632" y2="1632" x1="1360" />
            <wire x2="2016" y1="1568" y2="1632" x1="2016" />
            <wire x2="2112" y1="1568" y2="1568" x1="2016" />
        </branch>
        <branch name="XLXN_23(3:0)">
            <wire x2="2000" y1="1888" y2="1888" x1="1952" />
            <wire x2="2000" y1="1440" y2="1888" x1="2000" />
            <wire x2="2112" y1="1440" y2="1440" x1="2000" />
        </branch>
        <branch name="XLXN_24(3:0)">
            <wire x2="2096" y1="1824" y2="1824" x1="1952" />
            <wire x2="2112" y1="1504" y2="1504" x1="2096" />
            <wire x2="2096" y1="1504" y2="1824" x1="2096" />
        </branch>
        <branch name="sw2">
            <wire x2="976" y1="1696" y2="1696" x1="944" />
        </branch>
        <iomarker fontsize="28" x="944" y="1696" name="sw2" orien="R180" />
        <instance x="1616" y="1312" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_27(3:0)">
            <wire x2="2048" y1="1216" y2="1216" x1="2000" />
            <wire x2="2048" y1="1216" y2="1376" x1="2048" />
            <wire x2="2112" y1="1376" y2="1376" x1="2048" />
        </branch>
        <branch name="XLXN_28(3:0)">
            <wire x2="2032" y1="1280" y2="1280" x1="2000" />
            <wire x2="2032" y1="1280" y2="1312" x1="2032" />
            <wire x2="2112" y1="1312" y2="1312" x1="2032" />
        </branch>
        <branch name="XLXN_29">
            <wire x2="1440" y1="1696" y2="1696" x1="1360" />
            <wire x2="1616" y1="1280" y2="1280" x1="1440" />
            <wire x2="1440" y1="1280" y2="1536" x1="1440" />
            <wire x2="1440" y1="1536" y2="1696" x1="1440" />
            <wire x2="1504" y1="1536" y2="1536" x1="1440" />
            <wire x2="1504" y1="1536" y2="1888" x1="1504" />
            <wire x2="1568" y1="1888" y2="1888" x1="1504" />
        </branch>
        <instance x="1568" y="1920" name="XLXI_11" orien="R0">
        </instance>
        <branch name="XLXN_37">
            <wire x2="1552" y1="1104" y2="1216" x1="1552" />
            <wire x2="1616" y1="1216" y2="1216" x1="1552" />
            <wire x2="2080" y1="1104" y2="1104" x1="1552" />
            <wire x2="2080" y1="1104" y2="1952" x1="2080" />
            <wire x2="2080" y1="1952" y2="1952" x1="1952" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="1456" y1="1568" y2="1568" x1="1360" />
            <wire x2="1456" y1="1568" y2="1824" x1="1456" />
            <wire x2="1568" y1="1824" y2="1824" x1="1456" />
        </branch>
    </sheet>
</drawing>