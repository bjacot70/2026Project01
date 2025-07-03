<?xml version="1.0" encoding="utf-8"?>
<?AutomationStudio FileVersion="4.9"?>
<SwConfiguration CpuAddress="" xmlns="http://br-automation.co.at/AS/SwConfiguration">
  <TaskClass Name="Cyclic#1">
    <Task Name="MainContro" Source="MainControl.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="ConveyorSi" Source="ConveyorSim.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Alarm" Source="Infrastructure.Alarm.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#2" />
  <TaskClass Name="Cyclic#3" />
  <TaskClass Name="Cyclic#4">
    <Task Name="Recipe" Source="Infrastructure.Recipe.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="File" Source="Infrastructure.File.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Audit" Source="Infrastructure.Audit.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Report" Source="Infrastructure.Report.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="IO" Source="Infrastructure.IO.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="Sequence" Source="Infrastructure.Sequence.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="CodeBox" Source="Infrastructure.CodeBox.prg" Memory="UserROM" Language="IEC" Debugging="true" />
    <Task Name="PackML" Source="Industry.PackML.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <TaskClass Name="Cyclic#5" />
  <TaskClass Name="Cyclic#6" />
  <TaskClass Name="Cyclic#7" />
  <TaskClass Name="Cyclic#8">
    <Task Name="Skyline" Source="Infrastructure.Skyline.prg" Memory="UserROM" Language="IEC" Debugging="true" />
  </TaskClass>
  <Binaries>
    <BinaryObject Name="mvLoader" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="arsvcreg" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="TCLang" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="FWRules" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="udbdef" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="TCData" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="mvConfig" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="CfgFileUI" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="arconfig" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="UaCsConfig" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="CfgFile" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="mCoWebSc" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="CfgSkyline" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="User" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="TC" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="asfw" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="CfgAudit" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="iomap" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="Role" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="CfgReportF" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="CfgUserX" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="ashwd" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="CfgRecipe" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="CfgSeq" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="CfgReport" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="CfgComUnit" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="ashwac" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="sysconf" Source="" Memory="SystemROM" Language="Binary" />
    <BinaryObject Name="CfgCodeCor" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="Settings" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="CfgCodeBox" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="CfgIO" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="CfgPack" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="CfgAlaList" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="CfgAlaHist" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="CfgAlaCore" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="BRRole" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="CfgHistory" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="UaDvConfig" Source="" Memory="UserROM" Language="Binary" />
    <BinaryObject Name="CfgAlarm" Source="" Memory="UserROM" Language="Binary" />
  </Binaries>
  <Libraries>
    <LibraryObject Name="Runtime" Source="Libraries.Runtime.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="Operator" Source="Libraries.Operator.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsIecCon" Source="Libraries.AsIecCon.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="astime" Source="Libraries.astime.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsArSdm" Source="Libraries.AsArSdm.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="DataObj" Source="Libraries.DataObj.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="FileIO" Source="Libraries.FileIO.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsBrStr" Source="Libraries.AsBrStr.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="sys_lib" Source="Libraries.sys_lib.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="brsystem" Source="Libraries.brsystem.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsArProf" Source="Libraries.AsArProf.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsMem" Source="Libraries.AsMem.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="standard" Source="Libraries.standard.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsBrWStr" Source="Libraries.AsBrWStr.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="ArTextSys" Source="Libraries.ArTextSys.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="ArCert" Source="Libraries.ArCert.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="ArSsl" Source="Libraries.ArSsl.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsETH" Source="Libraries.AsETH.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsHW" Source="Libraries.AsHW.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsIOMMan" Source="Libraries.AsIOMMan.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsUSB" Source="Libraries.AsUSB.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsZip" Source="Libraries.AsZip.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="ArUser" Source="Libraries.ArUser.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="UaCoal" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="UaCoalPrv" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="ArProject" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="AsARCfg" Source="" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="CoTrace" Source="Libraries.CoTrace.lby" Memory="UserROM" Language="binary" Debugging="true" />
    <LibraryObject Name="MpAlarmX" Source="Libraries.MpAlarmX.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpBase" Source="Libraries.MpBase.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpSequence" Source="Libraries.MpSequence.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpAudit" Source="Libraries.MpAudit.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpRecipe" Source="Libraries.MpRecipe.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpUserX" Source="Libraries.MpUserX.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpReport" Source="Libraries.MpReport.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpSkyline" Source="Libraries.MpSkyline.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpFile" Source="Libraries.MpFile.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpPackML" Source="Libraries.MpPackML.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpCodeBox" Source="Libraries.MpCodeBox.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpCom" Source="Libraries.MpCom.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpIO" Source="Libraries.MpIO.lby" Memory="UserROM" Language="Binary" Debugging="true" />
    <LibraryObject Name="MpServer" Source="Libraries.MpServer.lby" Memory="UserROM" Language="Binary" Debugging="true" />
  </Libraries>
</SwConfiguration>