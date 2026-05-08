CodeSystem: BiologicalGenderCS
Id: BiologicalGender
Title: "Biological Gender"
Description: """
	Unterschieden nach biologischen Merkmalen.  
"""

* ^url = "http://gender.oemig.de/fhir/CodeSystem/BiologicalGender"
* ^version = "0.1.0"

* insert HeaderDetailRules

* ^caseSensitive = false
* ^valueSet = "http://gender.oemig.de/fhir/ValueSet/BiologicalGender"
* ^hierarchyMeaning = #is-a
* ^compositional = false
* ^versionNeeded = false
* ^content = #fragment

* #male "male"
* #female "female"
* #tbd "further codes to be determined.."


ValueSet: BiologicalGenderVS
Id: BiologicalGender
Title: "Biological Gender"
Description: "**Biological Gender**"

* ^url = "http://gender.oemig.de/fhir/ValueSet/BiologicalGender"
* ^version = "0.1.0"

* insert HeaderDetailRules

* include codes from system http://gender.oemig.de/fhir/CodeSystem/BiologicalGender



