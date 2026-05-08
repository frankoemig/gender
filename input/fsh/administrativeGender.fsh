CodeSystem: AdministrativeGenderCS
Id: AdministrativeGender
Title: "Administrative Gender"
Description: """
	The original definition is **administrative gender**.
	The meaning is 'with whom you want to lie in a room'.
"""

* ^url = "http://gender.oemig.de/fhir/CodeSystem/AdministrativeGender"
* ^version = "0.1.0"

* insert HeaderDetailRules

* ^caseSensitive = false
* ^valueSet = "http://gender.oemig.de/fhir/ValueSet/AdministrativeGender"
* ^hierarchyMeaning = #is-a
* ^compositional = false
* ^versionNeeded = false
* ^content = #complete

* ^property[+].code = #comment
* ^property[=].uri = "http://hl7.org/fhir/concept-properties#comment"
* ^property[=].description = "Comment"
* ^property[=].type = #string


* #male "männlich" "with other male patients"
* #female "weiblich" "with other female patients"
* #alone "alone" "lying alone in a room"
  * ^property[+].code = #comment
  * ^property[=].valueString = "unclear situation so that the patient should lie alone"



ValueSet: AdministrativeGenderVS
Id: AdministrativeGender
Title: "Administrative Gender"
Description: "**Administrative Gender**"

* ^url = "http://gender.oemig.de/fhir/ValueSet/AdministrativeGender"
* ^version = "0.1.0"

* insert HeaderDetailRules

* include codes from system http://gender.oemig.de/fhir/CodeSystem/AdministrativeGender



