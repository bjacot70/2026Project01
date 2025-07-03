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
            <EntryPoint entryPointType="_INIT" />
          </Data>
        </AddData>
        <MainBody>
          <AddData>
            <Data name="BR_CodeInformation" handleUnknown="implementation">
              <CodeInformation><![CDATA[CODE_INFORMATION_754EF481_1721_4FA5_BF7F_DE1B91DFA69B_BEGIN
PROGRAM _INIT

VAR
	zz$$$$_0_CompareBlock : ANY;
	zz$$$$_1_CompareBlock : ANY;
END_VAR


{NetworkNumber := 1}
LD	CreateFolder {CheckDataType := BOOL}
ST	DirCreate_0.enable
LD	'HD'
ADR
ST	DirCreate_0.pDevice
LD	'mappDemo'
ADR
ST	DirCreate_0.pName
CAL	DirCreate_0

{NetworkNumber := 2}
Compare!	DirCreate_0.status = fiERR_DIR_ALREADY_EXIST
ST	zz$$$$_0_CompareBlock
R	CreateFolder {CheckDataType := BOOL}

{NetworkNumber := 3}
LD	CreateFolder {CheckDataType := BOOL}
ST	DirCreate_0.enable
LD	'HD'
ADR
ST	DirCreate_0.pDevice
LD	'mappDemo'
ADR
ST	DirCreate_0.pName
CAL	DirCreate_0

{NetworkNumber := 4}
LD	TRUE
ST	DirCreate_1.enable
LD	'mappDir'
ADR
ST	DirCreate_1.pDevice
LD	'Reports'
ADR
ST	DirCreate_1.pName
CAL	DirCreate_1

{NetworkNumber := 5}
Compare!	DirCreate_1.status = fiERR_DIR_ALREADY_EXIST
ST	zz$$$$_1_CompareBlock
R	CreateReportsFolder {CheckDataType := BOOL}

{NetworkNumber := 6}
LD	TRUE
ST	DirCreate_1.enable
LD	'mappDir'
ADR
ST	DirCreate_1.pDevice
LD	'Reports'
ADR
ST	DirCreate_1.pName
CAL	DirCreate_1

END_PROGRAM
CODE_INFORMATION_754EF481_1721_4FA5_BF7F_DE1B91DFA69B_END]]></CodeInformation>
            </Data>
            <Data name="BR_LineMapInformation" handleUnknown="implementation">
              <LineMapInfos guid="083CC528_CBC9_4705_A12D_02E20D3F2FC6">
                <LineMapInfo line="1" column="1" position="[POU start]" />
                <LineMapInfo line="9" column="1" position="Net:1" />
                <LineMapInfo line="10" column="4" position="Net:1, Ln:2, Col:1" />
                <LineMapInfo line="11" column="4" position="Net:1, Ln:1, Col:7 [Block input enable]" />
                <LineMapInfo line="12" column="4" position="Net:1, Ln:3, Col:4" />
                <LineMapInfo line="14" column="4" position="Net:1, Ln:1, Col:7 [Block input pDevice]" />
                <LineMapInfo line="15" column="4" position="Net:1, Ln:4, Col:4" />
                <LineMapInfo line="17" column="4" position="Net:1, Ln:1, Col:7 [Block input pName]" />
                <LineMapInfo line="18" column="5" position="Net:1, Ln:1, Col:7" />
                <LineMapInfo line="20" column="1" position="Net:2" />
                <LineMapInfo line="21" column="10" position="Net:2, Ln:1, Col:4" />
                <LineMapInfo line="22" column="4" position="Net:2, Ln:1, Col:4 [Block output ]" />
                <LineMapInfo line="23" column="3" position="Net:2, Ln:1, Col:10" />
                <LineMapInfo line="25" column="1" position="Net:3" />
                <LineMapInfo line="26" column="4" position="Net:3, Ln:2, Col:1" />
                <LineMapInfo line="27" column="4" position="Net:3, Ln:1, Col:7 [Block input enable]" />
                <LineMapInfo line="28" column="4" position="Net:3, Ln:3, Col:4" />
                <LineMapInfo line="30" column="4" position="Net:3, Ln:1, Col:7 [Block input pDevice]" />
                <LineMapInfo line="31" column="4" position="Net:3, Ln:4, Col:4" />
                <LineMapInfo line="33" column="4" position="Net:3, Ln:1, Col:7 [Block input pName]" />
                <LineMapInfo line="34" column="5" position="Net:3, Ln:1, Col:7" />
                <LineMapInfo line="36" column="1" position="Net:4" />
                <LineMapInfo line="37" column="4" position="Net:4, Ln:1, Col:1" />
                <LineMapInfo line="38" column="4" position="Net:4, Ln:1, Col:7 [Block input enable]" />
                <LineMapInfo line="39" column="4" position="Net:4, Ln:3, Col:4" />
                <LineMapInfo line="41" column="4" position="Net:4, Ln:1, Col:7 [Block input pDevice]" />
                <LineMapInfo line="42" column="4" position="Net:4, Ln:4, Col:4" />
                <LineMapInfo line="44" column="4" position="Net:4, Ln:1, Col:7 [Block input pName]" />
                <LineMapInfo line="45" column="5" position="Net:4, Ln:1, Col:7" />
                <LineMapInfo line="47" column="1" position="Net:5" />
                <LineMapInfo line="48" column="10" position="Net:5, Ln:1, Col:4" />
                <LineMapInfo line="49" column="4" position="Net:5, Ln:1, Col:4 [Block output ]" />
                <LineMapInfo line="50" column="3" position="Net:5, Ln:1, Col:10" />
                <LineMapInfo line="52" column="1" position="Net:6" />
                <LineMapInfo line="53" column="4" position="Net:6, Ln:1, Col:1" />
                <LineMapInfo line="54" column="4" position="Net:6, Ln:1, Col:7 [Block input enable]" />
                <LineMapInfo line="55" column="4" position="Net:6, Ln:3, Col:4" />
                <LineMapInfo line="57" column="4" position="Net:6, Ln:1, Col:7 [Block input pDevice]" />
                <LineMapInfo line="58" column="4" position="Net:6, Ln:4, Col:4" />
                <LineMapInfo line="60" column="4" position="Net:6, Ln:1, Col:7 [Block input pName]" />
                <LineMapInfo line="61" column="5" position="Net:6, Ln:1, Col:7" />
                <LineMapInfo line="63" column="1" position="[POU end]" />
              </LineMapInfos>
            </Data>
            <Data name="BR_ChecksumInformation" handleUnknown="implementation">
              <ChecksumInformation guid="A3044021_E131_45AC_AB9B_59041547F16C" checksum="4DFAAC3B" />
            </Data>
          </AddData>
          <BodyContent xsi:type="LD">
            <Rung evaluationOrder="1">
              <Documentation xsi:type="SimpleText"><![CDATA[Create "mapp" folder during boot up > reset when folder already exists ]]></Documentation>
              <LdObject xsi:type="LeftPowerRail">
                <RelPosition x="0" y="0" />
                <Size x="3" y="152" />
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="28" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="1">
                  <RelPosition x="3" y="66" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="104" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="142" />
                </ConnectionPointOut>
              </LdObject>
              <LdObject xsi:type="Contact" operand="CreateFolder" edge="none">
                <RelPosition x="3" y="56" />
                <Size x="90" y="20" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="10" />
                  <Connection refConnectionPointOutId="1" />
                </ConnectionPointIn>
                <ConnectionPointOut connectionPointOutId="2">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </LdObject>
              <FbdObject xsi:type="DataSource" identifier="'HD'">
                <AddData>
                  <Data name="BR_AddressValue" handleUnknown="implementation">
                    <AddressValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="93" y="94" />
                <Size x="90" y="20" />
                <ConnectionPointOut connectionPointOutId="3">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <FbdObject xsi:type="DataSource" identifier="'mappDemo'">
                <AddData>
                  <Data name="BR_AddressValue" handleUnknown="implementation">
                    <AddressValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="93" y="132" />
                <Size x="90" y="20" />
                <ConnectionPointOut connectionPointOutId="4">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <FbdObject xsi:type="Block" typeName="DirCreate" instanceName="DirCreate_0">
                <RelPosition x="183" y="38" />
                <Size x="180" y="114" />
                <InputVariables>
                  <InputVariable parameterName="enable">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="28" />
                      <Connection refConnectionPointOutId="2" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="pDevice">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="66" />
                      <Connection refConnectionPointOutId="3" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="pName">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="104" />
                      <Connection refConnectionPointOutId="4" />
                    </ConnectionPointIn>
                  </InputVariable>
                </InputVariables>
                <OutputVariables>
                  <OutputVariable parameterName="status">
                    <ConnectionPointOut connectionPointOutId="0">
                      <RelPosition x="180" y="28" />
                    </ConnectionPointOut>
                  </OutputVariable>
                </OutputVariables>
              </FbdObject>
              <LdObject xsi:type="RightPowerRail">
                <RelPosition x="393" y="0" />
                <Size x="3" y="152" />
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
              </LdObject>
            </Rung>
            <Rung evaluationOrder="2">
              <Documentation xsi:type="SimpleText"><![CDATA[reset when folder already exists ]]></Documentation>
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
              <FbdObject xsi:type="Block" typeName="Compare">
                <AddData>
                  <Data name="BR_CompareBlock" handleUnknown="implementation">
                    <CompareBlock><![CDATA[DirCreate_0.status = fiERR_DIR_ALREADY_EXIST]]></CompareBlock>
                  </Data>
                </AddData>
                <RelPosition x="93" y="0" />
                <Size x="180" y="76" />
                <OutputVariables>
                  <OutputVariable parameterName="">
                    <ConnectionPointOut connectionPointOutId="1">
                      <RelPosition x="180" y="28" />
                    </ConnectionPointOut>
                  </OutputVariable>
                </OutputVariables>
              </FbdObject>
              <LdObject xsi:type="Coil" operand="CreateFolder" edge="none" latch="reset">
                <RelPosition x="273" y="18" />
                <Size x="90" y="20" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="10" />
                  <Connection refConnectionPointOutId="1" />
                </ConnectionPointIn>
                <ConnectionPointOut connectionPointOutId="2">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </LdObject>
              <LdObject xsi:type="RightPowerRail">
                <RelPosition x="363" y="0" />
                <Size x="3" y="76" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="28" />
                  <Connection refConnectionPointOutId="2" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="66" />
                </ConnectionPointIn>
              </LdObject>
            </Rung>
            <Rung evaluationOrder="3">
              <Documentation xsi:type="SimpleText"><![CDATA[Call disabled]]></Documentation>
              <LdObject xsi:type="LeftPowerRail">
                <RelPosition x="0" y="0" />
                <Size x="3" y="152" />
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="28" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="1">
                  <RelPosition x="3" y="66" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="104" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="142" />
                </ConnectionPointOut>
              </LdObject>
              <LdObject xsi:type="Contact" operand="CreateFolder" edge="none">
                <RelPosition x="3" y="56" />
                <Size x="90" y="20" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="10" />
                  <Connection refConnectionPointOutId="1" />
                </ConnectionPointIn>
                <ConnectionPointOut connectionPointOutId="2">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </LdObject>
              <FbdObject xsi:type="DataSource" identifier="'HD'">
                <AddData>
                  <Data name="BR_AddressValue" handleUnknown="implementation">
                    <AddressValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="93" y="94" />
                <Size x="90" y="20" />
                <ConnectionPointOut connectionPointOutId="3">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <FbdObject xsi:type="DataSource" identifier="'mappDemo'">
                <AddData>
                  <Data name="BR_AddressValue" handleUnknown="implementation">
                    <AddressValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="93" y="132" />
                <Size x="90" y="20" />
                <ConnectionPointOut connectionPointOutId="4">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <FbdObject xsi:type="Block" typeName="DirCreate" instanceName="DirCreate_0">
                <RelPosition x="183" y="38" />
                <Size x="180" y="114" />
                <InputVariables>
                  <InputVariable parameterName="enable">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="28" />
                      <Connection refConnectionPointOutId="2" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="pDevice">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="66" />
                      <Connection refConnectionPointOutId="3" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="pName">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="104" />
                      <Connection refConnectionPointOutId="4" />
                    </ConnectionPointIn>
                  </InputVariable>
                </InputVariables>
                <OutputVariables>
                  <OutputVariable parameterName="status">
                    <ConnectionPointOut connectionPointOutId="0">
                      <RelPosition x="180" y="28" />
                    </ConnectionPointOut>
                  </OutputVariable>
                </OutputVariables>
              </FbdObject>
              <LdObject xsi:type="RightPowerRail">
                <RelPosition x="393" y="0" />
                <Size x="3" y="152" />
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
              </LdObject>
            </Rung>
            <Rung evaluationOrder="4">
              <Documentation xsi:type="SimpleText"><![CDATA[Create "'Reports" folder during boot up > reset when folder already exists ]]></Documentation>
              <LdObject xsi:type="LeftPowerRail">
                <RelPosition x="0" y="0" />
                <Size x="3" y="152" />
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="28" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="1">
                  <RelPosition x="3" y="66" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="104" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="142" />
                </ConnectionPointOut>
              </LdObject>
              <FbdObject xsi:type="DataSource" identifier="'mappDir'">
                <AddData>
                  <Data name="BR_AddressValue" handleUnknown="implementation">
                    <AddressValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="93" y="94" />
                <Size x="90" y="20" />
                <ConnectionPointOut connectionPointOutId="2">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <FbdObject xsi:type="DataSource" identifier="'Reports'">
                <AddData>
                  <Data name="BR_AddressValue" handleUnknown="implementation">
                    <AddressValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="93" y="132" />
                <Size x="90" y="20" />
                <ConnectionPointOut connectionPointOutId="3">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <FbdObject xsi:type="Block" typeName="DirCreate" instanceName="DirCreate_1">
                <RelPosition x="183" y="38" />
                <Size x="180" y="114" />
                <InputVariables>
                  <InputVariable parameterName="enable">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="28" />
                      <Connection refConnectionPointOutId="1" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="pDevice">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="66" />
                      <Connection refConnectionPointOutId="2" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="pName">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="104" />
                      <Connection refConnectionPointOutId="3" />
                    </ConnectionPointIn>
                  </InputVariable>
                </InputVariables>
                <OutputVariables>
                  <OutputVariable parameterName="status">
                    <ConnectionPointOut connectionPointOutId="0">
                      <RelPosition x="180" y="28" />
                    </ConnectionPointOut>
                  </OutputVariable>
                </OutputVariables>
              </FbdObject>
              <LdObject xsi:type="RightPowerRail">
                <RelPosition x="393" y="0" />
                <Size x="3" y="152" />
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
              </LdObject>
            </Rung>
            <Rung evaluationOrder="5">
              <Documentation xsi:type="SimpleText"><![CDATA[reset when folder already exists ]]></Documentation>
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
              <FbdObject xsi:type="Block" typeName="Compare">
                <AddData>
                  <Data name="BR_CompareBlock" handleUnknown="implementation">
                    <CompareBlock><![CDATA[DirCreate_1.status = fiERR_DIR_ALREADY_EXIST]]></CompareBlock>
                  </Data>
                </AddData>
                <RelPosition x="93" y="0" />
                <Size x="180" y="76" />
                <OutputVariables>
                  <OutputVariable parameterName="">
                    <ConnectionPointOut connectionPointOutId="1">
                      <RelPosition x="180" y="28" />
                    </ConnectionPointOut>
                  </OutputVariable>
                </OutputVariables>
              </FbdObject>
              <LdObject xsi:type="Coil" operand="CreateReportsFolder" edge="none" latch="reset">
                <RelPosition x="273" y="18" />
                <Size x="90" y="20" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="10" />
                  <Connection refConnectionPointOutId="1" />
                </ConnectionPointIn>
                <ConnectionPointOut connectionPointOutId="2">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </LdObject>
              <LdObject xsi:type="RightPowerRail">
                <RelPosition x="363" y="0" />
                <Size x="3" y="76" />
                <ConnectionPointIn>
                  <RelPosition x="0" y="28" />
                  <Connection refConnectionPointOutId="2" />
                </ConnectionPointIn>
                <ConnectionPointIn>
                  <RelPosition x="0" y="66" />
                </ConnectionPointIn>
              </LdObject>
            </Rung>
            <Rung evaluationOrder="6">
              <Documentation xsi:type="SimpleText"><![CDATA[Call disabled]]></Documentation>
              <LdObject xsi:type="LeftPowerRail">
                <RelPosition x="0" y="0" />
                <Size x="3" y="152" />
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="28" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="1">
                  <RelPosition x="3" y="66" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="104" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="142" />
                </ConnectionPointOut>
              </LdObject>
              <FbdObject xsi:type="DataSource" identifier="'mappDir'">
                <AddData>
                  <Data name="BR_AddressValue" handleUnknown="implementation">
                    <AddressValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="93" y="94" />
                <Size x="90" y="20" />
                <ConnectionPointOut connectionPointOutId="2">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <FbdObject xsi:type="DataSource" identifier="'Reports'">
                <AddData>
                  <Data name="BR_AddressValue" handleUnknown="implementation">
                    <AddressValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="93" y="132" />
                <Size x="90" y="20" />
                <ConnectionPointOut connectionPointOutId="3">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <FbdObject xsi:type="Block" typeName="DirCreate" instanceName="DirCreate_1">
                <RelPosition x="183" y="38" />
                <Size x="180" y="114" />
                <InputVariables>
                  <InputVariable parameterName="enable">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="28" />
                      <Connection refConnectionPointOutId="1" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="pDevice">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="66" />
                      <Connection refConnectionPointOutId="2" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="pName">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="104" />
                      <Connection refConnectionPointOutId="3" />
                    </ConnectionPointIn>
                  </InputVariable>
                </InputVariables>
                <OutputVariables>
                  <OutputVariable parameterName="status">
                    <ConnectionPointOut connectionPointOutId="0">
                      <RelPosition x="180" y="28" />
                    </ConnectionPointOut>
                  </OutputVariable>
                </OutputVariables>
              </FbdObject>
              <LdObject xsi:type="RightPowerRail">
                <RelPosition x="393" y="0" />
                <Size x="3" y="152" />
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
              </LdObject>
            </Rung>
          </BodyContent>
        </MainBody>
      </Program>
    </GlobalNamespace>
  </Types>
  <Instances />
</Project>