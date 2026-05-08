CodeSystem: GenderIdentityCS
Id: GenderIdentity
Title: "Gender Identity"
Description: """
	These codes are in a value set: Gender Identity - 2.16.840.1.113762.1.4.1021.32

	FHIR: http://hl7.org/fhir/2018Jan/valueset-gender-identity.html 	
"""

* ^url = "http://gender.oemig.de/fhir/CodeSystem/GenderIdentity"
* ^version = "0.1.0"

* insert HeaderDetailRules

* ^caseSensitive = false
* ^valueSet = "http://gender.oemig.de/fhir/ValueSet/GenderIdentity"
* ^hierarchyMeaning = #is-a
* ^compositional = false
* ^versionNeeded = false
* ^content = #complete


* #407376001 	"Male-to-female transsexual (finding)" "SNOMEDCT 	transgender-female 	transgender female 	the patient identifies as transgender male-to-female"
* #407377005 	"Female-to-male transsexual (finding)" "SNOMEDCT 	transgender-male 	transgender male 	the patient identifies as transgender female-to-male"
* #446131000124102 	"Identifies as non-conforming gender (finding)" "SNOMEDCT 	non-binary 	non-binary 	the patient identifies with neither/both female and male"
* #446141000124107 	"Identifies as female gender (finding)" "SNOMEDCT 	female 	female 	the patient identifies as female"
* #446151000124109 	"Identifies as male gender (finding)" "SNOMEDCT 	male 	male 	the patient identifies as male"
* #other			"other" "other gender identity"
* #nonDisclosure "non-disclose" "does not whish to disclose 	the patient does not whish to disclose his gender identity"


ValueSet: GenderIdentityVS
Id: GenderIdentity
Title: "Gender Identity"
Description: "**Gender Identity**"

* ^url = "http://gender.oemig.de/fhir/ValueSet/GenderIdentity"
* ^version = "0.1.0"

* insert HeaderDetailRules

* include codes from system http://gender.oemig.de/fhir/CodeSystem/GenderIdentity



