CodeSystem: TranssexualityCS
Id: Transsexuality
Title: "Transsexuality"
Description: """
	Transsexuality
"""

* ^url = "http://gender.oemig.de/fhir/CodeSystem/Transsexuality"
* ^version = "0.1.0"

* insert HeaderDetailRules

* ^caseSensitive = false
* ^valueSet = "http://gender.oemig.de/fhir/ValueSet/Transsexuality"
* ^hierarchyMeaning = #is-a
* ^compositional = false
* ^versionNeeded = false
* ^content = #complete

* #male "identifies as male"
* #female "identifies as female"
* #unknown "unknown"

ValueSet: TranssexualityVS
Id: Transsexuality
Title: "Transsexuality"
Description: "**Transsexuality**"

* ^url = "http://gender.oemig.de/fhir/ValueSet/Transsexuality"
* ^version = "0.1.0"

* insert HeaderDetailRules

* include codes from system http://gender.oemig.de/fhir/CodeSystem/Transsexuality


