CodeSystem: GenitalGenderCS
Id: GenitalGender
Title: "Genital Gender"
Description: """
	Genital Gender 
"""

* ^url = "http://gender.oemig.de/fhir/CodeSystem/GenitalGender"
* ^version = "0.1.0"

* insert HeaderDetailRules

* ^caseSensitive = false
* ^valueSet = "http://gender.oemig.de/fhir/ValueSet/GenitalGender"
* ^hierarchyMeaning = #is-a
* ^compositional = false
* ^versionNeeded = false
* ^content = #fragment

* #male "male"
* #female "female"
* #tbd "further codes to be determined.."


ValueSet: GenitalGenderVS
Id: GenitalGender
Title: "genital Gender"
Description: "**genital Gender**"

* ^url = "http://gender.oemig.de/fhir/ValueSet/GenitalGender"
* ^version = "0.1.0"

* insert HeaderDetailRules

* include codes from system http://gender.oemig.de/fhir/CodeSystem/GenitalGender


