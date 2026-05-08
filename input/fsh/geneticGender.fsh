CodeSystem: GeneticGenderCS
Id: GeneticGender
Title: "Genetic Gender"
Description: "genetic gender"

* ^url = "http://gender.oemig.de/fhir/CodeSystem/GeneticGender"
* ^version = "0.1.0"

* insert HeaderDetailRules

* ^caseSensitive = false
* ^valueSet = "http://gender.oemig.de/fhir/ValueSet/GeneticGender"
* ^hierarchyMeaning = #is-a
* ^compositional = false
* ^versionNeeded = false
* ^content = #complete

* ^property[+].code = #icd
* ^property[=].type = #code
* ^property[=].uri = "http://fhir.de/CodeSystem/dimdi/icd-10-gm"
* ^property[=].description = "ICD"
* ^property[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/codesystem-property-valueset"
* ^property[=].extension[=].valueCanonical = "http://fhir.de/ValueSet/dimdi/icd-10-gm"


//Code	Concept	Description 	ICD-10 (s.u.)
* #46_XX	"46,XX" "Caryotype (female)"
  * ^property[+].code = #icd
  * ^property[=].valueCode = #Q99.0
* #46_XY	"46,XY" "Caryotype (male)"
  * ^property[+].code = #icd
  * ^property[=].valueCode = #Q99.0
* #45_X		"45,X" "Turner-Syndrome with female phenotype"
  * ^property[+].code = #icd
  * ^property[=].valueCode = #Q96
* #47_XXY	"47,XXY" "Klinefelter-Syndrome with male phenotype"
  * ^property[+].code = #icd
  * ^property[=].valueCode = #Q98.0
* #48_XXXY	"48,XXXY" "Klinefelter-Syndrome with male phenotype (rare)"
* #49_XXXYY	"49,XXXYY" "Klinefelter-Syndrome"
* #49_XXXXY	"49,XXXXY" "Klinefelter-Syndrome with male phenotype (rare)"
* #47_XXX	"47,XXX" "Triplo-X-Syndrome"
  * ^property[+].code = #icd
  * ^property[=].valueCode = #Q97.0
* #mos45_X46_XX	"mos45,X/46,XX" "Mosaic"
  * ^property[+].code = #icd
  * ^property[=].valueCode = #Q96.3
* #mos45_X46_XY	"mos45,X/46,XY" "Mosaic"
  * ^property[+].code = #icd
  * ^property[=].valueCode = #Q96.4
* #chi46_XX46_XY	"chi46,XX/46,XY" "Chimersm"
  * ^property[+].code = #icd
  * ^property[=].valueCode = #Q99.0
* #47_22	"47,22" "Cat-Eye Syndrome (Trisomy 22)"
* #47_21	"47,21" "Down-Syndrome (Trisomy 21)"
  * ^property[+].code = #icd
  * ^property[=].valueCode = #Q90
* #47_18	"47,18" "Edwards-Syndrome (Trisomy 18)"
  * ^property[+].code = #icd
  * ^property[=].valueCode = #Q91.0
  * ^property[+].code = #icd
  * ^property[=].valueCode = #Q91.1
  * ^property[+].code = #icd
  * ^property[=].valueCode = #Q91.2
  * ^property[+].code = #icd
  * ^property[=].valueCode = #Q91.3
* #47_16	"47,16" "Trisomy 16"
* #47_13	"47,13" "Pätau-Syndrome (Triosomy 13)"
  * ^property[+].code = #icd
  * ^property[=].valueCode = #Q91.4
  * ^property[+].code = #icd
  * ^property[=].valueCode = #Q91.5
  * ^property[+].code = #icd
  * ^property[=].valueCode = #Q91.6
* #47_9		"47,9" "Trisomy 9"
  * ^property[+].code = #icd
  * ^property[=].valueCode = #Q92
* #47_8		"47,8" "Warkany Syndrome 2 (Trisomy 8)"
  * ^property[+].code = #icd
  * ^property[=].valueCode = #Q92
* #48_XXXX	"48,XXXX" "Tetrasomy X"
* #49_XXXXX	"49,XXXXX" "Pentasomy X"
* #47_XYY	"47,XYY" "XYY-Syndrome"	
* #48_XXYY	"48,XXYY" "Y-Polysomy"
* #49_XYYYY	"49,XYYYY" "Y-Polysomy"



ValueSet: GeneticGenderVS
Id: GeneticGender
Title: "Genetic Gender"
Description: "**Genetic Gender**"

* ^url = "http://gender.oemig.de/fhir/ValueSet/GeneticGender"
* ^version = "0.1.0"

* insert HeaderDetailRules

* include codes from system http://gender.oemig.de/fhir/CodeSystem/GeneticGender




