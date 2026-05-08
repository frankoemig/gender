CodeSystem: V2AdministrativeGenderCS
Id: V2AdministrativeGender
Title: "v2 Administrative Gender"
Description: """
	HL7 International hat schon in den neunziger Jahren die Bezeichnung 'Sex' abgeändert in 'administrative gender'. 
	Gemeint ist damit, wie eine Person administrativ behandelt werden möchte. 
	Damit stehen dann nur noch folgende Werte zur Verfügung, die auch ausreichend sind: 
"""

* ^url = "http://gender.oemig.de/fhir/CodeSystem/V2AdministrativeGender"
* ^version = "0.1.0"

* insert HeaderDetailRules

* ^caseSensitive = false
* ^valueSet = "http://gender.oemig.de/fhir/ValueSet/V2AdministrativeGender"
* ^hierarchyMeaning = #is-a
* ^compositional = false
* ^versionNeeded = false
* ^content = #complete

* ^property[+].code = #comment
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#comment"
* ^property[=].description = "Comment"
* ^property[=].type = #string


* #M "male" "male"
  * ^designation.language = #de
  * ^designation.value = "männlich"
* #F "female" "female"
  * ^designation.language = #de
  * ^designation.value = "weiblich"
* #O "other" "other"
  * ^designation.language = #de
  * ^designation.value = "sonstig"
* #U "unknown" "unknown"
  * ^designation.language = #de
  * ^designation.value = "unbekannt"
* #A "ambiguous" "ambiguous"
* #N "not applicable" "not applicable"
* #X "non-binary" "Intended for situations where the gender or sex representation of the individual is not strictly male, or strictly female, and is driven by jurisdictional requirements, personal needs, or legal boundaries."



ValueSet: V2AdministrativeGenderVS
Id: V2AdministrativeGender
Title: "v2 Administrative Gender"
Description: "**v2 Administrative Gender**"

* ^url = "http://gender.oemig.de/fhir/ValueSet/V2AdministrativeGender"
* ^version = "0.1.0"

* insert HeaderDetailRules

* include codes from system http://gender.oemig.de/fhir/CodeSystem/V2AdministrativeGender



