<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="clk_in" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_17" />
        <signal name="XLXN_12" />
        <signal name="XLXN_18" />
        <signal name="XLXN_14" />
        <signal name="clk_out" />
        <signal name="XLXN_20" />
        <signal name="XLXN_21" />
        <port polarity="Input" name="clk_in" />
        <port polarity="Output" name="clk_out" />
        <blockdef name="divide2">
            <timestamp>2019-10-20T9:31:27</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="divide5">
            <timestamp>2019-10-20T9:31:31</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="divide2" name="XLXI_1">
            <blockpin signalname="clk_in" name="CLK_IN" />
            <blockpin signalname="XLXN_1" name="CLK_OUT" />
        </block>
        <block symbolname="divide5" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="CLK_IN" />
            <blockpin signalname="XLXN_8" name="CLK_OUT" />
        </block>
        <block symbolname="divide5" name="XLXI_3">
            <blockpin signalname="XLXN_2" name="CLK_IN" />
            <blockpin signalname="XLXN_9" name="CLK_OUT" />
        </block>
        <block symbolname="divide5" name="XLXI_4">
            <blockpin signalname="XLXN_3" name="CLK_IN" />
            <blockpin signalname="XLXN_17" name="CLK_OUT" />
        </block>
        <block symbolname="divide5" name="XLXI_5">
            <blockpin signalname="XLXN_4" name="CLK_IN" />
            <blockpin signalname="XLXN_20" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_7">
            <blockpin signalname="XLXN_8" name="CLK_IN" />
            <blockpin signalname="XLXN_2" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_8">
            <blockpin signalname="XLXN_9" name="CLK_IN" />
            <blockpin signalname="XLXN_3" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_9">
            <blockpin signalname="XLXN_17" name="CLK_IN" />
            <blockpin signalname="XLXN_4" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_15">
            <blockpin signalname="XLXN_20" name="CLK_IN" />
            <blockpin signalname="XLXN_21" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_16">
            <blockpin signalname="XLXN_21" name="CLK_IN" />
            <blockpin signalname="clk_out" name="CLK_OUT" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1424" y="1104" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1872" y="1104" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1872" y="1280" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1872" y="1408" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1872" y="1536" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1424" y="1248" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1424" y="1376" name="XLXI_8" orien="R0">
        </instance>
        <instance x="1424" y="1520" name="XLXI_9" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1872" y1="1072" y2="1072" x1="1808" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1840" y1="1216" y2="1216" x1="1808" />
            <wire x2="1840" y1="1216" y2="1248" x1="1840" />
            <wire x2="1872" y1="1248" y2="1248" x1="1840" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1840" y1="1344" y2="1344" x1="1808" />
            <wire x2="1840" y1="1344" y2="1376" x1="1840" />
            <wire x2="1872" y1="1376" y2="1376" x1="1840" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1840" y1="1488" y2="1488" x1="1808" />
            <wire x2="1840" y1="1488" y2="1504" x1="1840" />
            <wire x2="1872" y1="1504" y2="1504" x1="1840" />
        </branch>
        <branch name="clk_in">
            <wire x2="1424" y1="1072" y2="1072" x1="1392" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1344" y1="1120" y2="1216" x1="1344" />
            <wire x2="1424" y1="1216" y2="1216" x1="1344" />
            <wire x2="2336" y1="1120" y2="1120" x1="1344" />
            <wire x2="2336" y1="1072" y2="1072" x1="2256" />
            <wire x2="2336" y1="1072" y2="1120" x1="2336" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1360" y1="1136" y2="1344" x1="1360" />
            <wire x2="1424" y1="1344" y2="1344" x1="1360" />
            <wire x2="2320" y1="1136" y2="1136" x1="1360" />
            <wire x2="2320" y1="1136" y2="1248" x1="2320" />
            <wire x2="2320" y1="1248" y2="1248" x1="2256" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="1424" y1="1488" y2="1488" x1="1344" />
            <wire x2="1344" y1="1488" y2="1552" x1="1344" />
            <wire x2="2336" y1="1552" y2="1552" x1="1344" />
            <wire x2="2336" y1="1376" y2="1376" x1="2256" />
            <wire x2="2336" y1="1376" y2="1552" x1="2336" />
        </branch>
        <branch name="clk_out">
            <wire x2="1808" y1="1808" y2="1808" x1="1776" />
            <wire x2="1776" y1="1808" y2="1920" x1="1776" />
            <wire x2="2336" y1="1920" y2="1920" x1="1776" />
            <wire x2="2336" y1="1648" y2="1648" x1="2256" />
            <wire x2="2336" y1="1648" y2="1920" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="1392" y="1072" name="clk_in" orien="R180" />
        <iomarker fontsize="28" x="1808" y="1808" name="clk_out" orien="R0" />
        <instance x="1440" y="1680" name="XLXI_15" orien="R0">
        </instance>
        <instance x="1872" y="1680" name="XLXI_16" orien="R0">
        </instance>
        <branch name="XLXN_20">
            <wire x2="1344" y1="1568" y2="1632" x1="1344" />
            <wire x2="1424" y1="1632" y2="1632" x1="1344" />
            <wire x2="1424" y1="1632" y2="1648" x1="1424" />
            <wire x2="1440" y1="1648" y2="1648" x1="1424" />
            <wire x2="2320" y1="1568" y2="1568" x1="1344" />
            <wire x2="2320" y1="1504" y2="1504" x1="2256" />
            <wire x2="2320" y1="1504" y2="1568" x1="2320" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="1872" y1="1648" y2="1648" x1="1824" />
        </branch>
    </sheet>
</drawing>