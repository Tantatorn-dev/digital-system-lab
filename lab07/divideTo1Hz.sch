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
        <signal name="clk_out" />
        <port polarity="Input" name="clk_in" />
        <port polarity="Output" name="clk_out" />
        <blockdef name="divideTo100Hz">
            <timestamp>2019-10-20T9:46:0</timestamp>
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
        <blockdef name="divide2">
            <timestamp>2019-10-20T9:31:27</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="divideTo100Hz" name="XLXI_2">
            <blockpin signalname="clk_in" name="clk_in" />
            <blockpin signalname="XLXN_1" name="clk_out" />
        </block>
        <block symbolname="divide5" name="XLXI_3">
            <blockpin signalname="XLXN_1" name="CLK_IN" />
            <blockpin signalname="XLXN_2" name="CLK_OUT" />
        </block>
        <block symbolname="divide5" name="XLXI_4">
            <blockpin signalname="XLXN_2" name="CLK_IN" />
            <blockpin signalname="XLXN_3" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_5">
            <blockpin signalname="XLXN_3" name="CLK_IN" />
            <blockpin signalname="XLXN_4" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_6">
            <blockpin signalname="XLXN_4" name="CLK_IN" />
            <blockpin signalname="clk_out" name="CLK_OUT" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="608" y="1280" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1056" y="1280" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1520" y="1280" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1056" y="1472" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1520" y="1472" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_1">
            <wire x2="1056" y1="1248" y2="1248" x1="992" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1520" y1="1248" y2="1248" x1="1440" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1056" y1="1440" y2="1440" x1="992" />
            <wire x2="992" y1="1440" y2="1552" x1="992" />
            <wire x2="1984" y1="1552" y2="1552" x1="992" />
            <wire x2="1984" y1="1248" y2="1248" x1="1904" />
            <wire x2="1984" y1="1248" y2="1552" x1="1984" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1520" y1="1440" y2="1440" x1="1440" />
        </branch>
        <branch name="clk_in">
            <wire x2="608" y1="1248" y2="1248" x1="576" />
        </branch>
        <iomarker fontsize="28" x="576" y="1248" name="clk_in" orien="R180" />
        <branch name="clk_out">
            <wire x2="1936" y1="1440" y2="1440" x1="1904" />
        </branch>
        <iomarker fontsize="28" x="1936" y="1440" name="clk_out" orien="R0" />
    </sheet>
</drawing>