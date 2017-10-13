<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="16" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="14" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="50" name="dxf" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="53" name="tGND_GNDA" color="7" fill="9" visible="no" active="no"/>
<layer number="54" name="bGND_GNDA" color="1" fill="9" visible="no" active="no"/>
<layer number="56" name="wert" color="7" fill="1" visible="no" active="no"/>
<layer number="57" name="tCAD" color="7" fill="1" visible="no" active="no"/>
<layer number="59" name="tCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="60" name="bCarbon" color="7" fill="1" visible="no" active="no"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
<layer number="99" name="SpiceOrder" color="7" fill="1" visible="no" active="no"/>
<layer number="100" name="Muster" color="7" fill="1" visible="no" active="no"/>
<layer number="101" name="Patch_Top" color="12" fill="4" visible="yes" active="yes"/>
<layer number="102" name="Vscore" color="7" fill="1" visible="yes" active="yes"/>
<layer number="103" name="tMap" color="7" fill="1" visible="yes" active="yes"/>
<layer number="104" name="Name" color="16" fill="1" visible="yes" active="yes"/>
<layer number="105" name="tPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="106" name="bPlate" color="7" fill="1" visible="yes" active="yes"/>
<layer number="107" name="Crop" color="7" fill="1" visible="yes" active="yes"/>
<layer number="108" name="tplace-old" color="10" fill="1" visible="yes" active="yes"/>
<layer number="109" name="ref-old" color="11" fill="1" visible="yes" active="yes"/>
<layer number="110" name="fp0" color="7" fill="1" visible="yes" active="yes"/>
<layer number="111" name="LPC17xx" color="7" fill="1" visible="yes" active="yes"/>
<layer number="112" name="tSilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="113" name="IDFDebug" color="7" fill="1" visible="yes" active="yes"/>
<layer number="114" name="Badge_Outline" color="11" fill="1" visible="no" active="no"/>
<layer number="115" name="ReferenceISLANDS" color="7" fill="1" visible="yes" active="yes"/>
<layer number="116" name="Patch_BOT" color="9" fill="4" visible="yes" active="yes"/>
<layer number="118" name="Rect_Pads" color="7" fill="1" visible="yes" active="yes"/>
<layer number="121" name="_tsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="122" name="_bsilk" color="7" fill="1" visible="yes" active="yes"/>
<layer number="123" name="tTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="124" name="bTestmark" color="7" fill="1" visible="yes" active="yes"/>
<layer number="125" name="_tNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="126" name="_bNames" color="7" fill="1" visible="yes" active="yes"/>
<layer number="127" name="_tValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="128" name="_bValues" color="7" fill="1" visible="yes" active="yes"/>
<layer number="129" name="Mask" color="7" fill="1" visible="yes" active="yes"/>
<layer number="131" name="tAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="132" name="bAdjust" color="7" fill="1" visible="yes" active="yes"/>
<layer number="144" name="Drill_legend" color="7" fill="1" visible="yes" active="yes"/>
<layer number="150" name="Notes" color="7" fill="1" visible="yes" active="yes"/>
<layer number="151" name="HeatSink" color="7" fill="1" visible="yes" active="yes"/>
<layer number="152" name="_bDocu" color="7" fill="1" visible="yes" active="yes"/>
<layer number="153" name="FabDoc1" color="7" fill="1" visible="yes" active="yes"/>
<layer number="154" name="FabDoc2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="155" name="FabDoc3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="199" name="Contour" color="7" fill="1" visible="yes" active="yes"/>
<layer number="200" name="200bmp" color="1" fill="10" visible="yes" active="yes"/>
<layer number="201" name="201bmp" color="2" fill="10" visible="yes" active="yes"/>
<layer number="202" name="202bmp" color="3" fill="10" visible="yes" active="yes"/>
<layer number="203" name="203bmp" color="4" fill="10" visible="yes" active="yes"/>
<layer number="204" name="204bmp" color="5" fill="10" visible="yes" active="yes"/>
<layer number="205" name="205bmp" color="6" fill="10" visible="yes" active="yes"/>
<layer number="206" name="206bmp" color="7" fill="10" visible="yes" active="yes"/>
<layer number="207" name="207bmp" color="8" fill="10" visible="yes" active="yes"/>
<layer number="208" name="208bmp" color="9" fill="10" visible="yes" active="yes"/>
<layer number="209" name="209bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="210" name="210bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="211" name="211bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="212" name="212bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="213" name="213bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="214" name="214bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="215" name="215bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="216" name="216bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="217" name="217bmp" color="18" fill="1" visible="no" active="no"/>
<layer number="218" name="218bmp" color="19" fill="1" visible="no" active="no"/>
<layer number="219" name="219bmp" color="20" fill="1" visible="no" active="no"/>
<layer number="220" name="220bmp" color="21" fill="1" visible="no" active="no"/>
<layer number="221" name="221bmp" color="22" fill="1" visible="no" active="no"/>
<layer number="222" name="222bmp" color="23" fill="1" visible="no" active="no"/>
<layer number="223" name="223bmp" color="24" fill="1" visible="no" active="no"/>
<layer number="224" name="224bmp" color="25" fill="1" visible="no" active="no"/>
<layer number="225" name="225bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="226" name="226bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="227" name="227bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="228" name="228bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="229" name="229bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="230" name="230bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="231" name="231bmp" color="7" fill="1" visible="yes" active="yes"/>
<layer number="232" name="Eagle3D_PG2" color="7" fill="1" visible="yes" active="yes"/>
<layer number="233" name="Eagle3D_PG3" color="7" fill="1" visible="yes" active="yes"/>
<layer number="248" name="Housing" color="7" fill="1" visible="yes" active="yes"/>
<layer number="249" name="Edge" color="7" fill="1" visible="yes" active="yes"/>
<layer number="250" name="Descript" color="3" fill="1" visible="no" active="no"/>
<layer number="251" name="SMDround" color="12" fill="11" visible="no" active="no"/>
<layer number="254" name="cooling" color="7" fill="1" visible="yes" active="yes"/>
<layer number="255" name="routoute" color="7" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="SparkFun-Boards">
<description>&lt;h3&gt;SparkFun Electronics' preferred foot prints&lt;/h3&gt;
This library contains footprints for SparkFun breakout boards, microcontrollers (Arduino, Particle, Teensy, etc.),  breadboards, non-RF modules, etc.
&lt;br&gt;
&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is &lt;b&gt; the end user's responsibility&lt;/b&gt; to ensure correctness and suitablity for a given componet or application. 
&lt;br&gt;
&lt;br&gt;If you enjoy using this library, please buy one of our products at &lt;a href=" www.sparkfun.com"&gt;SparkFun.com&lt;/a&gt;.
&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;
&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="BEAGLE_BONE_BLACK_CAPE">
<description>&lt;h3&gt;BeagleBone Black Cape Footprint&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:92&lt;/li&gt;
&lt;li&gt;Pin pitch: 0.1"&lt;/li&gt;
&lt;li&gt;Area:3.4x2.15 in&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;b&gt;Datasheet referenced for footprint:&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;BeagleBone Black Cape&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-44.45" y1="-22.86" x2="-38.1" y2="-29.21" width="0.127" layer="51" curve="90"/>
<wire x1="-38.1" y1="-29.21" x2="29.21" y2="-29.21" width="0.127" layer="51"/>
<wire x1="29.21" y1="-29.21" x2="41.91" y2="-16.51" width="0.127" layer="51" curve="90"/>
<wire x1="41.91" y1="-16.51" x2="41.91" y2="12.7" width="0.127" layer="51"/>
<wire x1="41.91" y1="12.7" x2="29.21" y2="25.4" width="0.127" layer="51" curve="90"/>
<wire x1="29.21" y1="25.4" x2="-38.735" y2="25.4" width="0.127" layer="51"/>
<wire x1="-44.45" y1="-8.255" x2="-44.45" y2="-22.86" width="0.127" layer="51"/>
<wire x1="-44.45" y1="-8.255" x2="-24.13" y2="-8.255" width="0.127" layer="51"/>
<wire x1="-38.735" y1="9.525" x2="-24.13" y2="9.525" width="0.127" layer="51"/>
<wire x1="-24.13" y1="-8.255" x2="-24.13" y2="9.525" width="0.127" layer="51"/>
<wire x1="-38.735" y1="9.525" x2="-38.735" y2="25.4" width="0.127" layer="51"/>
<text x="-26.67" y="22.225" size="1.27" layer="22" font="vector" ratio="15" rot="SMR270" align="bottom-center">P8</text>
<text x="-26.67" y="-26.035" size="1.27" layer="22" font="vector" ratio="15" rot="SMR270" align="bottom-center">P9</text>
<pad name="P9.1" x="-24.13" y="-27.305" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="P9.2" x="-24.13" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P9.3" x="-21.59" y="-27.305" drill="1.016" diameter="1.8796"/>
<pad name="P9.4" x="-21.59" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P9.5" x="-19.05" y="-27.305" drill="1.016" diameter="1.8796"/>
<pad name="P9.6" x="-19.05" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P9.7" x="-16.51" y="-27.305" drill="1.016" diameter="1.8796"/>
<pad name="P9.8" x="-16.51" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P9.9" x="-13.97" y="-27.305" drill="1.016" diameter="1.8796"/>
<pad name="P9.10" x="-13.97" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P9.11" x="-11.43" y="-27.305" drill="1.016" diameter="1.8796"/>
<pad name="P9.12" x="-11.43" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P9.13" x="-8.89" y="-27.305" drill="1.016" diameter="1.8796"/>
<pad name="P9.14" x="-8.89" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P9.15" x="-6.35" y="-27.305" drill="1.016" diameter="1.8796"/>
<pad name="P9.16" x="-6.35" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P9.17" x="-3.81" y="-27.305" drill="1.016" diameter="1.8796"/>
<pad name="P9.18" x="-3.81" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P9.19" x="-1.27" y="-27.305" drill="1.016" diameter="1.8796"/>
<pad name="P9.20" x="-1.27" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P9.21" x="1.27" y="-27.305" drill="1.016" diameter="1.8796"/>
<pad name="P9.22" x="1.27" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P9.23" x="3.81" y="-27.305" drill="1.016" diameter="1.8796"/>
<pad name="P9.24" x="3.81" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P9.25" x="6.35" y="-27.305" drill="1.016" diameter="1.8796"/>
<pad name="P9.26" x="6.35" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P9.27" x="8.89" y="-27.305" drill="1.016" diameter="1.8796"/>
<pad name="P9.28" x="8.89" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P9.29" x="11.43" y="-27.305" drill="1.016" diameter="1.8796"/>
<pad name="P9.30" x="11.43" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P9.31" x="13.97" y="-27.305" drill="1.016" diameter="1.8796"/>
<pad name="P9.32" x="13.97" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P9.33" x="16.51" y="-27.305" drill="1.016" diameter="1.8796"/>
<pad name="P9.34" x="16.51" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P9.35" x="19.05" y="-27.305" drill="1.016" diameter="1.8796"/>
<pad name="P9.36" x="19.05" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P9.37" x="21.59" y="-27.305" drill="1.016" diameter="1.8796"/>
<pad name="P9.38" x="21.59" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P9.39" x="24.13" y="-27.305" drill="1.016" diameter="1.8796"/>
<pad name="P9.40" x="24.13" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P9.41" x="26.67" y="-27.305" drill="1.016" diameter="1.8796"/>
<pad name="P9.42" x="26.67" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P9.43" x="29.21" y="-27.305" drill="1.016" diameter="1.8796"/>
<pad name="P9.44" x="29.21" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P9.45" x="31.75" y="-27.305" drill="1.016" diameter="1.8796"/>
<pad name="P9.46" x="31.75" y="-24.765" drill="1.016" diameter="1.8796"/>
<pad name="P8.1" x="-24.13" y="20.955" drill="1.016" diameter="1.8796" shape="square"/>
<pad name="P8.2" x="-24.13" y="23.495" drill="1.016" diameter="1.8796"/>
<pad name="P8.3" x="-21.59" y="20.955" drill="1.016" diameter="1.8796"/>
<pad name="P8.4" x="-21.59" y="23.495" drill="1.016" diameter="1.8796"/>
<pad name="P8.5" x="-19.05" y="20.955" drill="1.016" diameter="1.8796"/>
<pad name="P8.6" x="-19.05" y="23.495" drill="1.016" diameter="1.8796"/>
<pad name="P8.7" x="-16.51" y="20.955" drill="1.016" diameter="1.8796"/>
<pad name="P8.8" x="-16.51" y="23.495" drill="1.016" diameter="1.8796"/>
<pad name="P8.9" x="-13.97" y="20.955" drill="1.016" diameter="1.8796"/>
<pad name="P8.10" x="-13.97" y="23.495" drill="1.016" diameter="1.8796"/>
<pad name="P8.11" x="-11.43" y="20.955" drill="1.016" diameter="1.8796"/>
<pad name="P8.12" x="-11.43" y="23.495" drill="1.016" diameter="1.8796"/>
<pad name="P8.13" x="-8.89" y="20.955" drill="1.016" diameter="1.8796"/>
<pad name="P8.14" x="-8.89" y="23.495" drill="1.016" diameter="1.8796"/>
<pad name="P8.15" x="-6.35" y="20.955" drill="1.016" diameter="1.8796"/>
<pad name="P8.16" x="-6.35" y="23.495" drill="1.016" diameter="1.8796"/>
<pad name="P8.17" x="-3.81" y="20.955" drill="1.016" diameter="1.8796"/>
<pad name="P8.18" x="-3.81" y="23.495" drill="1.016" diameter="1.8796"/>
<pad name="P8.19" x="-1.27" y="20.955" drill="1.016" diameter="1.8796"/>
<pad name="P8.20" x="-1.27" y="23.495" drill="1.016" diameter="1.8796"/>
<pad name="P8.21" x="1.27" y="20.955" drill="1.016" diameter="1.8796"/>
<pad name="P8.22" x="1.27" y="23.495" drill="1.016" diameter="1.8796"/>
<pad name="P8.23" x="3.81" y="20.955" drill="1.016" diameter="1.8796"/>
<pad name="P8.24" x="3.81" y="23.495" drill="1.016" diameter="1.8796"/>
<pad name="P8.25" x="6.35" y="20.955" drill="1.016" diameter="1.8796"/>
<pad name="P8.26" x="6.35" y="23.495" drill="1.016" diameter="1.8796"/>
<pad name="P8.27" x="8.89" y="20.955" drill="1.016" diameter="1.8796"/>
<pad name="P8.28" x="8.89" y="23.495" drill="1.016" diameter="1.8796"/>
<pad name="P8.29" x="11.43" y="20.955" drill="1.016" diameter="1.8796"/>
<pad name="P8.30" x="11.43" y="23.495" drill="1.016" diameter="1.8796"/>
<pad name="P8.31" x="13.97" y="20.955" drill="1.016" diameter="1.8796"/>
<pad name="P8.32" x="13.97" y="23.495" drill="1.016" diameter="1.8796"/>
<pad name="P8.33" x="16.51" y="20.955" drill="1.016" diameter="1.8796"/>
<pad name="P8.34" x="16.51" y="23.495" drill="1.016" diameter="1.8796"/>
<pad name="P8.35" x="19.05" y="20.955" drill="1.016" diameter="1.8796"/>
<pad name="P8.36" x="19.05" y="23.495" drill="1.016" diameter="1.8796"/>
<pad name="P8.37" x="21.59" y="20.955" drill="1.016" diameter="1.8796"/>
<pad name="P8.38" x="21.59" y="23.495" drill="1.016" diameter="1.8796"/>
<pad name="P8.39" x="24.13" y="20.955" drill="1.016" diameter="1.8796"/>
<pad name="P8.40" x="24.13" y="23.495" drill="1.016" diameter="1.8796"/>
<pad name="P8.41" x="26.67" y="20.955" drill="1.016" diameter="1.8796"/>
<pad name="P8.42" x="26.67" y="23.495" drill="1.016" diameter="1.8796"/>
<pad name="P8.43" x="29.21" y="20.955" drill="1.016" diameter="1.8796"/>
<pad name="P8.44" x="29.21" y="23.495" drill="1.016" diameter="1.8796"/>
<pad name="P8.45" x="31.75" y="20.955" drill="1.016" diameter="1.8796"/>
<pad name="P8.46" x="31.75" y="23.495" drill="1.016" diameter="1.8796"/>
<text x="-25.4" y="20.955" size="1.27" layer="22" font="vector" ratio="15" rot="SMR270" align="bottom-center">1</text>
<text x="-25.4" y="-27.305" size="1.016" layer="22" font="vector" ratio="15" rot="SMR270" align="bottom-center">1</text>
<text x="-25.4" y="-24.765" size="1.016" layer="22" font="vector" ratio="15" rot="SMR270" align="bottom-center">2</text>
<text x="-25.4" y="23.495" size="1.016" layer="22" font="vector" ratio="15" rot="SMR270" align="bottom-center">2</text>
<text x="34.29" y="23.495" size="1.016" layer="22" font="vector" ratio="15" rot="SMR270" align="bottom-center">46</text>
<text x="34.29" y="20.955" size="1.016" layer="22" font="vector" ratio="15" rot="SMR270" align="bottom-center">45</text>
<text x="34.29" y="-27.305" size="1.016" layer="22" font="vector" ratio="15" rot="SMR270" align="bottom-center">45</text>
<text x="34.29" y="-24.765" size="1.016" layer="22" font="vector" ratio="15" rot="SMR270" align="bottom-center">46</text>
<text x="-36.83" y="1.27" size="1.27" layer="48" font="vector" ratio="15" rot="R270" align="center">Ethernet</text>
<wire x1="-44.45" y1="-7.62" x2="-25.4" y2="-7.62" width="0.127" layer="48" style="longdash"/>
<wire x1="-25.4" y1="-7.62" x2="-25.4" y2="8.89" width="0.127" layer="48" style="longdash"/>
<wire x1="-25.4" y1="8.89" x2="-44.45" y2="8.89" width="0.127" layer="48" style="longdash"/>
<wire x1="-44.45" y1="8.89" x2="-44.45" y2="-7.62" width="0.127" layer="48" style="longdash"/>
<wire x1="-44.45" y1="10.16" x2="-39.37" y2="10.16" width="0.127" layer="48" style="longdash"/>
<wire x1="-39.37" y1="10.16" x2="-39.37" y2="25.4" width="0.127" layer="48" style="longdash"/>
<wire x1="-39.37" y1="25.4" x2="-44.45" y2="25.4" width="0.127" layer="48" style="longdash"/>
<wire x1="-44.45" y1="25.4" x2="-44.45" y2="10.16" width="0.127" layer="48" style="longdash"/>
<text x="-41.91" y="17.78" size="1.27" layer="48" font="vector" ratio="15" rot="R270" align="center">LED/Button</text>
<text x="-33.02" y="1.27" size="1.27" layer="48" font="vector" ratio="15" rot="R270" align="center">Cutout</text>
<text x="0" y="-30.48" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<text x="0" y="26.67" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="-25.4" y="20.955" size="1.27" layer="21" font="vector" ratio="15" rot="SR90" align="bottom-center">1</text>
<text x="-25.4" y="23.495" size="1.016" layer="21" font="vector" ratio="15" rot="SR90" align="bottom-center">2</text>
<text x="-26.67" y="22.225" size="1.27" layer="21" font="vector" ratio="15" rot="SR90" align="bottom-center">P8</text>
<text x="34.29" y="20.955" size="1.016" layer="21" font="vector" ratio="15" rot="SR90" align="bottom-center">45</text>
<text x="34.29" y="23.495" size="1.016" layer="21" font="vector" ratio="15" rot="SR90" align="bottom-center">46</text>
<text x="34.29" y="-24.765" size="1.016" layer="21" font="vector" ratio="15" rot="SR90" align="bottom-center">46</text>
<text x="34.29" y="-27.305" size="1.016" layer="21" font="vector" ratio="15" rot="SR90" align="bottom-center">45</text>
<text x="-25.4" y="-27.305" size="1.016" layer="21" font="vector" ratio="15" rot="SR90" align="bottom-center">1</text>
<text x="-25.4" y="-24.765" size="1.016" layer="21" font="vector" ratio="15" rot="SR90" align="bottom-center">2</text>
<text x="-26.67" y="-26.035" size="1.27" layer="21" font="vector" ratio="15" rot="SR90" align="bottom-center">P9</text>
</package>
</packages>
<symbols>
<symbol name="BEAGLE_BONE_BLACK_P8">
<description>&lt;h3&gt;Beagle Bone Black - Expansion Header P8 Pinout &lt;/h3&gt;
&lt;p&gt; Default configuration of pins on power up on P8 expansion header. &lt;/p&gt;</description>
<pin name="DGND@1" x="-17.78" y="25.4" length="short"/>
<pin name="GPIO_38" x="-17.78" y="22.86" length="short"/>
<pin name="GPIO_39" x="17.78" y="22.86" length="short" rot="R180"/>
<pin name="GPIO_34" x="-17.78" y="20.32" length="short"/>
<pin name="GPIO_35" x="17.78" y="20.32" length="short" rot="R180"/>
<pin name="GPIO_66" x="-17.78" y="17.78" length="short"/>
<pin name="GPIO_67" x="17.78" y="17.78" length="short" rot="R180"/>
<pin name="GPIO_69" x="-17.78" y="15.24" length="short"/>
<pin name="GPIO_68" x="17.78" y="15.24" length="short" rot="R180"/>
<pin name="GPIO_45" x="-17.78" y="12.7" length="short"/>
<pin name="GPIO_44" x="17.78" y="12.7" length="short" rot="R180"/>
<pin name="GPIO_23" x="-17.78" y="10.16" length="short"/>
<pin name="GPIO_26" x="17.78" y="10.16" length="short" rot="R180"/>
<pin name="GPIO_47" x="-17.78" y="7.62" length="short"/>
<pin name="GPIO_46" x="17.78" y="7.62" length="short" rot="R180"/>
<pin name="GPIO_27" x="-17.78" y="5.08" length="short"/>
<pin name="GPIO_65" x="17.78" y="5.08" length="short" rot="R180"/>
<pin name="GPIO_22" x="-17.78" y="2.54" length="short"/>
<pin name="GPIO_63" x="17.78" y="2.54" length="short" rot="R180"/>
<pin name="GPIO_62" x="-17.78" y="0" length="short"/>
<pin name="GPIO_37" x="17.78" y="0" length="short" rot="R180"/>
<pin name="GPIO_36" x="-17.78" y="-2.54" length="short"/>
<pin name="GPIO_61" x="17.78" y="-5.08" length="short" rot="R180"/>
<pin name="GPIO_32" x="-17.78" y="-5.08" length="short"/>
<pin name="GPIO_88" x="17.78" y="-7.62" length="short" rot="R180"/>
<pin name="GPIO_86" x="-17.78" y="-7.62" length="short"/>
<pin name="GPIO_89" x="17.78" y="-10.16" length="short" rot="R180"/>
<pin name="GPIO_87" x="-17.78" y="-10.16" length="short"/>
<pin name="GPIO_11" x="17.78" y="-12.7" length="short" rot="R180"/>
<pin name="GPIO_10" x="-17.78" y="-12.7" length="short"/>
<pin name="GPIO_81" x="17.78" y="-15.24" length="short" rot="R180"/>
<pin name="GPIO_9" x="-17.78" y="-15.24" length="short"/>
<pin name="GPIO_80" x="17.78" y="-17.78" length="short" rot="R180"/>
<pin name="GPIO_8" x="-17.78" y="-17.78" length="short"/>
<pin name="GPIO_79" x="17.78" y="-20.32" length="short" rot="R180"/>
<pin name="GPIO_76" x="-17.78" y="-22.86" length="short"/>
<pin name="GPIO_77" x="17.78" y="-22.86" length="short" rot="R180"/>
<pin name="GPIO_74" x="-17.78" y="-25.4" length="short"/>
<pin name="GPIO_75" x="17.78" y="-25.4" length="short" rot="R180"/>
<pin name="DGND@2" x="17.78" y="25.4" length="short" rot="R180"/>
<pin name="GPIO_72" x="-17.78" y="-27.94" length="short"/>
<pin name="GPIO_73" x="17.78" y="-27.94" length="short" rot="R180"/>
<pin name="GPIO_70" x="-17.78" y="-30.48" length="short"/>
<pin name="GPIO_71" x="17.78" y="-30.48" length="short" rot="R180"/>
<wire x1="-15.24" y1="27.94" x2="15.24" y2="27.94" width="0.254" layer="94"/>
<wire x1="15.24" y1="27.94" x2="15.24" y2="-33.02" width="0.254" layer="94"/>
<wire x1="15.24" y1="-33.02" x2="-15.24" y2="-33.02" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-33.02" x2="-15.24" y2="27.94" width="0.254" layer="94"/>
<text x="0" y="25.4" size="1.778" layer="94" font="vector" ratio="15" align="bottom-center">P8</text>
<text x="0" y="-30.48" size="1.778" layer="94" font="vector" ratio="15" rot="R180" align="bottom-center">P8</text>
<pin name="GPIO_78" x="-17.78" y="-20.32" length="short"/>
<pin name="GPIO_33" x="17.78" y="-2.54" length="short" rot="R180"/>
<text x="-15.24" y="29.21" size="1.778" layer="95" font="vector">&gt;NAME</text>
<text x="-15.24" y="-34.29" size="1.778" layer="96" font="vector" align="top-left">&gt;VALUES</text>
</symbol>
<symbol name="BEAGLE_BONE_BLACK_P9">
<description>&lt;h3&gt;Beagle Bone Black - Expansion Header P9 Pinout &lt;/h3&gt;
&lt;p&gt; Default configuration of pins on power up on P9 expansion header. &lt;/p&gt;</description>
<pin name="DGND@1" x="-17.78" y="25.4" length="short"/>
<pin name="VDD_3V3@1" x="-17.78" y="22.86" length="short"/>
<pin name="VDD_3V3@2" x="17.78" y="22.86" length="short" rot="R180"/>
<pin name="SYS_5V@1" x="-17.78" y="17.78" length="short"/>
<pin name="SYS_5V@2" x="17.78" y="17.78" length="short" rot="R180"/>
<pin name="PWR_BUT" x="-17.78" y="15.24" length="short"/>
<pin name="SYS_RESET!N" x="17.78" y="15.24" length="short" rot="R180"/>
<pin name="GPIO_30" x="-17.78" y="12.7" length="short"/>
<pin name="GPIO_60" x="17.78" y="12.7" length="short" rot="R180"/>
<pin name="GPIO_31" x="-17.78" y="10.16" length="short"/>
<pin name="GPIO_40" x="17.78" y="10.16" length="short" rot="R180"/>
<pin name="GPIO_48" x="-17.78" y="7.62" length="short"/>
<pin name="GPIO_51" x="17.78" y="7.62" length="short" rot="R180"/>
<pin name="GPIO_4" x="-17.78" y="5.08" length="short"/>
<pin name="GPIO_5" x="17.78" y="5.08" length="short" rot="R180"/>
<pin name="I2C2_SCL" x="-17.78" y="2.54" length="short"/>
<pin name="I2C2_SDA" x="17.78" y="2.54" length="short" rot="R180"/>
<pin name="GPIO_3" x="-17.78" y="0" length="short"/>
<pin name="GPIO_2" x="17.78" y="0" length="short" rot="R180"/>
<pin name="GPIO_49" x="-17.78" y="-2.54" length="short"/>
<pin name="GPIO_15" x="17.78" y="-2.54" length="short" rot="R180"/>
<pin name="GPIO_117" x="-17.78" y="-5.08" length="short"/>
<pin name="GPIO_14" x="17.78" y="-5.08" length="short" rot="R180"/>
<pin name="GPIO_125" x="-17.78" y="-7.62" length="short"/>
<pin name="GPIO_123" x="17.78" y="-7.62" length="short" rot="R180"/>
<pin name="GPIO_121" x="-17.78" y="-10.16" length="short"/>
<pin name="GPIO_122" x="17.78" y="-10.16" length="short" rot="R180"/>
<pin name="GPIO_120" x="-17.78" y="-12.7" length="short"/>
<pin name="VDD_ADC" x="17.78" y="-12.7" length="short" rot="R180"/>
<pin name="AIN4" x="-17.78" y="-15.24" length="short"/>
<pin name="GNDA_ADC" x="17.78" y="-15.24" length="short" rot="R180"/>
<pin name="AIN6" x="-17.78" y="-17.78" length="short"/>
<pin name="AIN5" x="17.78" y="-17.78" length="short" rot="R180"/>
<pin name="AIN2" x="-17.78" y="-20.32" length="short"/>
<pin name="AIN3" x="17.78" y="-20.32" length="short" rot="R180"/>
<pin name="AIN0" x="-17.78" y="-22.86" length="short"/>
<pin name="AIN1" x="17.78" y="-22.86" length="short" rot="R180"/>
<pin name="GPIO_20" x="-17.78" y="-25.4" length="short"/>
<pin name="GPIO_7" x="17.78" y="-25.4" length="short" rot="R180"/>
<pin name="DGND@2" x="17.78" y="25.4" length="short" rot="R180"/>
<pin name="DGND@3" x="-17.78" y="-27.94" length="short"/>
<pin name="DGND@4" x="17.78" y="-27.94" length="short" rot="R180"/>
<pin name="DGND@5" x="-17.78" y="-30.48" length="short"/>
<pin name="DGND@6" x="17.78" y="-30.48" length="short" rot="R180"/>
<wire x1="-15.24" y1="27.94" x2="15.24" y2="27.94" width="0.254" layer="94"/>
<wire x1="15.24" y1="27.94" x2="15.24" y2="-33.02" width="0.254" layer="94"/>
<wire x1="15.24" y1="-33.02" x2="-15.24" y2="-33.02" width="0.254" layer="94"/>
<wire x1="-15.24" y1="-33.02" x2="-15.24" y2="27.94" width="0.254" layer="94"/>
<text x="0" y="25.4" size="1.778" layer="94" font="vector" ratio="15" align="bottom-center">P9</text>
<text x="0" y="-30.48" size="1.778" layer="94" font="vector" ratio="15" rot="R180" align="bottom-center">P9</text>
<pin name="VDD_5V@1" x="-17.78" y="20.32" length="short"/>
<pin name="VDD_5V@2" x="17.78" y="20.32" length="short" rot="R180"/>
<text x="-15.24" y="29.21" size="1.778" layer="95" font="vector">&gt;NAME</text>
<text x="-15.24" y="-34.29" size="1.778" layer="96" font="vector" align="top-left">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="SPARKFUN_BEAGLE_BONE_BLACK_CAPE" prefix="B">
<description>&lt;h3&gt;BeagleBone Black Rev C Cape &lt;/h3&gt;
&lt;p&gt; Generic footprint for BeagleBone Black Rev C Capes.&lt;/p&gt;


&lt;b&gt;&lt;p&gt;SparkFun Products:&lt;/b&gt;
&lt;ul&gt;&lt;li&gt;&lt;a href=”https://www.sparkfun.com/products/12774”&gt;SparkFun BeagleBone Black Proto Cape&lt;/a&gt;&lt;/li&gt;
&lt;li&gt;&lt;a href=”https://www.sparkfun.com/products/12773”&gt;SparkFun CryptoCape&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<gates>
<gate name="P8" symbol="BEAGLE_BONE_BLACK_P8" x="-17.78" y="-2.54"/>
<gate name="P9" symbol="BEAGLE_BONE_BLACK_P9" x="-17.78" y="-66.04"/>
</gates>
<devices>
<device name="" package="BEAGLE_BONE_BLACK_CAPE">
<connects>
<connect gate="P8" pin="DGND@1" pad="P8.1"/>
<connect gate="P8" pin="DGND@2" pad="P8.2"/>
<connect gate="P8" pin="GPIO_10" pad="P8.31"/>
<connect gate="P8" pin="GPIO_11" pad="P8.32"/>
<connect gate="P8" pin="GPIO_22" pad="P8.19"/>
<connect gate="P8" pin="GPIO_23" pad="P8.13"/>
<connect gate="P8" pin="GPIO_26" pad="P8.14"/>
<connect gate="P8" pin="GPIO_27" pad="P8.17"/>
<connect gate="P8" pin="GPIO_32" pad="P8.25"/>
<connect gate="P8" pin="GPIO_33" pad="P8.24"/>
<connect gate="P8" pin="GPIO_34" pad="P8.5"/>
<connect gate="P8" pin="GPIO_35" pad="P8.6"/>
<connect gate="P8" pin="GPIO_36" pad="P8.23"/>
<connect gate="P8" pin="GPIO_37" pad="P8.22"/>
<connect gate="P8" pin="GPIO_38" pad="P8.3"/>
<connect gate="P8" pin="GPIO_39" pad="P8.4"/>
<connect gate="P8" pin="GPIO_44" pad="P8.12"/>
<connect gate="P8" pin="GPIO_45" pad="P8.11"/>
<connect gate="P8" pin="GPIO_46" pad="P8.16"/>
<connect gate="P8" pin="GPIO_47" pad="P8.15"/>
<connect gate="P8" pin="GPIO_61" pad="P8.26"/>
<connect gate="P8" pin="GPIO_62" pad="P8.21"/>
<connect gate="P8" pin="GPIO_63" pad="P8.20"/>
<connect gate="P8" pin="GPIO_65" pad="P8.18"/>
<connect gate="P8" pin="GPIO_66" pad="P8.7"/>
<connect gate="P8" pin="GPIO_67" pad="P8.8"/>
<connect gate="P8" pin="GPIO_68" pad="P8.10"/>
<connect gate="P8" pin="GPIO_69" pad="P8.9"/>
<connect gate="P8" pin="GPIO_70" pad="P8.45"/>
<connect gate="P8" pin="GPIO_71" pad="P8.46"/>
<connect gate="P8" pin="GPIO_72" pad="P8.43"/>
<connect gate="P8" pin="GPIO_73" pad="P8.44"/>
<connect gate="P8" pin="GPIO_74" pad="P8.41"/>
<connect gate="P8" pin="GPIO_75" pad="P8.42"/>
<connect gate="P8" pin="GPIO_76" pad="P8.39"/>
<connect gate="P8" pin="GPIO_77" pad="P8.40"/>
<connect gate="P8" pin="GPIO_78" pad="P8.37"/>
<connect gate="P8" pin="GPIO_79" pad="P8.38"/>
<connect gate="P8" pin="GPIO_8" pad="P8.35"/>
<connect gate="P8" pin="GPIO_80" pad="P8.36"/>
<connect gate="P8" pin="GPIO_81" pad="P8.34"/>
<connect gate="P8" pin="GPIO_86" pad="P8.27"/>
<connect gate="P8" pin="GPIO_87" pad="P8.29"/>
<connect gate="P8" pin="GPIO_88" pad="P8.28"/>
<connect gate="P8" pin="GPIO_89" pad="P8.30"/>
<connect gate="P8" pin="GPIO_9" pad="P8.33"/>
<connect gate="P9" pin="AIN0" pad="P9.39"/>
<connect gate="P9" pin="AIN1" pad="P9.40"/>
<connect gate="P9" pin="AIN2" pad="P9.37"/>
<connect gate="P9" pin="AIN3" pad="P9.38"/>
<connect gate="P9" pin="AIN4" pad="P9.33"/>
<connect gate="P9" pin="AIN5" pad="P9.36"/>
<connect gate="P9" pin="AIN6" pad="P9.35"/>
<connect gate="P9" pin="DGND@1" pad="P9.1"/>
<connect gate="P9" pin="DGND@2" pad="P9.2"/>
<connect gate="P9" pin="DGND@3" pad="P9.43"/>
<connect gate="P9" pin="DGND@4" pad="P9.44"/>
<connect gate="P9" pin="DGND@5" pad="P9.45"/>
<connect gate="P9" pin="DGND@6" pad="P9.46"/>
<connect gate="P9" pin="GNDA_ADC" pad="P9.34"/>
<connect gate="P9" pin="GPIO_117" pad="P9.25"/>
<connect gate="P9" pin="GPIO_120" pad="P9.31"/>
<connect gate="P9" pin="GPIO_121" pad="P9.29"/>
<connect gate="P9" pin="GPIO_122" pad="P9.30"/>
<connect gate="P9" pin="GPIO_123" pad="P9.28"/>
<connect gate="P9" pin="GPIO_125" pad="P9.27"/>
<connect gate="P9" pin="GPIO_14" pad="P9.26"/>
<connect gate="P9" pin="GPIO_15" pad="P9.24"/>
<connect gate="P9" pin="GPIO_2" pad="P9.22"/>
<connect gate="P9" pin="GPIO_20" pad="P9.41"/>
<connect gate="P9" pin="GPIO_3" pad="P9.21"/>
<connect gate="P9" pin="GPIO_30" pad="P9.11"/>
<connect gate="P9" pin="GPIO_31" pad="P9.13"/>
<connect gate="P9" pin="GPIO_4" pad="P9.17"/>
<connect gate="P9" pin="GPIO_40" pad="P9.14"/>
<connect gate="P9" pin="GPIO_48" pad="P9.15"/>
<connect gate="P9" pin="GPIO_49" pad="P9.23"/>
<connect gate="P9" pin="GPIO_5" pad="P9.18"/>
<connect gate="P9" pin="GPIO_51" pad="P9.16"/>
<connect gate="P9" pin="GPIO_60" pad="P9.12"/>
<connect gate="P9" pin="GPIO_7" pad="P9.42"/>
<connect gate="P9" pin="I2C2_SCL" pad="P9.19"/>
<connect gate="P9" pin="I2C2_SDA" pad="P9.20"/>
<connect gate="P9" pin="PWR_BUT" pad="P9.9"/>
<connect gate="P9" pin="SYS_5V@1" pad="P9.7"/>
<connect gate="P9" pin="SYS_5V@2" pad="P9.8"/>
<connect gate="P9" pin="SYS_RESET!N" pad="P9.10"/>
<connect gate="P9" pin="VDD_3V3@1" pad="P9.3"/>
<connect gate="P9" pin="VDD_3V3@2" pad="P9.4"/>
<connect gate="P9" pin="VDD_5V@1" pad="P9.5"/>
<connect gate="P9" pin="VDD_5V@2" pad="P9.6"/>
<connect gate="P9" pin="VDD_ADC" pad="P9.32"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="adafruit">
<packages>
<package name="DIL14">
<description>&lt;b&gt;Dual In Line Package&lt;/b&gt;</description>
<wire x1="8.89" y1="2.921" x2="-8.89" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="8.89" y1="2.921" x2="8.89" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="2.921" x2="-8.89" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="-2.921" x2="-8.89" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="1.016" x2="-8.89" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="0" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="0" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="-2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-9.271" y="-3.048" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-6.731" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
<package name="DIL14-LARDO">
<wire x1="9.906" y1="2.921" x2="-9.906" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="-2.921" x2="9.906" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="9.906" y1="2.921" x2="9.906" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="2.921" x2="-9.906" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="-2.921" x2="-9.906" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="1.016" x2="-9.906" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<pad name="1" x="-7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="2" x="-5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="7" x="7.62" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="8" x="7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="3" x="-2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="4" x="0" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="6" x="5.08" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="5" x="2.54" y="-3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="9" x="5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="10" x="2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="11" x="0" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="12" x="-2.54" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="13" x="-5.08" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<pad name="14" x="-7.62" y="3.81" drill="0.8128" shape="long" rot="R90"/>
<text x="-9.271" y="-3.048" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="-6.731" y="-0.635" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="74125">
<wire x1="5.08" y1="0" x2="-5.08" y2="5.08" width="0.4064" layer="94"/>
<wire x1="5.08" y1="0" x2="-5.08" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="-5.08" x2="-5.08" y2="5.08" width="0.4064" layer="94"/>
<wire x1="0" y1="4.826" x2="0" y2="5.588" width="0.1524" layer="94"/>
<circle x="0" y="3.81" radius="1.016" width="0.1524" layer="94"/>
<text x="2.54" y="3.175" size="1.778" layer="95">&gt;NAME</text>
<text x="2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<pin name="OE" x="0" y="10.16" visible="pad" length="middle" direction="in" rot="R270"/>
<pin name="I" x="-10.16" y="0" visible="pad" length="middle" direction="in"/>
<pin name="O" x="10.16" y="0" visible="pad" length="middle" direction="hiz" rot="R180"/>
</symbol>
<symbol name="PWRN">
<text x="-0.635" y="-0.635" size="1.778" layer="95">&gt;NAME</text>
<text x="1.905" y="-7.62" size="1.27" layer="95" rot="R90">GND</text>
<text x="1.905" y="5.08" size="1.27" layer="95" rot="R90">VCC</text>
<pin name="GND" x="0" y="-10.16" visible="pad" direction="pwr" rot="R90"/>
<pin name="VCC" x="0" y="10.16" visible="pad" direction="pwr" rot="R270"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="74*125" prefix="IC">
<description>Quad bus &lt;b&gt;BUFFER&lt;/b&gt;, 3-state</description>
<gates>
<gate name="A" symbol="74125" x="17.78" y="0" swaplevel="1"/>
<gate name="B" symbol="74125" x="17.78" y="-17.78" swaplevel="1"/>
<gate name="C" symbol="74125" x="45.72" y="0" swaplevel="1"/>
<gate name="D" symbol="74125" x="45.72" y="-17.78" swaplevel="1"/>
<gate name="P" symbol="PWRN" x="-5.08" y="-7.62" addlevel="request"/>
</gates>
<devices>
<device name="N" package="DIL14">
<connects>
<connect gate="A" pin="I" pad="2"/>
<connect gate="A" pin="O" pad="3"/>
<connect gate="A" pin="OE" pad="1"/>
<connect gate="B" pin="I" pad="5"/>
<connect gate="B" pin="O" pad="6"/>
<connect gate="B" pin="OE" pad="4"/>
<connect gate="C" pin="I" pad="9"/>
<connect gate="C" pin="O" pad="8"/>
<connect gate="C" pin="OE" pad="10"/>
<connect gate="D" pin="I" pad="12"/>
<connect gate="D" pin="O" pad="11"/>
<connect gate="D" pin="OE" pad="13"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="VCC" pad="14"/>
</connects>
<technologies>
<technology name=""/>
<technology name="LS"/>
</technologies>
</device>
<device name="N-LARDO" package="DIL14-LARDO">
<connects>
<connect gate="A" pin="I" pad="2"/>
<connect gate="A" pin="O" pad="3"/>
<connect gate="A" pin="OE" pad="1"/>
<connect gate="B" pin="I" pad="5"/>
<connect gate="B" pin="O" pad="6"/>
<connect gate="B" pin="OE" pad="4"/>
<connect gate="C" pin="I" pad="9"/>
<connect gate="C" pin="O" pad="8"/>
<connect gate="C" pin="OE" pad="10"/>
<connect gate="D" pin="I" pad="12"/>
<connect gate="D" pin="O" pad="11"/>
<connect gate="D" pin="OE" pad="13"/>
<connect gate="P" pin="GND" pad="7"/>
<connect gate="P" pin="VCC" pad="14"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Resistors">
<description>&lt;h3&gt;SparkFun Resistors&lt;/h3&gt;
This library contains resistors. Reference designator:R. 
&lt;br&gt;
&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is &lt;b&gt; the end user's responsibility&lt;/b&gt; to ensure correctness and suitablity for a given componet or application. 
&lt;br&gt;
&lt;br&gt;If you enjoy using this library, please buy one of our products at &lt;a href=" www.sparkfun.com"&gt;SparkFun.com&lt;/a&gt;.
&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;
&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="AXIAL-0.3">
<description>&lt;h3&gt;AXIAL-0.3&lt;/h3&gt;
&lt;p&gt;Commonly used for 1/4W through-hole resistors. 0.3" pitch between holes.&lt;/p&gt;</description>
<wire x1="-2.54" y1="0.762" x2="2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0.762" x2="2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="-0.762" x2="-2.54" y2="-0.762" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="-0.762" x2="-2.54" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.762" width="0.2032" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.2032" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.2032" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="0.9" diameter="1.8796"/>
<pad name="P$2" x="3.81" y="0" drill="0.9" diameter="1.8796"/>
<text x="0" y="1.016" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;Name</text>
<text x="0" y="-1.016" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;Value</text>
</package>
<package name="AXIAL-0.3-KIT">
<description>&lt;h3&gt;AXIAL-0.3-KIT&lt;/h3&gt;
&lt;p&gt;Commonly used for 1/4W through-hole resistors. 0.3" pitch between holes.&lt;/p&gt;
&lt;p&gt;&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of the AXIAL-0.3 package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.&lt;/p&gt;</description>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="0" width="0.254" layer="21"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="0" width="0.254" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.54" y1="0" x2="2.794" y2="0" width="0.254" layer="21"/>
<wire x1="-2.54" y1="0" x2="-2.794" y2="0" width="0.254" layer="21"/>
<pad name="P$1" x="-3.81" y="0" drill="1.016" diameter="2.032" stop="no"/>
<pad name="P$2" x="3.81" y="0" drill="1.016" diameter="2.032" stop="no"/>
<text x="0" y="1.524" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.524" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<polygon width="0.127" layer="30">
<vertex x="3.8201" y="-0.9449" curve="-90"/>
<vertex x="2.8652" y="-0.0152" curve="-90.011749"/>
<vertex x="3.8176" y="0.9602" curve="-90"/>
<vertex x="4.7676" y="-0.0178" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="3.8176" y="-0.4369" curve="-90.012891"/>
<vertex x="3.3731" y="-0.0127" curve="-90"/>
<vertex x="3.8176" y="0.4546" curve="-90"/>
<vertex x="4.2595" y="-0.0025" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="-3.8075" y="-0.9525" curve="-90"/>
<vertex x="-4.7624" y="-0.0228" curve="-90.011749"/>
<vertex x="-3.81" y="0.9526" curve="-90"/>
<vertex x="-2.86" y="-0.0254" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-3.81" y="-0.4445" curve="-90.012891"/>
<vertex x="-4.2545" y="-0.0203" curve="-90"/>
<vertex x="-3.81" y="0.447" curve="-90"/>
<vertex x="-3.3681" y="-0.0101" curve="-90.012967"/>
</polygon>
</package>
<package name="0402">
<description>&lt;p&gt;&lt;b&gt;Generic 1005 (0402) package&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;0.2mm courtyard excess rounded to nearest 0.05mm.&lt;/p&gt;</description>
<wire x1="-0.2704" y1="0.2286" x2="0.2704" y2="0.2286" width="0.1524" layer="51"/>
<wire x1="0.2704" y1="-0.2286" x2="-0.2704" y2="-0.2286" width="0.1524" layer="51"/>
<wire x1="-1.2" y1="0.65" x2="1.2" y2="0.65" width="0.0508" layer="39"/>
<wire x1="1.2" y1="0.65" x2="1.2" y2="-0.65" width="0.0508" layer="39"/>
<wire x1="1.2" y1="-0.65" x2="-1.2" y2="-0.65" width="0.0508" layer="39"/>
<wire x1="-1.2" y1="-0.65" x2="-1.2" y2="0.65" width="0.0508" layer="39"/>
<smd name="1" x="-0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<smd name="2" x="0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<text x="0" y="0.762" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-0.762" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.3048" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.3048" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="0603">
<description>&lt;p&gt;&lt;b&gt;Generic 1608 (0603) package&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;0.2mm courtyard excess rounded to nearest 0.05mm.&lt;/p&gt;</description>
<wire x1="-1.6" y1="0.7" x2="1.6" y2="0.7" width="0.0508" layer="39"/>
<wire x1="1.6" y1="0.7" x2="1.6" y2="-0.7" width="0.0508" layer="39"/>
<wire x1="1.6" y1="-0.7" x2="-1.6" y2="-0.7" width="0.0508" layer="39"/>
<wire x1="-1.6" y1="-0.7" x2="-1.6" y2="0.7" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="0" y="0.762" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-0.762" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="0805">
<description>&lt;p&gt;&lt;b&gt;Generic 2012 (0805) package&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;0.2mm courtyard excess rounded to nearest 0.05mm.&lt;/p&gt;</description>
<smd name="1" x="-0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<smd name="2" x="0.9" y="0" dx="0.8" dy="1.2" layer="1"/>
<text x="0" y="0.889" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-0.889" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<wire x1="-1.5" y1="0.8" x2="1.5" y2="0.8" width="0.0508" layer="39"/>
<wire x1="1.5" y1="0.8" x2="1.5" y2="-0.8" width="0.0508" layer="39"/>
<wire x1="1.5" y1="-0.8" x2="-1.5" y2="-0.8" width="0.0508" layer="39"/>
<wire x1="-1.5" y1="-0.8" x2="-1.5" y2="0.8" width="0.0508" layer="39"/>
</package>
<package name="1206">
<description>&lt;p&gt;&lt;b&gt;Generic 3216 (1206) package&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;0.2mm courtyard excess rounded to nearest 0.05mm.&lt;/p&gt;</description>
<wire x1="-2.4" y1="1.1" x2="2.4" y2="1.1" width="0.0508" layer="39"/>
<wire x1="2.4" y1="-1.1" x2="-2.4" y2="-1.1" width="0.0508" layer="39"/>
<wire x1="-2.4" y1="-1.1" x2="-2.4" y2="1.1" width="0.0508" layer="39"/>
<wire x1="2.4" y1="1.1" x2="2.4" y2="-1.1" width="0.0508" layer="39"/>
<wire x1="-0.965" y1="0.787" x2="0.965" y2="0.787" width="0.1016" layer="51"/>
<wire x1="-0.965" y1="-0.787" x2="0.965" y2="-0.787" width="0.1016" layer="51"/>
<smd name="1" x="-1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<smd name="2" x="1.4" y="0" dx="1.6" dy="1.8" layer="1"/>
<text x="0" y="1.143" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.143" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<rectangle x1="-1.7018" y1="-0.8509" x2="-0.9517" y2="0.8491" layer="51"/>
<rectangle x1="0.9517" y1="-0.8491" x2="1.7018" y2="0.8509" layer="51"/>
<rectangle x1="-0.1999" y1="-0.4001" x2="0.1999" y2="0.4001" layer="35"/>
</package>
</packages>
<symbols>
<symbol name="RESISTOR">
<wire x1="-2.54" y1="0" x2="-2.159" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-2.159" y1="1.016" x2="-1.524" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-1.524" y1="-1.016" x2="-0.889" y2="1.016" width="0.1524" layer="94"/>
<wire x1="-0.889" y1="1.016" x2="-0.254" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="-0.254" y1="-1.016" x2="0.381" y2="1.016" width="0.1524" layer="94"/>
<wire x1="0.381" y1="1.016" x2="1.016" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="1.016" y1="-1.016" x2="1.651" y2="1.016" width="0.1524" layer="94"/>
<wire x1="1.651" y1="1.016" x2="2.286" y2="-1.016" width="0.1524" layer="94"/>
<wire x1="2.286" y1="-1.016" x2="2.54" y2="0" width="0.1524" layer="94"/>
<text x="0" y="1.524" size="1.778" layer="95" font="vector" align="bottom-center">&gt;NAME</text>
<text x="0" y="-1.524" size="1.778" layer="96" font="vector" align="top-center">&gt;VALUE</text>
<pin name="2" x="5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="1" x="-5.08" y="0" visible="off" length="short" direction="pas" swaplevel="1"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="RESISTOR" prefix="R">
<description>Generic Resistor Package</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="AXIAL-0.3" package="AXIAL-0.3">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value=" " constant="no"/>
<attribute name="VALUE" value=" " constant="no"/>
</technology>
</technologies>
</device>
<device name="AXIAL-0.3-KIT" package="AXIAL-0.3-KIT">
<connects>
<connect gate="G$1" pin="1" pad="P$1"/>
<connect gate="G$1" pin="2" pad="P$2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value=" " constant="no"/>
<attribute name="VALUE" value=" " constant="no"/>
</technology>
</technologies>
</device>
<device name="0402" package="0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value=" " constant="no"/>
<attribute name="VALUE" value=" " constant="no"/>
</technology>
</technologies>
</device>
<device name="0603" package="0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value=" " constant="no"/>
<attribute name="VALUE" value=" " constant="no"/>
</technology>
</technologies>
</device>
<device name="0805" package="0805">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value=" " constant="no"/>
<attribute name="VALUE" value=" " constant="no"/>
</technology>
</technologies>
</device>
<device name="1206" package="1206">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value=" " constant="no"/>
<attribute name="VALUE" value=" " constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Connectors">
<description>&lt;h3&gt;SparkFun Connectors&lt;/h3&gt;
This library contains electrically-functional connectors. 
&lt;br&gt;
&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is &lt;b&gt; the end user's responsibility&lt;/b&gt; to ensure correctness and suitablity for a given componet or application. 
&lt;br&gt;
&lt;br&gt;If you enjoy using this library, please buy one of our products at &lt;a href=" www.sparkfun.com"&gt;SparkFun.com&lt;/a&gt;.
&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;
&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="RJ45-8">
<description>&lt;h3&gt;RJ45 Socket with PCB Mounting Posts&lt;/h3&gt;
&lt;p&gt;Specifications:
&lt;ul&gt;&lt;li&gt;Pin count:8&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;
&lt;p&gt;&lt;a href=”https://cdn.sparkfun.com/datasheets/Prototyping/04908.pdf”&gt;Datasheet referenced for footprint&lt;/a&gt;&lt;/p&gt;
&lt;p&gt;Example device(s):
&lt;ul&gt;&lt;li&gt;RJ45-8&lt;/li&gt;
&lt;/ul&gt;&lt;/p&gt;</description>
<wire x1="-7.62" y1="10" x2="7.62" y2="10" width="0.2032" layer="21"/>
<wire x1="-7.62" y1="-3" x2="-7.62" y2="10" width="0.2032" layer="21"/>
<wire x1="-7.62" y1="-3" x2="7.62" y2="-3" width="0.2032" layer="21"/>
<wire x1="7.62" y1="10" x2="7.62" y2="-3" width="0.2032" layer="21"/>
<wire x1="-7.62" y1="-3" x2="-7.62" y2="-10.8" width="0.2032" layer="51"/>
<wire x1="-7.62" y1="-10.8" x2="7.62" y2="-10.8" width="0.2032" layer="51"/>
<wire x1="7.62" y1="-10.8" x2="7.62" y2="-3" width="0.2032" layer="51"/>
<pad name="8" x="4.445" y="8.89" drill="1" diameter="1.8796"/>
<pad name="7" x="3.175" y="6.35" drill="1" diameter="1.8796"/>
<pad name="6" x="1.905" y="8.89" drill="1" diameter="1.8796"/>
<pad name="4" x="-0.635" y="8.89" drill="1" diameter="1.8796"/>
<pad name="2" x="-3.175" y="8.89" drill="1" diameter="1.8796"/>
<pad name="5" x="0.635" y="6.35" drill="1" diameter="1.8796"/>
<pad name="3" x="-1.905" y="6.35" drill="1" diameter="1.8796"/>
<pad name="1" x="-4.445" y="6.35" drill="1" diameter="1.8796" shape="square"/>
<hole x="-5.715" y="0" drill="3.2"/>
<hole x="5.715" y="0" drill="3.2"/>
<text x="-1.3208" y="-6.477" size="0.6096" layer="25" font="vector" ratio="20">&gt;NAME</text>
<text x="-1.27" y="-7.874" size="0.6096" layer="27" font="vector" ratio="20">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="RJ45-8">
<wire x1="-5.08" y1="-12.7" x2="12.7" y2="-12.7" width="0.254" layer="94"/>
<wire x1="12.7" y1="-12.7" x2="12.7" y2="10.16" width="0.254" layer="94"/>
<wire x1="12.7" y1="10.16" x2="-5.08" y2="10.16" width="0.254" layer="94"/>
<wire x1="-5.08" y1="10.16" x2="-5.08" y2="-12.7" width="0.254" layer="94"/>
<text x="-5.08" y="10.668" size="1.778" layer="95">&gt;Name</text>
<text x="-5.08" y="-15.24" size="1.778" layer="95">&gt;Value</text>
<pin name="1" x="-7.62" y="7.62" visible="pin" length="short"/>
<pin name="2" x="-7.62" y="5.08" visible="pin" length="short"/>
<pin name="3" x="-7.62" y="2.54" visible="pin" length="short"/>
<pin name="4" x="-7.62" y="0" visible="pin" length="short"/>
<pin name="8" x="-7.62" y="-10.16" visible="pin" length="short"/>
<pin name="7" x="-7.62" y="-7.62" visible="pin" length="short"/>
<pin name="6" x="-7.62" y="-5.08" visible="pin" length="short"/>
<pin name="5" x="-7.62" y="-2.54" visible="pin" length="short"/>
<wire x1="0" y1="-10.16" x2="2.54" y2="-10.16" width="0.254" layer="94"/>
<wire x1="2.54" y1="-10.16" x2="5.08" y2="-7.62" width="0.254" layer="94"/>
<wire x1="0" y1="-7.62" x2="2.54" y2="-7.62" width="0.254" layer="94"/>
<wire x1="2.54" y1="-7.62" x2="5.08" y2="-10.16" width="0.254" layer="94"/>
<wire x1="0" y1="7.62" x2="2.54" y2="7.62" width="0.254" layer="94"/>
<wire x1="2.54" y1="7.62" x2="5.08" y2="5.08" width="0.254" layer="94"/>
<wire x1="0" y1="5.08" x2="2.54" y2="5.08" width="0.254" layer="94"/>
<wire x1="2.54" y1="5.08" x2="5.08" y2="7.62" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="5.08" y2="-2.54" width="0.254" layer="94"/>
<wire x1="0" y1="-2.54" x2="2.54" y2="-2.54" width="0.254" layer="94"/>
<wire x1="2.54" y1="-2.54" x2="5.08" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="-5.08" x2="2.54" y2="-5.08" width="0.254" layer="94"/>
<wire x1="0" y1="2.54" x2="2.54" y2="2.54" width="0.254" layer="94"/>
<text x="6.096" y="5.334" size="1.778" layer="94">Org</text>
<text x="6.096" y="-2.286" size="1.778" layer="94">Blu</text>
<text x="6.096" y="-9.906" size="1.778" layer="94">Brn</text>
<text x="3.302" y="1.778" size="1.778" layer="94">W/Grn</text>
<text x="3.302" y="-5.842" size="1.778" layer="94">Grn</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="RJ45-8" prefix="J">
<description>&lt;h3&gt;RJ45 Jack - 8 pin&lt;/h3&gt;
Simple RJ45, 8-pin connection. Commonly used for Cat5, Cat5e, and Cat6 Ethernet cables.

&lt;p&gt;&lt;/p&gt;
&lt;b&gt;Here is the connector we sell at SparkFun:&lt;/b&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/643"&gt;RJ45 8-Pin Connector&lt;/a&gt; (PRT-00643)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://cdn.sparkfun.com/datasheets/Prototyping/04908.pdf"&gt;Datasheet&lt;/a&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;/p&gt;
&lt;b&gt;It is used on this SparkFun product:&lt;/b&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/716"&gt;SparkFun RJ45 Breakout&lt;/a&gt; (BOB-00716)&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;&lt;/p&gt;
&lt;br&gt;&lt;/br&gt;
Note, you may also be interested in the "MAGJACK" version of this. It is basically a RJ45 connector, but also has some status LEDs built into the connector housing. You can check that out in this library at the device named "MAGJACK.dev" and see these products online:&lt;/b&gt;
&lt;ul&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/8534"&gt;RJ45 Ethernet MagJack-Compatible&lt;/a&gt; (PRT-08534)&lt;/li&gt;
&lt;li&gt;&lt;a href="https://www.sparkfun.com/products/13021"&gt;SparkFun RJ45 MagJack Breakout&lt;/a&gt; (BOB-13021)&lt;/li&gt;
&lt;/ul&gt;</description>
<gates>
<gate name="JP1" symbol="RJ45-8" x="0" y="0"/>
</gates>
<devices>
<device name="" package="RJ45-8">
<connects>
<connect gate="JP1" pin="1" pad="1"/>
<connect gate="JP1" pin="2" pad="2"/>
<connect gate="JP1" pin="3" pad="3"/>
<connect gate="JP1" pin="4" pad="4"/>
<connect gate="JP1" pin="5" pad="5"/>
<connect gate="JP1" pin="6" pad="6"/>
<connect gate="JP1" pin="7" pad="7"/>
<connect gate="JP1" pin="8" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CONN-08506" constant="no"/>
<attribute name="SF_ID" value="PRT-00643" constant="no"/>
<attribute name="VALUE" value="RJ45" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="SparkFun-Capacitors">
<description>&lt;h3&gt;SparkFun Capacitors&lt;/h3&gt;
This library contains capacitors. 
&lt;br&gt;
&lt;br&gt;
We've spent an enormous amount of time creating and checking these footprints and parts, but it is &lt;b&gt; the end user's responsibility&lt;/b&gt; to ensure correctness and suitablity for a given componet or application. 
&lt;br&gt;
&lt;br&gt;If you enjoy using this library, please buy one of our products at &lt;a href=" www.sparkfun.com"&gt;SparkFun.com&lt;/a&gt;.
&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Licensing:&lt;/b&gt; Creative Commons ShareAlike 4.0 International - https://creativecommons.org/licenses/by-sa/4.0/ 
&lt;br&gt;
&lt;br&gt;
You are welcome to use this library for commercial purposes. For attribution, we ask that when you begin to sell your device using our footprint, you email us with a link to the product being sold. We want bragging rights that we helped (in a very small part) to create your 8th world wonder. We would like the opportunity to feature your device on our homepage.</description>
<packages>
<package name="0402">
<description>&lt;p&gt;&lt;b&gt;Generic 1005 (0402) package&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;0.2mm courtyard excess rounded to nearest 0.05mm.&lt;/p&gt;</description>
<wire x1="-0.2704" y1="0.2286" x2="0.2704" y2="0.2286" width="0.1524" layer="51"/>
<wire x1="0.2704" y1="-0.2286" x2="-0.2704" y2="-0.2286" width="0.1524" layer="51"/>
<wire x1="-1.2" y1="0.65" x2="1.2" y2="0.65" width="0.0508" layer="39"/>
<wire x1="1.2" y1="0.65" x2="1.2" y2="-0.65" width="0.0508" layer="39"/>
<wire x1="1.2" y1="-0.65" x2="-1.2" y2="-0.65" width="0.0508" layer="39"/>
<wire x1="-1.2" y1="-0.65" x2="-1.2" y2="0.65" width="0.0508" layer="39"/>
<smd name="1" x="-0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<smd name="2" x="0.58" y="0" dx="0.85" dy="0.9" layer="1"/>
<text x="0" y="0.762" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-0.762" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<rectangle x1="-0.554" y1="-0.3048" x2="-0.254" y2="0.3048" layer="51"/>
<rectangle x1="0.2588" y1="-0.3048" x2="0.5588" y2="0.3048" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="0603">
<description>&lt;p&gt;&lt;b&gt;Generic 1608 (0603) package&lt;/b&gt;&lt;/p&gt;
&lt;p&gt;0.2mm courtyard excess rounded to nearest 0.05mm.&lt;/p&gt;</description>
<wire x1="-1.6" y1="0.7" x2="1.6" y2="0.7" width="0.0508" layer="39"/>
<wire x1="1.6" y1="0.7" x2="1.6" y2="-0.7" width="0.0508" layer="39"/>
<wire x1="1.6" y1="-0.7" x2="-1.6" y2="-0.7" width="0.0508" layer="39"/>
<wire x1="-1.6" y1="-0.7" x2="-1.6" y2="0.7" width="0.0508" layer="39"/>
<wire x1="-0.356" y1="0.432" x2="0.356" y2="0.432" width="0.1016" layer="51"/>
<wire x1="-0.356" y1="-0.419" x2="0.356" y2="-0.419" width="0.1016" layer="51"/>
<smd name="1" x="-0.85" y="0" dx="1.1" dy="1" layer="1"/>
<smd name="2" x="0.85" y="0" dx="1.1" dy="1" layer="1"/>
<text x="0" y="0.762" size="0.6096" layer="25" font="vector" ratio="20" align="bottom-center">&gt;NAME</text>
<text x="0" y="-0.762" size="0.6096" layer="27" font="vector" ratio="20" align="top-center">&gt;VALUE</text>
<rectangle x1="-0.8382" y1="-0.4699" x2="-0.3381" y2="0.4801" layer="51"/>
<rectangle x1="0.3302" y1="-0.4699" x2="0.8303" y2="0.4801" layer="51"/>
<rectangle x1="-0.1999" y1="-0.3" x2="0.1999" y2="0.3" layer="35"/>
</package>
<package name="CAP-PTH-SMALL-KIT">
<description>&lt;h3&gt;CAP-PTH-SMALL-KIT&lt;/h3&gt;
Commonly used for small ceramic capacitors. Like our 0.1uF (http://www.sparkfun.com/products/8375) or 22pF caps (http://www.sparkfun.com/products/8571).&lt;br&gt;
&lt;br&gt;
&lt;b&gt;Warning:&lt;/b&gt; This is the KIT version of this package. This package has a smaller diameter top stop mask, which doesn't cover the diameter of the pad. This means only the bottom side of the pads' copper will be exposed. You'll only be able to solder to the bottom side.</description>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.254" layer="21"/>
<wire x1="-2.667" y1="1.27" x2="2.667" y2="1.27" width="0.254" layer="21"/>
<wire x1="2.667" y1="1.27" x2="2.667" y2="-1.27" width="0.254" layer="21"/>
<wire x1="2.667" y1="-1.27" x2="-2.667" y2="-1.27" width="0.254" layer="21"/>
<wire x1="-2.667" y1="-1.27" x2="-2.667" y2="1.27" width="0.254" layer="21"/>
<pad name="1" x="-1.397" y="0" drill="1.016" diameter="2.032" stop="no"/>
<pad name="2" x="1.397" y="0" drill="1.016" diameter="2.032" stop="no"/>
<polygon width="0.127" layer="30">
<vertex x="-1.4021" y="-0.9475" curve="-90"/>
<vertex x="-2.357" y="-0.0178" curve="-90.011749"/>
<vertex x="-1.4046" y="0.9576" curve="-90"/>
<vertex x="-0.4546" y="-0.0204" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="-1.4046" y="-0.4395" curve="-90.012891"/>
<vertex x="-1.8491" y="-0.0153" curve="-90"/>
<vertex x="-1.4046" y="0.452" curve="-90"/>
<vertex x="-0.9627" y="-0.0051" curve="-90.012967"/>
</polygon>
<polygon width="0.127" layer="30">
<vertex x="1.397" y="-0.9475" curve="-90"/>
<vertex x="0.4421" y="-0.0178" curve="-90.011749"/>
<vertex x="1.3945" y="0.9576" curve="-90"/>
<vertex x="2.3445" y="-0.0204" curve="-90.024193"/>
</polygon>
<polygon width="0.127" layer="29">
<vertex x="1.3945" y="-0.4395" curve="-90.012891"/>
<vertex x="0.95" y="-0.0153" curve="-90"/>
<vertex x="1.3945" y="0.452" curve="-90"/>
<vertex x="1.8364" y="-0.0051" curve="-90.012967"/>
</polygon>
</package>
</packages>
<symbols>
<symbol name="CAP">
<wire x1="0" y1="2.54" x2="0" y2="2.032" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="0" y2="0.508" width="0.1524" layer="94"/>
<text x="1.524" y="2.921" size="1.778" layer="95" font="vector">&gt;NAME</text>
<text x="1.524" y="-2.159" size="1.778" layer="96" font="vector">&gt;VALUE</text>
<rectangle x1="-2.032" y1="0.508" x2="2.032" y2="1.016" layer="94"/>
<rectangle x1="-2.032" y1="1.524" x2="2.032" y2="2.032" layer="94"/>
<pin name="1" x="0" y="5.08" visible="off" length="short" direction="pas" swaplevel="1" rot="R270"/>
<pin name="2" x="0" y="-2.54" visible="off" length="short" direction="pas" swaplevel="1" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="0.1UF" prefix="C">
<description>&lt;h3&gt;0.1µF ceramic capacitors&lt;/h3&gt;
&lt;p&gt;A capacitor is a passive two-terminal electrical component used to store electrical energy temporarily in an electric field.&lt;/p&gt;</description>
<gates>
<gate name="G$1" symbol="CAP" x="0" y="0"/>
</gates>
<devices>
<device name="-0402-16V-10%" package="0402">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-12416"/>
<attribute name="VALUE" value="0.1uF"/>
</technology>
</technologies>
</device>
<device name="-0603-25V-(+80/-20%)" package="0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-00810"/>
<attribute name="VALUE" value="0.1uF"/>
</technology>
</technologies>
</device>
<device name="-0603-25V-5%" package="0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-08604"/>
<attribute name="VALUE" value="0.1uF"/>
</technology>
</technologies>
</device>
<device name="-KIT-EZ-50V-20%" package="CAP-PTH-SMALL-KIT">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-08370"/>
<attribute name="VALUE" value="0.1uF"/>
</technology>
</technologies>
</device>
<device name="-0603-100V-10%" package="0603">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name="">
<attribute name="PROD_ID" value="CAP-08390"/>
<attribute name="VALUE" value="0.1uF"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="B1" library="SparkFun-Boards" deviceset="SPARKFUN_BEAGLE_BONE_BLACK_CAPE" device=""/>
<part name="IC1" library="adafruit" deviceset="74*125" device="N" technology="LS"/>
<part name="R1" library="SparkFun-Resistors" deviceset="RESISTOR" device="AXIAL-0.3" value=" 120"/>
<part name="R2" library="SparkFun-Resistors" deviceset="RESISTOR" device="AXIAL-0.3" value="330"/>
<part name="J1" library="SparkFun-Connectors" deviceset="RJ45-8" device="" value="RJ45"/>
<part name="C1" library="SparkFun-Capacitors" deviceset="0.1UF" device="-KIT-EZ-50V-20%" value="0.1uF"/>
<part name="C2" library="SparkFun-Capacitors" deviceset="0.1UF" device="-KIT-EZ-50V-20%" value="0.1uF"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="B1" gate="P8" x="83.82" y="66.04"/>
<instance part="B1" gate="P9" x="15.24" y="66.04"/>
<instance part="IC1" gate="A" x="5.08" y="10.16"/>
<instance part="IC1" gate="B" x="5.08" y="-7.62"/>
<instance part="IC1" gate="C" x="53.34" y="10.16"/>
<instance part="IC1" gate="D" x="53.34" y="-7.62"/>
<instance part="R1" gate="G$1" x="93.98" y="15.24" smashed="yes" rot="R90">
<attribute name="NAME" x="89.916" y="15.24" size="1.778" layer="95" font="vector" rot="R180" align="bottom-center"/>
<attribute name="VALUE" x="90.424" y="12.7" size="1.778" layer="96" font="vector" align="top-center"/>
</instance>
<instance part="R2" gate="G$1" x="93.98" y="-2.54" smashed="yes" rot="R90">
<attribute name="NAME" x="91.44" y="-1.524" size="1.778" layer="95" font="vector" rot="R180" align="bottom-center"/>
<attribute name="VALUE" x="90.424" y="-7.62" size="1.778" layer="96" font="vector" rot="R180" align="top-center"/>
</instance>
<instance part="J1" gate="JP1" x="137.16" y="60.96"/>
<instance part="C1" gate="G$1" x="139.7" y="-2.54"/>
<instance part="C2" gate="G$1" x="152.4" y="-2.54"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<pinref part="B1" gate="P9" pin="DGND@1"/>
<wire x1="-2.54" y1="91.44" x2="-17.78" y2="91.44" width="0.1524" layer="91"/>
<label x="-17.78" y="91.44" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="B1" gate="P9" pin="DGND@2"/>
<wire x1="33.02" y1="91.44" x2="38.1" y2="91.44" width="0.1524" layer="91"/>
<label x="38.1" y="91.44" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="B1" gate="P8" pin="DGND@1"/>
<wire x1="66.04" y1="91.44" x2="55.88" y2="91.44" width="0.1524" layer="91"/>
<label x="55.88" y="91.44" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="B1" gate="P8" pin="DGND@2"/>
<wire x1="101.6" y1="91.44" x2="106.68" y2="91.44" width="0.1524" layer="91"/>
<label x="106.68" y="91.44" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J1" gate="JP1" pin="1"/>
<wire x1="129.54" y1="68.58" x2="119.38" y2="68.58" width="0.1524" layer="91"/>
<label x="119.38" y="68.58" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J1" gate="JP1" pin="3"/>
<wire x1="129.54" y1="63.5" x2="119.38" y2="63.5" width="0.1524" layer="91"/>
<label x="119.38" y="63.5" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J1" gate="JP1" pin="5"/>
<wire x1="129.54" y1="58.42" x2="119.38" y2="58.42" width="0.1524" layer="91"/>
<label x="119.38" y="58.42" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="J1" gate="JP1" pin="7"/>
<wire x1="129.54" y1="53.34" x2="119.38" y2="53.34" width="0.1524" layer="91"/>
<label x="119.38" y="53.34" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="OE"/>
<wire x1="5.08" y1="20.32" x2="-5.08" y2="20.32" width="0.1524" layer="91"/>
<label x="-5.08" y="20.32" size="1.778" layer="95"/>
</segment>
<segment>
<wire x1="53.34" y1="20.32" x2="43.18" y2="20.32" width="0.1524" layer="91"/>
<label x="43.18" y="20.32" size="1.778" layer="95"/>
<pinref part="IC1" gate="C" pin="OE"/>
</segment>
<segment>
<wire x1="5.08" y1="2.54" x2="-5.08" y2="2.54" width="0.1524" layer="91"/>
<label x="-5.08" y="2.54" size="1.778" layer="95"/>
<pinref part="IC1" gate="B" pin="OE"/>
</segment>
<segment>
<wire x1="53.34" y1="2.54" x2="43.18" y2="2.54" width="0.1524" layer="91"/>
<label x="43.18" y="2.54" size="1.778" layer="95"/>
<pinref part="IC1" gate="D" pin="OE"/>
</segment>
<segment>
<wire x1="43.18" y1="10.16" x2="35.56" y2="10.16" width="0.1524" layer="91"/>
<label x="35.56" y="10.16" size="1.778" layer="95"/>
<pinref part="IC1" gate="C" pin="I"/>
</segment>
<segment>
<wire x1="43.18" y1="-7.62" x2="35.56" y2="-7.62" width="0.1524" layer="91"/>
<label x="35.56" y="-7.62" size="1.778" layer="95"/>
<pinref part="IC1" gate="D" pin="I"/>
</segment>
<segment>
<pinref part="R2" gate="G$1" pin="1"/>
<wire x1="93.98" y1="-7.62" x2="93.98" y2="-12.7" width="0.1524" layer="91"/>
<label x="93.98" y="-12.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="2"/>
<wire x1="139.7" y1="-5.08" x2="139.7" y2="-7.62" width="0.1524" layer="91"/>
<label x="137.16" y="-10.16" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="2"/>
<wire x1="152.4" y1="-5.08" x2="152.4" y2="-7.62" width="0.1524" layer="91"/>
<label x="149.86" y="-10.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="VDD_3V3" class="0">
<segment>
<pinref part="B1" gate="P9" pin="VDD_3V3@1"/>
<wire x1="-2.54" y1="88.9" x2="-17.78" y2="88.9" width="0.1524" layer="91"/>
<label x="-17.78" y="88.9" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="B1" gate="P9" pin="VDD_3V3@2"/>
<wire x1="33.02" y1="88.9" x2="38.1" y2="88.9" width="0.1524" layer="91"/>
<label x="38.1" y="88.9" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R1" gate="G$1" pin="2"/>
<wire x1="93.98" y1="20.32" x2="93.98" y2="22.86" width="0.1524" layer="91"/>
<label x="93.98" y="22.86" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="C1" gate="G$1" pin="1"/>
<wire x1="139.7" y1="2.54" x2="139.7" y2="5.08" width="0.1524" layer="91"/>
<label x="134.62" y="5.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<pinref part="B1" gate="P9" pin="VDD_5V@1"/>
<wire x1="-2.54" y1="86.36" x2="-17.78" y2="86.36" width="0.1524" layer="91"/>
<label x="-17.78" y="86.36" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="B1" gate="P9" pin="VDD_5V@2"/>
<wire x1="33.02" y1="86.36" x2="38.1" y2="86.36" width="0.1524" layer="91"/>
<label x="38.1" y="86.36" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="C2" gate="G$1" pin="1"/>
<wire x1="152.4" y1="2.54" x2="152.4" y2="5.08" width="0.1524" layer="91"/>
<label x="149.86" y="5.08" size="1.778" layer="95"/>
</segment>
</net>
<net name="P8_11" class="0">
<segment>
<pinref part="B1" gate="P8" pin="GPIO_45"/>
<wire x1="66.04" y1="78.74" x2="55.88" y2="78.74" width="0.1524" layer="91"/>
<label x="55.88" y="78.74" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="I"/>
<wire x1="-5.08" y1="10.16" x2="-12.7" y2="10.16" width="0.1524" layer="91"/>
<label x="-12.7" y="10.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="P8_12" class="0">
<segment>
<pinref part="B1" gate="P8" pin="GPIO_44"/>
<wire x1="101.6" y1="78.74" x2="106.68" y2="78.74" width="0.1524" layer="91"/>
<label x="106.68" y="78.74" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="B" pin="I"/>
<wire x1="-5.08" y1="-7.62" x2="-12.7" y2="-7.62" width="0.1524" layer="91"/>
<label x="-12.7" y="-7.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="TO_ALTO" class="0">
<segment>
<pinref part="J1" gate="JP1" pin="2"/>
<wire x1="129.54" y1="66.04" x2="119.38" y2="66.04" width="0.1524" layer="91"/>
<label x="119.38" y="66.04" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="A" pin="O"/>
<wire x1="15.24" y1="10.16" x2="17.78" y2="10.16" width="0.1524" layer="91"/>
<label x="17.78" y="10.16" size="1.778" layer="95"/>
</segment>
</net>
<net name="COLLISION" class="0">
<segment>
<pinref part="J1" gate="JP1" pin="4"/>
<wire x1="129.54" y1="60.96" x2="119.38" y2="60.96" width="0.1524" layer="91"/>
<label x="119.38" y="60.96" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="IC1" gate="B" pin="O"/>
<wire x1="15.24" y1="-7.62" x2="17.78" y2="-7.62" width="0.1524" layer="91"/>
<label x="17.78" y="-7.62" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="J1" gate="JP1" pin="6"/>
<wire x1="129.54" y1="55.88" x2="119.38" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="FROM_ALTO" class="0">
<segment>
<pinref part="J1" gate="JP1" pin="8"/>
<wire x1="129.54" y1="50.8" x2="119.38" y2="50.8" width="0.1524" layer="91"/>
<label x="119.38" y="50.8" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="R2" gate="G$1" pin="2"/>
<pinref part="R1" gate="G$1" pin="1"/>
<wire x1="93.98" y1="2.54" x2="93.98" y2="7.62" width="0.1524" layer="91"/>
<wire x1="93.98" y1="7.62" x2="93.98" y2="10.16" width="0.1524" layer="91"/>
<wire x1="88.9" y1="7.62" x2="93.98" y2="7.62" width="0.1524" layer="91"/>
<junction x="93.98" y="7.62"/>
<wire x1="93.98" y1="7.62" x2="99.06" y2="7.62" width="0.1524" layer="91"/>
<label x="99.06" y="7.62" size="1.778" layer="95"/>
<label x="73.66" y="7.62" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="B1" gate="P9" pin="GPIO_15"/>
<wire x1="33.02" y1="63.5" x2="38.1" y2="63.5" width="0.1524" layer="91"/>
<label x="38.1" y="63.5" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
