CodeSystem: V3AdministrativeGenderCS
Id: V3AdministrativeGender
Title: "v3 Administrative Gender"
Description: """
	HL7 International hat schon in den neunziger Jahren die Bezeichnung 'Sex' abgeändert in 'administrative gender'. 
	Gemeint ist damit, wie eine Person administrativ behandelt werden möchte. 
	Damit stehen dann nur noch folgende Werte zur Verfügung, die auch ausreichend sind: 
"""

* ^url = "http://gender.oemig.de/fhir/CodeSystem/V3AdministrativeGender"
* ^version = "0.1.0"

* insert HeaderDetailRules

* ^caseSensitive = false
* ^valueSet = "http://gender.oemig.de/fhir/ValueSet/V3AdministrativeGender"
* ^hierarchyMeaning = #is-a
* ^compositional = false
* ^versionNeeded = false
* ^content = #complete


* #M "male" "male"
  * ^designation.language = #de
  * ^designation.value = "männlich"
* #F "female" "female"
  * ^designation.language = #de
  * ^designation.value = "weiblich"
* #UN "undifferentiated" "undifferentiated"
  * ^designation.language = #de
  * ^designation.value = "nicht differenziert"



ValueSet: V3AdministrativeGenderVS
Id: V3AdministrativeGender
Title: "V3 Administrative Gender"
Description: "**V3 Administrative Gender**"

* ^url = "http://gender.oemig.de/fhir/ValueSet/V3AdministrativeGender"
* ^version = "0.1.0"

* insert HeaderDetailRules

* include codes from system http://gender.oemig.de/fhir/CodeSystem/V3AdministrativeGender



