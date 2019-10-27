<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clkin" />
        <signal name="clkout" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="XLXN_12" />
        <port polarity="Input" name="clkin" />
        <port polarity="Output" name="clkout" />
        <blockdef name="divide5">
            <timestamp>2019-10-27T11:26:26</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="divide2">
            <timestamp>2019-10-27T11:25:56</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="divide5" name="XLXI_1">
            <blockpin signalname="clkin" name="CLK_IN" />
            <blockpin signalname="XLXN_3" name="CLK_OUT" />
        </block>
        <block symbolname="divide5" name="XLXI_2">
            <blockpin signalname="XLXN_3" name="CLK_IN" />
            <blockpin signalname="XLXN_4" name="CLK_OUT" />
        </block>
        <block symbolname="divide5" name="XLXI_3">
            <blockpin signalname="XLXN_4" name="CLK_IN" />
            <blockpin signalname="XLXN_5" name="CLK_OUT" />
        </block>
        <block symbolname="divide5" name="XLXI_4">
            <blockpin signalname="XLXN_5" name="CLK_IN" />
            <blockpin signalname="XLXN_6" name="CLK_OUT" />
        </block>
        <block symbolname="divide5" name="XLXI_5">
            <blockpin signalname="XLXN_6" name="CLK_IN" />
            <blockpin signalname="XLXN_7" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_6">
            <blockpin signalname="XLXN_7" name="CLK_IN" />
            <blockpin signalname="XLXN_9" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_7">
            <blockpin signalname="XLXN_9" name="CLK_IN" />
            <blockpin signalname="XLXN_10" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_8">
            <blockpin signalname="XLXN_10" name="CLK_IN" />
            <blockpin signalname="XLXN_11" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_9">
            <blockpin signalname="XLXN_11" name="CLK_IN" />
            <blockpin signalname="XLXN_12" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_10">
            <blockpin signalname="XLXN_12" name="CLK_IN" />
            <blockpin signalname="clkout" name="CLK_OUT" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="528" y="848" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1440" y="848" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1856" y="848" name="XLXI_4" orien="R0">
        </instance>
        <instance x="2320" y="848" name="XLXI_5" orien="R0">
        </instance>
        <instance x="512" y="1104" name="XLXI_6" orien="R0">
        </instance>
        <instance x="960" y="1104" name="XLXI_7" orien="R0">
        </instance>
        <instance x="1456" y="1104" name="XLXI_8" orien="R0">
        </instance>
        <instance x="1904" y="1104" name="XLXI_9" orien="R0">
        </instance>
        <instance x="2352" y="1104" name="XLXI_10" orien="R0">
        </instance>
        <branch name="clkin">
            <wire x2="528" y1="816" y2="816" x1="496" />
        </branch>
        <iomarker fontsize="28" x="496" y="816" name="clkin" orien="R180" />
        <branch name="clkout">
            <wire x2="2768" y1="1072" y2="1072" x1="2736" />
        </branch>
        <iomarker fontsize="28" x="2768" y="1072" name="clkout" orien="R0" />
        <instance x="976" y="848" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_3">
            <wire x2="976" y1="816" y2="816" x1="912" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1440" y1="816" y2="816" x1="1360" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1856" y1="816" y2="816" x1="1824" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="2320" y1="816" y2="816" x1="2240" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="512" y1="1072" y2="1072" x1="448" />
            <wire x2="448" y1="1072" y2="1168" x1="448" />
            <wire x2="2976" y1="1168" y2="1168" x1="448" />
            <wire x2="2976" y1="816" y2="816" x1="2704" />
            <wire x2="2976" y1="816" y2="1168" x1="2976" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="960" y1="1072" y2="1072" x1="896" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="1456" y1="1072" y2="1072" x1="1344" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1904" y1="1072" y2="1072" x1="1840" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="2352" y1="1072" y2="1072" x1="2288" />
        </branch>
    </sheet>
</drawing>