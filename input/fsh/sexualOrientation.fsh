CodeSystem: SexualOrientationCS
Id: SexualOrientation
Title: "SexualOrientation"
Description: "Sexual Orientation"

* ^url = "http://gender.oemig.de/fhir/CodeSystem/SexualOrientation"
* ^version = "0.1.0"

* insert HeaderDetailRules

* ^caseSensitive = false
* ^valueSet = "http://gender.oemig.de/fhir/ValueSet/SexualOrientation"
* ^hierarchyMeaning = #is-a
* ^compositional = false
* ^versionNeeded = false
* ^content = #complete

* ^property[+].code = #synonym
* ^property[=].uri = "http://gender.oemig.de/fhir/CodeSystem/SexualOrientation"
* ^property[=].description = "synonym"
* ^property[=].type = #code

* ^property[+].code = #source
* ^property[=].uri = "http://gender.oemig.de/fhir/CodeSystem/sourceAdministrativeGender"
* ^property[=].description = "source gender"
* ^property[=].type = #code
* ^property[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/codesystem-property-valueset"
* ^property[=].extension[=].valueCanonical = "http://gender.oemig.de/fhir/ValueSet/AdministrativeGender"

* ^property[+].code = #target
* ^property[=].uri = "http://gender.oemig.de/fhir/CodeSystem/targetAdministrativeGender"
* ^property[=].description = "target gender"
* ^property[=].type = #code
* ^property[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/codesystem-property-valueset"
* ^property[=].extension[=].valueCanonical = "http://gender.oemig.de/fhir/ValueSet/AdministrativeGender"


* #verzaubert 	"verzaubert"
* #warm 	"warm"

* #homo 	"homosexuell"
  * ^property[+].code = #synonym
  * ^property[=].valueCode = #verzaubert
  * ^property[+].code = #synonym
  * ^property[=].valueCode = #warm
  * ^property[+].code = #target
  * ^property[=].valueCode = #sameGender
  * #lesbisch 	"lesbisch"
    * ^property[+].code = #source
    * ^property[=].valueCode = #female
    * ^property[+].code = #target
    * ^property[=].valueCode = #female
  * #schwul 	"schwul"
    * ^property[+].code = #source
    * ^property[=].valueCode = #male
    * ^property[+].code = #target
    * ^property[=].valueCode = #male
    * ^designation.language = #en
    * ^designation.value = "gay"
  
* #ambisexuell 	"ambisexuell"
* #pansexuell 	"pansexuell"
* #bi 	"bisexuell"
  * ^property[+].code = #synonym
  * ^property[=].valueCode = #ambisexuell
  * ^property[+].code = #synonym
  * ^property[=].valueCode = #pansexuell

* #queer "queer"

* #heterosexuell "hetero"
  * ^property[+].code = #target
  * ^property[=].valueCode = #otherGender

* #unsicher "ist mir derzeit nicht klar"

* #asexuell "asexuell"

* #ablehnend "ich lehne solche Definitionen ab"

* #secret "möchte ich nicht sagen"

ValueSet: SexualOrientationVS
Id: SexualOrientation
Title: "SexualOrientation"
Description: "**Sexual Orientation**"

* ^url = "http://gender.oemig.de/fhir/ValueSet/SexualOrientation"
* ^version = "0.1.0"

* insert HeaderDetailRules

* include codes from system http://gender.oemig.de/fhir/CodeSystem/SexualOrientation




