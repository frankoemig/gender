CodeSystem: IntersexualityCS
Id: Intersexuality
Title: "Intersexuality"
Description: """
	Intersexuality
"""

* ^url = "http://gender.oemig.de/fhir/CodeSystem/Intersexuality"
* ^version = "0.1.0"

* insert HeaderDetailRules

* ^caseSensitive = false
* ^valueSet = "http://gender.oemig.de/fhir/ValueSet/Intersexuality"
* ^hierarchyMeaning = #is-a
* ^compositional = false
* ^versionNeeded = false
* ^content = #complete

* #male "identifies as male"
* #female "identifies as female"
* #inter "intersexual"
* #unknown "unknown"

ValueSet: IntersexualityVS
Id: Intersexuality
Title: "Intersexuality"
Description: "**Intersexuality**"

* ^url = "http://gender.oemig.de/fhir/ValueSet/Intersexuality"
* ^version = "0.1.0"

* insert HeaderDetailRules

* include codes from system http://gender.oemig.de/fhir/CodeSystem/Intersexuality


