curl --location --request POST 'http://localhost:9090/psim_webservice/IdMWebService/' \
--header 'Content-Type: text/xml' \
--data-raw '<env:Envelope xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:env="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <env:Header/>
  <env:Body>
    <idm:PRPA_IN201305UV02 xmlns:idm="http://vaww.oed.oit.va.gov" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="urn:hl7-org:v3" xsi:schemaLocation="urn:hl7-org:v3 ../../schema/HL7V3/NE2008/multicacheschemas/PRPA_IN201305UV02.xsd" ITSVersion="XML_1.0">
      <id root="1.2.840.114350.1.13.0.1.7.1.1" extension="200VGOV-24ec50c5-1927-43f2-958b-1b7805b5e61c"/>
      <creationTime value="20201209201923"/>
      <versionCode code="4.1"/>
      <interactionId root="2.16.840.1.113883.1.6" extension="PRPA_IN201305UV02"/>
      <processingCode code="T"/>
      <processingModeCode code="T"/>
      <acceptAckCode code="AL"/>
      <receiver typeCode="RCV">
        <device classCode="DEV" determinerCode="INSTANCE">
          <id root="1.2.840.114350.1.13.999.234" extension="200M"/>
        </device>
      </receiver>
      <sender typeCode="SND">
        <device classCode="DEV" determinerCode="INSTANCE">
          <id root="2.16.840.1.113883.4.349" extension="200VGOV"/>
        </device>
      </sender>
      <controlActProcess classCode="CACT" moodCode="EVN">
        <code code="PRPA_TE201305UV02" codeSystem="2.16.840.1.113883.1.6"/>
        <dataEnterer typeCode="ENT" contextControlCode="AP">
          <assignedPerson classCode="ASSIGNED">
            <id extension="796130115" root="2.16.840.1.113883.777.999"/>
            <assignedPerson classCode="PSN" determinerCode="INSTANCE">
              <name>
                <given>Tamara</given>
                <given>E</given>
                <family>Ellis</family>
              </name>
            </assignedPerson>
          </assignedPerson>
        </dataEnterer>
        <queryByParameter>
          <queryId root="1.2.840.114350.1.13.28.1.18.5.999" extension="18204"/>
          <statusCode code="new"/>
          <modifyCode code="MVI.COMP2"/>
          <initialQuantity value="1"/>
          <parameterList>
            <livingSubjectBirthTime>
              <value value="19670619"/>
              <semanticsText>Date of Birth</semanticsText>
            </livingSubjectBirthTime>
          </parameterList>
        </queryByParameter>
      </controlActProcess>
    </idm:PRPA_IN201305UV02>
  </env:Body>
</env:Envelope>'
