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
END_VAR


{NetworkNumber := 1}
LD	gFileManagerUI
ADR
ST	MpFileManagerUI_0.MpLink
LD	TRUE
ST	MpFileManagerUI_0.Enable
LD	gCoffeeMainLogic.cmdClear {CheckDataType := BOOL}
ST	MpFileManagerUI_0.ErrorReset
LD	MpFileManagerUIConnect
ADR
ST	MpFileManagerUI_0.UIConnect
CAL	MpFileManagerUI_0

END_PROGRAM
CODE_INFORMATION_754EF481_1721_4FA5_BF7F_DE1B91DFA69B_END]]></CodeInformation>
            </Data>
            <Data name="BR_LineMapInformation" handleUnknown="implementation">
              <LineMapInfos guid="083CC528_CBC9_4705_A12D_02E20D3F2FC6">
                <LineMapInfo line="1" column="1" position="[POU start]" />
                <LineMapInfo line="7" column="1" position="Net:1" />
                <LineMapInfo line="8" column="4" position="Net:1, Ln:2, Col:4" />
                <LineMapInfo line="10" column="4" position="Net:1, Ln:1, Col:7 [Block input MpLink]" />
                <LineMapInfo line="11" column="4" position="Net:1, Ln:1, Col:1" />
                <LineMapInfo line="12" column="4" position="Net:1, Ln:1, Col:7 [Block input Enable]" />
                <LineMapInfo line="13" column="4" position="Net:1, Ln:4, Col:1" />
                <LineMapInfo line="14" column="4" position="Net:1, Ln:1, Col:7 [Block input ErrorReset]" />
                <LineMapInfo line="15" column="4" position="Net:1, Ln:6, Col:4" />
                <LineMapInfo line="17" column="4" position="Net:1, Ln:1, Col:7 [Block input UIConnect]" />
                <LineMapInfo line="18" column="5" position="Net:1, Ln:1, Col:7" />
                <LineMapInfo line="20" column="1" position="[POU end]" />
              </LineMapInfos>
            </Data>
            <Data name="BR_ChecksumInformation" handleUnknown="implementation">
              <ChecksumInformation guid="A3044021_E131_45AC_AB9B_59041547F16C" checksum="FCA84976" />
            </Data>
          </AddData>
          <BodyContent xsi:type="LD">
            <Rung evaluationOrder="1">
              <Documentation xsi:type="SimpleText"><![CDATA[File explorer]]></Documentation>
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
                <ConnectionPointOut connectionPointOutId="2">
                  <RelPosition x="3" y="142" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="180" />
                </ConnectionPointOut>
                <ConnectionPointOut connectionPointOutId="0">
                  <RelPosition x="3" y="218" />
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
              <FbdObject xsi:type="DataSource" identifier="gFileManagerUI">
                <AddData>
                  <Data name="BR_AddressValue" handleUnknown="implementation">
                    <AddressValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="93" y="56" />
                <Size x="90" y="20" />
                <ConnectionPointOut connectionPointOutId="4">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <FbdObject xsi:type="DataSource" identifier="MpFileManagerUIConnect">
                <AddData>
                  <Data name="BR_AddressValue" handleUnknown="implementation">
                    <AddressValue value="true" />
                  </Data>
                </AddData>
                <RelPosition x="93" y="208" />
                <Size x="90" y="20" />
                <ConnectionPointOut connectionPointOutId="5">
                  <RelPosition x="90" y="10" />
                </ConnectionPointOut>
              </FbdObject>
              <FbdObject xsi:type="Block" typeName="MpFileManagerUI" instanceName="MpFileManagerUI_0">
                <RelPosition x="183" y="38" />
                <Size x="180" y="190" />
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
                  <InputVariable parameterName="UISetup">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="142" />
                    </ConnectionPointIn>
                  </InputVariable>
                  <InputVariable parameterName="UIConnect">
                    <ConnectionPointIn>
                      <RelPosition x="0" y="180" />
                      <Connection refConnectionPointOutId="5" />
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
                  <OutputVariable parameterName="Info">
                    <ConnectionPointOut connectionPointOutId="0">
                      <RelPosition x="180" y="142" />
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
          </BodyContent>
        </MainBody>
      </Program>
    </GlobalNamespace>
  </Types>
  <Instances />
</Project>