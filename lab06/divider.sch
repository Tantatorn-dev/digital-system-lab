<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_12" />
        <signal name="clk_in" />
        <signal name="clk_out" />
        <signal name="XLXN_19" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <port polarity="Input" name="clk_in" />
        <port polarity="Output" name="clk_out" />
        <blockdef name="divide2">
            <timestamp>2019-10-4T18:42:57</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="divide5">
            <timestamp>2019-10-4T18:43:45</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="divide2" name="XLXI_1">
            <blockpin signalname="clk_in" name="CLK_IN" />
            <blockpin signalname="XLXN_2" name="CLK_OUT" />
        </block>
        <block symbolname="divide5" name="XLXI_2">
            <blockpin signalname="XLXN_2" name="CLK_IN" />
            <blockpin signalname="XLXN_3" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_3">
            <blockpin signalname="XLXN_3" name="CLK_IN" />
            <blockpin signalname="XLXN_4" name="CLK_OUT" />
        </block>
        <block symbolname="divide5" name="XLXI_4">
            <blockpin signalname="XLXN_4" name="CLK_IN" />
            <blockpin signalname="XLXN_5" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_5">
            <blockpin signalname="XLXN_5" name="CLK_IN" />
            <blockpin signalname="XLXN_6" name="CLK_OUT" />
        </block>
        <block symbolname="divide5" name="XLXI_6">
            <blockpin signalname="XLXN_6" name="CLK_IN" />
            <blockpin signalname="XLXN_7" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_7">
            <blockpin signalname="XLXN_7" name="CLK_IN" />
            <blockpin signalname="XLXN_12" name="CLK_OUT" />
        </block>
        <block symbolname="divide5" name="XLXI_16">
            <blockpin signalname="XLXN_22" name="CLK_IN" />
            <blockpin signalname="XLXN_23" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_17">
            <blockpin signalname="XLXN_23" name="CLK_IN" />
            <blockpin signalname="clk_out" name="CLK_OUT" />
        </block>
        <block symbolname="divide2" name="XLXI_13">
            <blockpin signalname="XLXN_19" name="CLK_IN" />
            <blockpin signalname="XLXN_22" name="CLK_OUT" />
        </block>
        <block symbolname="divide5" name="XLXI_12">
            <blockpin signalname="XLXN_12" name="CLK_IN" />
            <blockpin signalname="XLXN_19" name="CLK_OUT" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="672" y="1248" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1248" y="1248" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1760" y="1248" name="XLXI_3" orien="R0">
        </instance>
        <instance x="1280" y="1536" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1792" y="1536" name="XLXI_5" orien="R0">
        </instance>
        <instance x="1296" y="1840" name="XLXI_6" orien="R0">
        </instance>
        <instance x="1808" y="1840" name="XLXI_7" orien="R0">
        </instance>
        <branch name="XLXN_2">
            <wire x2="1248" y1="1216" y2="1216" x1="1056" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1760" y1="1216" y2="1216" x1="1632" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1216" y1="1408" y2="1504" x1="1216" />
            <wire x2="1280" y1="1504" y2="1504" x1="1216" />
            <wire x2="2224" y1="1408" y2="1408" x1="1216" />
            <wire x2="2224" y1="1216" y2="1216" x1="2144" />
            <wire x2="2224" y1="1216" y2="1408" x1="2224" />
        </branch>
        <branch name="XLXN_5">
            <wire x2="1792" y1="1504" y2="1504" x1="1664" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1296" y1="1808" y2="1808" x1="1232" />
            <wire x2="1232" y1="1808" y2="1904" x1="1232" />
            <wire x2="2256" y1="1904" y2="1904" x1="1232" />
            <wire x2="2256" y1="1504" y2="1504" x1="2176" />
            <wire x2="2256" y1="1504" y2="1904" x1="2256" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1808" y1="1808" y2="1808" x1="1680" />
        </branch>
        <branch name="XLXN_12">
            <wire x2="1216" y1="2032" y2="2128" x1="1216" />
            <wire x2="1296" y1="2128" y2="2128" x1="1216" />
            <wire x2="1296" y1="2128" y2="2144" x1="1296" />
            <wire x2="2240" y1="2032" y2="2032" x1="1216" />
            <wire x2="1296" y1="2144" y2="2144" x1="1216" />
            <wire x2="1216" y1="2144" y2="2272" x1="1216" />
            <wire x2="1296" y1="2272" y2="2272" x1="1216" />
            <wire x2="2240" y1="1808" y2="1808" x1="2192" />
            <wire x2="2240" y1="1808" y2="2032" x1="2240" />
        </branch>
        <branch name="clk_in">
            <wire x2="672" y1="1216" y2="1216" x1="640" />
        </branch>
        <iomarker fontsize="28" x="640" y="1216" name="clk_in" orien="R180" />
        <iomarker fontsize="28" x="2240" y="2496" name="clk_out" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="1808" y1="2272" y2="2272" x1="1680" />
        </branch>
        <instance x="160" y="2432" name="XLXI_16" orien="R0">
        </instance>
        <instance x="672" y="2432" name="XLXI_17" orien="R0">
        </instance>
        <branch name="XLXN_22">
            <wire x2="160" y1="2400" y2="2400" x1="96" />
            <wire x2="96" y1="2400" y2="2480" x1="96" />
            <wire x2="1312" y1="2480" y2="2480" x1="96" />
            <wire x2="1312" y1="2480" y2="2496" x1="1312" />
            <wire x2="1312" y1="2496" y2="2496" x1="1232" />
            <wire x2="1232" y1="2496" y2="2592" x1="1232" />
            <wire x2="2224" y1="2592" y2="2592" x1="1232" />
            <wire x2="2224" y1="2272" y2="2272" x1="2192" />
            <wire x2="2224" y1="2272" y2="2592" x1="2224" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="672" y1="2400" y2="2400" x1="544" />
        </branch>
        <instance x="1808" y="2304" name="XLXI_13" orien="R0">
        </instance>
        <instance x="1296" y="2304" name="XLXI_12" orien="R0">
        </instance>
        <branch name="clk_out">
            <wire x2="1200" y1="2400" y2="2400" x1="1056" />
            <wire x2="1584" y1="2400" y2="2400" x1="1200" />
            <wire x2="1712" y1="2400" y2="2400" x1="1584" />
            <wire x2="2096" y1="2400" y2="2400" x1="1712" />
            <wire x2="2112" y1="2400" y2="2400" x1="2096" />
            <wire x2="2208" y1="2400" y2="2400" x1="2112" />
            <wire x2="2208" y1="2400" y2="2496" x1="2208" />
            <wire x2="2240" y1="2496" y2="2496" x1="2208" />
        </branch>
    </sheet>
</drawing>