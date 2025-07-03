<?xml version="1.0" encoding="utf-8"?>
<?AutomationStudio FileVersion="6.0"?>
<Project xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xhtml="http://www.w3.org/1999/xhtml" schemaVersion="1.0" xmlns="www.iec.ch/public/TC65SC65BWG7TF10">
  <FileHeader companyName="B&amp;R Industrial Automation GmbH" productName="Automation Studio" productVersion="6.0" />
  <ContentHeader name="" creationDateTime="0001-01-01T00:00:00">
    <CoordinateInfo />
    <AddData>
      <Data name="BR_EditorMode" handleUnknown="implementation">
        <EditorMode value="Legacy" />
      </Data>
    </AddData>
  </ContentHeader>
  <Types>
    <GlobalNamespace>
      <Program name="">
        <AddData>
          <Data name="BR_EntryPoint" handleUnknown="implementation">
            <EntryPoint entryPointType="_CYCLIC" />
          </Data>
        </AddData>
        <MainBody>
          <AddData>
            <Data name="BR_CodeInformation" handleUnknown="implementation">
              <CodeInformation><![CDATA[CODE_INFORMATION_754EF481_1721_4FA5_BF7F_DE1B91DFA69B_BEGIN
PROGRAM _CYCLIC

VAR
	CreateRecipes_$$$$$$ : SFCActionType2;
	AuditTrail_$$$$$$ : SFCActionType2;
END_VAR


{NetworkNumber := 1}
LD	gRecipeXml
ADR
ST	MpRecipeXml_0.MpLink
LD	TRUE
ST	MpRecipeXml_0.Enable
LD	gCoffeeMainLogic.cmdClear {CheckDataType := BOOL}
ST	MpRecipeXml_0.ErrorReset
LD	'mappDir'
ADR
ST	MpRecipeXml_0.DeviceName
CAL	MpRecipeXml_0

{NetworkNumber := 2}
LD	'mappDir/'
CONCAT	MpRecipeUIConnect.Recipe.List.Names[MpRecipeUIConnect.Recipe.List.SelectedIndex]
ST	LoadRecipe

{NetworkNumber := 3}
LD	''
CONCAT	MpRecipeUIConnect.Recipe.List.Names[MpRecipeUIConnect.Recipe.List.SelectedIndex]
ST	LoadRecipeSimple

{NetworkNumber := 4}
LD	gRecipeXml
ADR
ST	MpRecipeUI_0.MpLink
LD	TRUE
ST	MpRecipeUI_0.Enable
LD	gCoffeeMainLogic.cmdClear {CheckDataType := BOOL}
ST	MpRecipeUI_0.ErrorReset
LD	'mappDir'
ADR
ST	MpRecipeUI_0.DeviceName
LD	MpRecipeUIConnect
ADR
ST	MpRecipeUI_0.UIConnect
CAL	MpRecipeUI_0

{NetworkNumber := 5}
LD	gRecipeXml
ADR
ST	MpRecipeRegPar_0.MpLink
LD	TRUE
ST	MpRecipeRegPar_0.Enable
LD	'Recipe:CoffeeIngredients'
ADR
ST	MpRecipeRegPar_0.PVName
CAL	MpRecipeRegPar_0

{NetworkNumber := 6}
LD	TRUE
S	CreateRecipes_$$$$$$.AC.N

{NetworkNumber := 7}
LD	TRUE
S	AuditTrail_$$$$$$.AC.N

END_PROGRAM
CODE_INFORMATION_754EF481_1721_4FA5_BF7F_DE1B91DFA69B_END]]></CodeInformation>
            </Data>
            <Data name="BR_LineMapInformation" handleUnknown="implementation">
              <LineMapInfos guid="083CC528_CBC9_4705_A12D_02E20D3F2FC6">
                <LineMapInfo line="1" column="1" position="[POU start]" />
                <LineMapInfo line="9" column="1" position="Net:1" />
                <LineMapInfo line="10" column="4" position="Net:1, Ln:2, Col:7" />
                <LineMapInfo line="12" column="4" position="Net:1, Ln:1, Col:10 [Block input MpLink]" />
                <LineMapInfo line="13" column="4" position="Net:1, Ln:1, Col:1" />
                <LineMapInfo line="14" column="4" position="Net:1, Ln:1, Col:10 [Block input Enable]" />
                <LineMapInfo line="15" column="4" position="Net:1, Ln:4, Col:1" />
                <LineMapInfo line="16" column="4" position="Net:1, Ln:1, Col:10 [Block input ErrorReset]" />
                <LineMapInfo line="17" column="4" position="Net:1, Ln:5, Col:7" />
                <LineMapInfo line="19" column="4" position="Net:1, Ln:1, Col:10 [Block input DeviceName]" />
                <LineMapInfo line="20" column="5" position="Net:1, Ln:1, Col:10" />
                <LineMapInfo line="22" column="1" position="Net:2" />
                <LineMapInfo line="23" column="4" position="Net:2, Ln:1, Col:8" />
                <LineMapInfo line="24" column="1" position="Net:2, Ln:1, Col:10" />
                <LineMapInfo line="24" column="8" position="Net:2, Ln:2, Col:1" />
                <LineMapInfo line="25" column="4" position="Net:2, Ln:1, Col:16" />
                <LineMapInfo line="27" column="1" position="Net:3" />
                <LineMapInfo line="28" column="4" position="Net:3, Ln:1, Col:8" />
                <LineMapInfo line="29" column="1" position="Net:3, Ln:1, Col:10" />
                <LineMapInfo line="29" column="8" position="Net:3, Ln:2, Col:1" />
                <LineMapInfo line="30" column="4" position="Net:3, Ln:1, Col:16" />
                <LineMapInfo line="32" column="1" position="Net:4" />
                <LineMapInfo line="33" column="4" position="Net:4, Ln:2, Col:3" />
                <LineMapInfo line="35" column="4" position="Net:4, Ln:1, Col:7 [Block input MpLink]" />
                <LineMapInfo line="36" column="4" position="Net:4, Ln:1, Col:1" />
                <LineMapInfo line="37" column="4" position="Net:4, Ln:1, Col:7 [Block input Enable]" />
                <LineMapInfo line="38" column="4" position="Net:4, Ln:4, Col:3" />
                <LineMapInfo line="39" column="4" position="Net:4, Ln:1, Col:7 [Block input ErrorReset]" />
                <LineMapInfo line="40" column="4" position="Net:4, Ln:6, Col:3" />
                <LineMapInfo line="42" column="4" position="Net:4, Ln:1, Col:7 [Block input DeviceName]" />
                <LineMapInfo line="43" column="4" position="Net:4, Ln:9, Col:4" />
                <LineMapInfo line="45" column="4" position="Net:4, Ln:1, Col:7 [Block input UIConnect]" />
                <LineMapInfo line="46" column="5" position="Net:4, Ln:1, Col:7" />
                <LineMapInfo line="48" column="1" position="Net:5" />
                <LineMapInfo line="49" column="4" position="Net:5, Ln:2, Col:4" />
                <LineMapInfo line="51" column="4" position="Net:5, Ln:1, Col:7 [Block input MpLink]" />
                <LineMapInfo line="52" column="4" position="Net:5, Ln:1, Col:1" />
                <LineMapInfo line="53" column="4" position="Net:5, Ln:1, Col:7 [Block input Enable]" />
                <LineMapInfo line="54" column="4" position="Net:5, Ln:5, Col:4" />
                <LineMapInfo line="56" column="4" position="Net:5, Ln:1, Col:7 [Block input PVName]" />
                <LineMapInfo line="57" column="5" position="Net:5, Ln:1, Col:7" />
                <LineMapInfo line="59" column="1" position="Net:6" />
                <LineMapInfo line="60" column="4" position="Net:6, Ln:1, Col:1" />
                <LineMapInfo line="61" column="3" position="Net:6, Ln:1, Col:1" />
                <LineMapInfo line="63" column="1" position="Net:7" />
                <LineMapInfo line="64" column="4" position="Net:7, Ln:1, Col:1" />
                <LineMapInfo line="65" column="3" position="Net:7, Ln:1, Col:1" />
                <LineMapInfo line="67" column="1" position="[POU end]" />
              </LineMapInfos>
            </Data>
            <Data name="BR_ChecksumInformation" handleUnknown="implementation">
              <ChecksumInformation guid="A3044021_E131_45AC_AB9B_59041547F16C" checksum="4A722EE1" />
            </Data>
          </AddData>
          <BodyContent xsi:type="LD">
            <Rung evaluationOrder="1">
              <Documentation xsi:type="SimpleText"><![CDATA[Recipe handling]]></Documentation>
              <LdObject xsi:type="LeftPowerRail">
                <RelPosition x="0" y="0" />
                <Size x="3" y="456" />
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="28" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="66" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="1">
                  <RelPosition x="3" y="104" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="2">
                  <RelPosition x="3" y="142" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="180" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="218" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="256" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="294" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="332" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="370" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="408" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="446" />
                </ConnectionPointOut>
              </LdObject>
              <LdObject xsi:type="Contact" operand="gCoffeeMainLogic.cmdClear" edge="none">
                <RelPosition x="3" y="132" />
                <Size x="90" y="20" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="10" />
                  <Connection refConnectionPointOutId="2" />
                </ConnectionPointIn>
                <ConnectionPointOut connectionPointOutId="3">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </LdObject>
              <FbdObject xsi:type="DataSource" identifier="gRecipeXml">
                <AddData>
                  <Data name="BR_AddressValue" handleUnknown="implementation">
                    <AddressValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="183" y="56" />
                <Size x="90" y="20" />
                <ConnectionPointOut connectionPointOutId="4">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <FbdObject xsi:type="DataSource" identifier="'mappDir'">
                <AddData>
                  <Data name="BR_AddressValue" handleUnknown="implementation">
                    <AddressValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="183" y="170" />
                <Size x="90" y="20" />
                <ConnectionPointOut connectionPointOutId="5">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <FbdObject xsi:type="Block" typeName="MpRecipeXml" instanceName="MpRecipeXml_0">
                <RelPosition x="273" y="38" />
                <Size x="180" y="418" />
                <InputVariables>
                  <InputVariable parameterName="MpLink">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="28" />
                      <Connection refConnectionPointOutId="4" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="Enable">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="66" />
                      <Connection refConnectionPointOutId="1" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="ErrorReset">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="104" />
                      <Connection refConnectionPointOutId="3" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="DeviceName">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="142" />
                      <Connection refConnectionPointOutId="5" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="FileName">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="180" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="Header">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="218" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="Category">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="256" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="LoadType">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="294" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="Load">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="332" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="Save">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="370" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="UpdateNotification">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="408" />
                    </ConnectionPointIn>
                  </InputVariable>
                </InputVariables>
                <OutputVariables>
                  <OutputVariable parameterName="Active">
                    <ConnectionPointOut connectionPointOutId="0">
                      <RelPosition x="180" y="28" />
                    </ConnectionPointOut>
                  </OutputVariable>
                  <OutputVariable parameterName="Error">
                    <ConnectionPointOut connectionPointOutId="0">
                      <RelPosition x="180" y="66" />
                    </ConnectionPointOut>
                  </OutputVariable>
                  <OutputVariable parameterName="StatusID">
                    <ConnectionPointOut connectionPointOutId="0">
                      <RelPosition x="180" y="104" />
                    </ConnectionPointOut>
                  </OutputVariable>
                  <OutputVariable parameterName="CommandBusy">
                    <ConnectionPointOut connectionPointOutId="0">
                      <RelPosition x="180" y="142" />
                    </ConnectionPointOut>
                  </OutputVariable>
                  <OutputVariable parameterName="CommandDone">
                    <ConnectionPointOut connectionPointOutId="0">
                      <RelPosition x="180" y="180" />
                    </ConnectionPointOut>
                  </OutputVariable>
                  <OutputVariable parameterName="Info">
                    <ConnectionPointOut connectionPointOutId="0">
                      <RelPosition x="180" y="218" />
                    </ConnectionPointOut>
                  </OutputVariable>
                </OutputVariables>
              </FbdObject>
              <LdObject xsi:type="RightPowerRail">
                <RelPosition x="483" y="0" />
                <Size x="3" y="456" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="28" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="66" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="104" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="142" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="180" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="218" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="256" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="294" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="332" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="370" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="408" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="446" />
                </ConnectionPointIn>
              </LdObject>
            </Rung>
            <Rung evaluationOrder="2">
              <LdObject xsi:type="LeftPowerRail">
                <RelPosition x="0" y="0" />
                <Size x="3" y="76" />
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="28" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="66" />
                </ConnectionPointOut>
              </LdObject>
              <FbdObject xsi:type="DataSource" identifier="MpRecipeUIConnect.Recipe.List.Names[MpRecipeUIConnect.Recipe.List.SelectedIndex]">
                <AddData>
                  <Data name="BR_AnalogValue" handleUnknown="implementation">
                    <AnalogValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="3" y="56" />
                <Size x="270" y="20" />
                <ConnectionPointOut connectionPointOutId="1">
                  <RelPosition x="270" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <FbdObject xsi:type="DataSource" identifier="'mappDir/'">
                <AddData>
                  <Data name="BR_AnalogValue" handleUnknown="implementation">
                    <AnalogValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="213" y="18" />
                <Size x="60" y="20" />
                <ConnectionPointOut connectionPointOutId="2">
                  <RelPosition x="60" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <FbdObject xsi:type="Block" typeName="CONCAT">
                <RelPosition x="273" y="0" />
                <Size x="180" y="76" />
                <InputVariables>
                  <InputVariable parameterName="IN1">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="28" />
                      <Connection refConnectionPointOutId="2" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="IN2">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="66" />
                      <Connection refConnectionPointOutId="1" />
                    </ConnectionPointIn>
                  </InputVariable>
                </InputVariables>
                <OutputVariables>
                  <OutputVariable parameterName="OUT">
                    <ConnectionPointOut connectionPointOutId="3">
                      <RelPosition x="180" y="28" />
                    </ConnectionPointOut>
                  </OutputVariable>
                </OutputVariables>
              </FbdObject>
              <FbdObject xsi:type="DataSink" identifier="LoadRecipe">
                <AddData>
                  <Data name="BR_AnalogValue" handleUnknown="implementation">
                    <AnalogValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="453" y="18" />
                <Size x="90" y="20" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="10" />
                  <Connection refConnectionPointOutId="3" />
                </ConnectionPointIn>
              </FbdObject>
              <LdObject xsi:type="RightPowerRail">
                <RelPosition x="543" y="0" />
                <Size x="3" y="76" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="28" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="66" />
                </ConnectionPointIn>
              </LdObject>
            </Rung>
            <Rung evaluationOrder="3">
              <LdObject xsi:type="LeftPowerRail">
                <RelPosition x="0" y="0" />
                <Size x="3" y="76" />
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="28" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="66" />
                </ConnectionPointOut>
              </LdObject>
              <FbdObject xsi:type="DataSource" identifier="MpRecipeUIConnect.Recipe.List.Names[MpRecipeUIConnect.Recipe.List.SelectedIndex]">
                <AddData>
                  <Data name="BR_AnalogValue" handleUnknown="implementation">
                    <AnalogValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="3" y="56" />
                <Size x="270" y="20" />
                <ConnectionPointOut connectionPointOutId="1">
                  <RelPosition x="270" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <FbdObject xsi:type="DataSource" identifier="''">
                <AddData>
                  <Data name="BR_AnalogValue" handleUnknown="implementation">
                    <AnalogValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="213" y="18" />
                <Size x="60" y="20" />
                <ConnectionPointOut connectionPointOutId="2">
                  <RelPosition x="60" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <FbdObject xsi:type="Block" typeName="CONCAT">
                <RelPosition x="273" y="0" />
                <Size x="180" y="76" />
                <InputVariables>
                  <InputVariable parameterName="IN1">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="28" />
                      <Connection refConnectionPointOutId="2" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="IN2">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="66" />
                      <Connection refConnectionPointOutId="1" />
                    </ConnectionPointIn>
                  </InputVariable>
                </InputVariables>
                <OutputVariables>
                  <OutputVariable parameterName="OUT">
                    <ConnectionPointOut connectionPointOutId="3">
                      <RelPosition x="180" y="28" />
                    </ConnectionPointOut>
                  </OutputVariable>
                </OutputVariables>
              </FbdObject>
              <FbdObject xsi:type="DataSink" identifier="LoadRecipeSimple">
                <AddData>
                  <Data name="BR_AnalogValue" handleUnknown="implementation">
                    <AnalogValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="453" y="18" />
                <Size x="120" y="20" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="10" />
                  <Connection refConnectionPointOutId="3" />
                </ConnectionPointIn>
              </FbdObject>
              <LdObject xsi:type="RightPowerRail">
                <RelPosition x="573" y="0" />
                <Size x="3" y="76" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="28" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="66" />
                </ConnectionPointIn>
              </LdObject>
            </Rung>
            <Rung evaluationOrder="4">
              <Documentation xsi:type="SimpleText"><![CDATA[Recipe handling connection with the HMI]]></Documentation>
              <LdObject xsi:type="LeftPowerRail">
                <RelPosition x="0" y="0" />
                <Size x="3" y="342" />
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="28" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="66" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="1">
                  <RelPosition x="3" y="104" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="2">
                  <RelPosition x="3" y="142" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="180" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="218" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="256" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="294" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="332" />
                </ConnectionPointOut>
              </LdObject>
              <FbdObject xsi:type="DataSource" identifier="gRecipeXml">
                <AddData>
                  <Data name="BR_AddressValue" handleUnknown="implementation">
                    <AddressValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="63" y="56" />
                <Size x="120" y="20" />
                <ConnectionPointOut connectionPointOutId="3">
                  <RelPosition x="120" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <LdObject xsi:type="Contact" operand="gCoffeeMainLogic.cmdClear" edge="none">
                <RelPosition x="63" y="132" />
                <Size x="90" y="20" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="10" />
                  <Connection refConnectionPointOutId="2" />
                </ConnectionPointIn>
                <ConnectionPointOut connectionPointOutId="4">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </LdObject>
              <FbdObject xsi:type="DataSource" identifier="'mappDir'">
                <AddData>
                  <Data name="BR_AddressValue" handleUnknown="implementation">
                    <AddressValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="63" y="208" />
                <Size x="120" y="20" />
                <ConnectionPointOut connectionPointOutId="5">
                  <RelPosition x="120" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <FbdObject xsi:type="DataSource" identifier="MpRecipeUIConnect">
                <AddData>
                  <Data name="BR_AddressValue" handleUnknown="implementation">
                    <AddressValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="93" y="322" />
                <Size x="90" y="20" />
                <ConnectionPointOut connectionPointOutId="6">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <FbdObject xsi:type="Block" typeName="MpRecipeUI" instanceName="MpRecipeUI_0">
                <RelPosition x="183" y="38" />
                <Size x="150" y="304" />
                <InputVariables>
                  <InputVariable parameterName="MpLink">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="28" />
                      <Connection refConnectionPointOutId="3" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="Enable">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="66" />
                      <Connection refConnectionPointOutId="1" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="ErrorReset">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="104" />
                      <Connection refConnectionPointOutId="4" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="UISetup">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="142" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="DeviceName">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="180" />
                      <Connection refConnectionPointOutId="5" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="Category">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="218" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="Header">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="256" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="UIConnect">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="294" />
                      <Connection refConnectionPointOutId="6" />
                    </ConnectionPointIn>
                  </InputVariable>
                </InputVariables>
                <OutputVariables>
                  <OutputVariable parameterName="Active">
                    <ConnectionPointOut connectionPointOutId="0">
                      <RelPosition x="150" y="28" />
                    </ConnectionPointOut>
                  </OutputVariable>
                  <OutputVariable parameterName="Error">
                    <ConnectionPointOut connectionPointOutId="0">
                      <RelPosition x="150" y="66" />
                    </ConnectionPointOut>
                  </OutputVariable>
                  <OutputVariable parameterName="StatusID">
                    <ConnectionPointOut connectionPointOutId="0">
                      <RelPosition x="150" y="104" />
                    </ConnectionPointOut>
                  </OutputVariable>
                  <OutputVariable parameterName="Info">
                    <ConnectionPointOut connectionPointOutId="0">
                      <RelPosition x="150" y="142" />
                    </ConnectionPointOut>
                  </OutputVariable>
                </OutputVariables>
              </FbdObject>
              <LdObject xsi:type="RightPowerRail">
                <RelPosition x="363" y="0" />
                <Size x="3" y="342" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="28" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="66" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="104" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="142" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="180" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="218" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="256" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="294" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="332" />
                </ConnectionPointIn>
              </LdObject>
            </Rung>
            <Rung evaluationOrder="5">
              <Documentation xsi:type="SimpleText"><![CDATA[Registration of a coffee recipe structure]]></Documentation>
              <LdObject xsi:type="LeftPowerRail">
                <RelPosition x="0" y="0" />
                <Size x="3" y="228" />
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="28" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="66" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="1">
                  <RelPosition x="3" y="104" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="142" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="180" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="218" />
                </ConnectionPointOut>
              </LdObject>
              <FbdObject xsi:type="DataSource" identifier="gRecipeXml">
                <AddData>
                  <Data name="BR_AddressValue" handleUnknown="implementation">
                    <AddressValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="93" y="56" />
                <Size x="90" y="20" />
                <ConnectionPointOut connectionPointOutId="2">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <FbdObject xsi:type="DataSource" identifier="'Recipe:CoffeeIngredients'">
                <AddData>
                  <Data name="BR_AddressValue" handleUnknown="implementation">
                    <AddressValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="93" y="170" />
                <Size x="90" y="20" />
                <ConnectionPointOut connectionPointOutId="3">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <FbdObject xsi:type="Block" typeName="MpRecipeRegPar" instanceName="MpRecipeRegPar_0">
                <RelPosition x="183" y="38" />
                <Size x="180" y="190" />
                <InputVariables>
                  <InputVariable parameterName="MpLink">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="28" />
                      <Connection refConnectionPointOutId="2" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="Enable">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="66" />
                      <Connection refConnectionPointOutId="1" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="ErrorReset">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="104" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="PVName">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="142" />
                      <Connection refConnectionPointOutId="3" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="Category">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="180" />
                    </ConnectionPointIn>
                  </InputVariable>
                </InputVariables>
                <OutputVariables>
                  <OutputVariable parameterName="Active">
                    <ConnectionPointOut connectionPointOutId="0">
                      <RelPosition x="180" y="28" />
                    </ConnectionPointOut>
                  </OutputVariable>
                  <OutputVariable parameterName="Error">
                    <ConnectionPointOut connectionPointOutId="0">
                      <RelPosition x="180" y="66" />
                    </ConnectionPointOut>
                  </OutputVariable>
                  <OutputVariable parameterName="StatusID">
                    <ConnectionPointOut connectionPointOutId="0">
                      <RelPosition x="180" y="104" />
                    </ConnectionPointOut>
                  </OutputVariable>
                  <OutputVariable parameterName="UpdateNotification">
                    <ConnectionPointOut connectionPointOutId="0">
                      <RelPosition x="180" y="142" />
                    </ConnectionPointOut>
                  </OutputVariable>
                  <OutputVariable parameterName="Info">
                    <ConnectionPointOut connectionPointOutId="0">
                      <RelPosition x="180" y="180" />
                    </ConnectionPointOut>
                  </OutputVariable>
                </OutputVariables>
              </FbdObject>
              <LdObject xsi:type="RightPowerRail">
                <RelPosition x="393" y="0" />
                <Size x="3" y="228" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="28" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="66" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="104" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="142" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="180" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="218" />
                </ConnectionPointIn>
              </LdObject>
            </Rung>
            <Rung evaluationOrder="6">
              <Documentation xsi:type="SimpleText"><![CDATA[Action call to check if the recipes exist if not create them for the first time]]></Documentation>
              <LdObject xsi:type="LeftPowerRail">
                <RelPosition x="0" y="0" />
                <Size x="3" y="38" />
                <ConnectionPointOut connectionPointOutId="1">
                  <RelPosition x="3" y="28" />
                </ConnectionPointOut>
              </LdObject>
              <CommonObject xsi:type="ActionBlocks">
                <RelPosition x="3" y="0" />
                <Size x="180" y="38" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="28" />
                  <Connection refConnectionPointOutId="1" />
                </ConnectionPointIn>
                <ActionBlock>
                  <ActionQualifier qualifier="N" />
                  <ReferenceName>CreateRecipes</ReferenceName>
                </ActionBlock>
              </CommonObject>
              <LdObject xsi:type="RightPowerRail">
                <RelPosition x="363" y="0" />
                <Size x="3" y="38" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="28" />
                </ConnectionPointIn>
              </LdObject>
            </Rung>
            <Rung evaluationOrder="7">
              <Documentation xsi:type="SimpleText"><![CDATA[Action call to check for value change for the AuditTrail]]></Documentation>
              <LdObject xsi:type="LeftPowerRail">
                <RelPosition x="0" y="0" />
                <Size x="3" y="38" />
                <ConnectionPointOut connectionPointOutId="1">
                  <RelPosition x="3" y="28" />
                </ConnectionPointOut>
              </LdObject>
              <CommonObject xsi:type="ActionBlocks">
                <RelPosition x="3" y="0" />
                <Size x="180" y="38" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="28" />
                  <Connection refConnectionPointOutId="1" />
                </ConnectionPointIn>
                <ActionBlock>
                  <ActionQualifier qualifier="N" />
                  <ReferenceName>AuditTrail</ReferenceName>
                </ActionBlock>
              </CommonObject>
              <LdObject xsi:type="RightPowerRail">
                <RelPosition x="363" y="0" />
                <Size x="3" y="38" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="28" />
                </ConnectionPointIn>
              </LdObject>
            </Rung>
          </BodyContent>
        </MainBody>
      </Program>
    </GlobalNamespace>
  </Types>
  <Instances />
</Project>