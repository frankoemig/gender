CodeSystem: PronounsCS
Id: Pronouns
Title: "Pronouns"
Description: """
	Pronouns
"""

* ^url = "http://gender.oemig.de/fhir/CodeSystem/Pronouns"
* ^version = "0.1.0"

* insert HeaderDetailRules

* ^caseSensitive = false
* ^valueSet = "http://gender.oemig.de/fhir/ValueSet/Pronouns"
* ^hierarchyMeaning = #is-a
* ^compositional = false
* ^versionNeeded = false
* ^content = #complete

* #he "he/him"
* #she "she/her"



ValueSet: PronounsVS
Id: Pronouns
Title: "Pronouns"
Description: "**Pronouns**"

* ^url = "http://gender.oemig.de/fhir/ValueSet/Pronouns"
* ^version = "0.1.0"

* insert HeaderDetailRules

* include codes from system http://gender.oemig.de/fhir/CodeSystem/Pronouns



