CodeSystem: HormonalGenderCS
Id: HormonalGender
Title: "Hormonal Gender"
Description: """
	HormonalGender
"""

* ^url = "http://gender.oemig.de/fhir/CodeSystem/HormonalGender"
* ^version = "0.1.0"

* insert HeaderDetailRules

* ^caseSensitive = false
* ^valueSet = "http://gender.oemig.de/fhir/ValueSet/HormonalGender"
* ^hierarchyMeaning = #is-a
* ^compositional = false
* ^versionNeeded = false
* ^content = #fragment

* #male "male"
* #female "female"
* #tbd "further codes to be determined.."


ValueSet: HormonalGenderVS
Id: HormonalGender
Title: "Hormonal Gender"
Description: "**Hormonal Gender**"

* ^url = "http://gender.oemig.de/fhir/ValueSet/HormonalGender"
* ^version = "0.1.0"

* insert HeaderDetailRules

* include codes from system http://gender.oemig.de/fhir/CodeSystem/HormonalGender


