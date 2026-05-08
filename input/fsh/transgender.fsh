CodeSystem: TransGenderCS
Id: TransGender
Title: "Trans-Gender"
Description: """
	Trans-Gender 
"""

* ^url = "http://gender.oemig.de/fhir/CodeSystem/TransGender"
* ^version = "0.1.0"

* insert HeaderDetailRules

* ^caseSensitive = false
* ^valueSet = "http://gender.oemig.de/fhir/ValueSet/TransGender"
* ^hierarchyMeaning = #is-a
* ^compositional = false
* ^versionNeeded = false
* ^content = #complete

* #male "male"
* #female "female"
* #trans "transgender"
* #nontrans "non-transgender"


ValueSet: TransGenderVS
Id: TransGender
Title: "Trans-Gender"
Description: "**Trans-Gender**"

* ^url = "http://gender.oemig.de/fhir/ValueSet/TransGender"
* ^version = "0.1.0"

* insert HeaderDetailRules

* include codes from system http://gender.oemig.de/fhir/CodeSystem/TransGender


