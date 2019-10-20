<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_3" />
        <signal name="XLXN_5" />
        <signal name="XLXN_9" />
        <signal name="XLXN_11" />
        <signal name="clk_in" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="clk_out" />
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
            <blockpin signalname="XLXN_15" name="CLK_OUT" />
        </block>
        <block symbolname="divide5" name="XLXI_5">
            <blockpin signalname="XLXN_3" name="CLK_IN" />
            <blockpin signalname="XLXN_16" name="CLK_OUT" />
        </block>
        <block symbolname="divide5" name="XLXI_6">
            <blockpin signalname="XLXN_5" name="CLK_IN" />
            <blockpin signalname="XLXN_17" name="CLK_OUT" />
        </block>
        <block symbolname="divide5" name="XLXI_7">
            <blockpin signalname="XLXN_9" name="CLK_IN" />
            <blockpin signalname="XLXN_18" name="CLK_OUT" />
        </block>
        <block symbolname="divide5" name="XLXI_8">
            <blockpin signalname="XLXN_11" name="CLK_IN" />
            <blockpin signalname="XLXN_19" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_9">
            <blockpin signalname="XLXN_15" name="CLK_IN" />
            <blockpin signalname="XLXN_3" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_10">
            <blockpin signalname="XLXN_16" name="CLK_IN" />
            <blockpin signalname="XLXN_5" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_11">
            <blockpin signalname="XLXN_17" name="CLK_IN" />
            <blockpin signalname="XLXN_9" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_12">
            <blockpin signalname="XLXN_18" name="CLK_IN" />
            <blockpin signalname="XLXN_11" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_14">
            <blockpin signalname="XLXN_19" name="CLK_IN" />
            <blockpin signalname="clk_out" name="CLK_OUT" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="704" y="976" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1152" y="976" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1152" y="1152" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1152" y="1280" name="XLXI_6" orien="R0">
        </instance>
        <instance x="1152" y="1408" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1152" y="1520" name="XLXI_8" orien="R0">
        </instance>
        <instance x="704" y="1120" name="XLXI_9" orien="R0">
        </instance>
        <instance x="704" y="1248" name="XLXI_10" orien="R0">
        </instance>
        <instance x="704" y="1392" name="XLXI_11" orien="R0">
        </instance>
        <instance x="704" y="1536" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1152" y1="944" y2="944" x1="1088" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1120" y1="1088" y2="1088" x1="1088" />
            <wire x2="1120" y1="1088" y2="1120" x1="1120" />
            <wire x2="1152" y1="1120" y2="1120" x1="1120" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1120" y1="1216" y2="1216" x1="1088" />
            <wire x2="1120" y1="1216" y2="1248" x1="1120" />
            <wire x2="1152" y1="1248" y2="1248" x1="1120" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1120" y1="1360" y2="1360" x1="1088" />
            <wire x2="1120" y1="1360" y2="1376" x1="1120" />
            <wire x2="1152" y1="1376" y2="1376" x1="1120" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1120" y1="1504" y2="1504" x1="1088" />
            <wire x2="1120" y1="1488" y2="1504" x1="1120" />
            <wire x2="1152" y1="1488" y2="1488" x1="1120" />
        </branch>
        <branch name="clk_in">
            <wire x2="704" y1="944" y2="944" x1="672" />
        </branch>
        <iomarker fontsize="28" x="672" y="944" name="clk_in" orien="R180" />
        <instance x="672" y="1712" name="XLXI_14" orien="R0">
        </instance>
        <branch name="XLXN_15">
            <wire x2="624" y1="992" y2="1088" x1="624" />
            <wire x2="704" y1="1088" y2="1088" x1="624" />
            <wire x2="1616" y1="992" y2="992" x1="624" />
            <wire x2="1616" y1="944" y2="944" x1="1536" />
            <wire x2="1616" y1="944" y2="992" x1="1616" />
        </branch>
        <branch name="XLXN_16">
            <wire x2="640" y1="1008" y2="1216" x1="640" />
            <wire x2="704" y1="1216" y2="1216" x1="640" />
            <wire x2="1600" y1="1008" y2="1008" x1="640" />
            <wire x2="1600" y1="1008" y2="1120" x1="1600" />
            <wire x2="1600" y1="1120" y2="1120" x1="1536" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="704" y1="1360" y2="1360" x1="624" />
            <wire x2="624" y1="1360" y2="1424" x1="624" />
            <wire x2="1616" y1="1424" y2="1424" x1="624" />
            <wire x2="1616" y1="1248" y2="1248" x1="1536" />
            <wire x2="1616" y1="1248" y2="1424" x1="1616" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="624" y1="1440" y2="1504" x1="624" />
            <wire x2="704" y1="1504" y2="1504" x1="624" />
            <wire x2="1600" y1="1440" y2="1440" x1="624" />
            <wire x2="1600" y1="1376" y2="1376" x1="1536" />
            <wire x2="1600" y1="1376" y2="1440" x1="1600" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="608" y1="1568" y2="1680" x1="608" />
            <wire x2="672" y1="1680" y2="1680" x1="608" />
            <wire x2="1616" y1="1568" y2="1568" x1="608" />
            <wire x2="1616" y1="1488" y2="1488" x1="1536" />
            <wire x2="1616" y1="1488" y2="1568" x1="1616" />
        </branch>
        <branch name="clk_out">
            <wire x2="1088" y1="1680" y2="1680" x1="1056" />
        </branch>
        <iomarker fontsize="28" x="1088" y="1680" name="clk_out" orien="R0" />
    </sheet>
</drawing>