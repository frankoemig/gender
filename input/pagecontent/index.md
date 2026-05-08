<style>
table th {background: #f0b033}
table tr:nth-child(even) {background: #EEE}
table tr:nth-child(odd) {background: #FFF}
</style>


### Geschlecht (des Patienten)

Es kommt sehr häufig die Frage nach dem Geschlecht eines Patienten auf, d.h. welche Ausprägungen gibt es. 
Meistens endet das in einer endlosen Diskussion, welche möglichen Werte es geben soll 
bzw. was genau darunter verstanden wird. Erschwert wird das durch die Tatsache, 
dass die unterschiedlichen Sichten verschiedene Aspekte enthalten, 
aber trotzdem eine starke Überschneidung bestimmer Werte, genauer "männlich" und "weiblich", 
enthalten und deshalb vermischt werden. Eine Unterteilung in verschiedene Tabellen schafft Klarheit.

Gender is the reason for endless discussions, caused by different understandings facilitating presumably 
the same terminology. Indeed the same terms, here "male" and "female", are used, although they 
describe different concepts. Distinguishing this by introducing different tables solves the problem.

### Aussagen/Statements

Ein Mapping der Informationen ist genaugenommen nicht möglich, schließlich handelt es sich um unterschiedliche Aussagen!

> männlich ("ich bin ein Mann") != männlich ("ich möchte als Mann behandelt werden") != männlich ("Chromosomsequenz=xy")

### Source

https://wiki.hl7.de/index.php?title=Geschlecht


### Tabellen

Nachfolgend die verschiedenen Tabellen für die unterschiedlichen Sachverhalte. 
Am einfachsten lässt sich das Problem lösen, wenn alle Tabellen eine eigene Identifikation (OID, FHIR URL, 
symbolic name) bekommen:

Following the different tables for the diverging semantics are introduced.

* administrative gender (according to definition in v2)
  * v2 administrative gender/sex
  * V3 administrative gender
* gender identity
* sexual orientation
* genetic gender
* biological gender
* genital gender
* hormonal gender
* intersexuality
* transgender
* transsexuality
* pronouns
* ..

### Content


#### Geschlechtsumwandlungen

<table>
<tr>
<th>Code</th><th>Beschreibung </th><th>Kommentar</th>
</tr>
<tr>
<td> </td><td>	männlich </td> <td></td>
</tr>
<tr>
<td> </td><td>	weiblich </td> <td></td>
</tr>
<tr>
<td> </td><td>	männlich, früher weiblich 	</td><td>Geschlechtsumwandlung durchgeführt</td>
</tr>
<tr>
<td> </td><td>	weiblich, früher männlich 	</td><td>Geschlechtsumwandlung durchgeführt</td>
</tr>
<tr>
<td> </td><td>	unbekannt </td><td> </td>
</tr>
</table>
	
### neues deutsches Recht / eGK

Die deutsche Gesetzgebung wurde 2018 geändert, so dass auch ein diverses Geschlecht festgelegt übermittelt werden kann. Grundlage ist § 22, Abs. 3 des Personenstandsgesetzes - unbestimmt gibt es im Melderegister nicht. Auf der eGK findet sich das Geschlecht in den Persönlichen Versichertendaten. Hinweis: Durch die Einführung von VSDM kann ohne Ausstellung einer neuen eGK auch innerhalb eines Quartals die Angabe zum Geschlecht geändert werden.

<table>
<tr>
<th>neues deutsches Recht </th><th>Beschreibung </th><th>Kommentar</th>
</tr>
<tr>
<td>W</td><td>"weiblich"</td>
</tr>
<tr>
<td>M</td><td>"männlich"</td>
</tr>
<tr>
<td>D</td><td>"divers"</td>
</tr>
</table>

### xDT: Geschlecht des Patienten

Das Geschlecht des Patienten wird im xDT-Standard der KBV in Feld 3110 übermittelt. Die persönlichen Versichertendaten der eGK können in dieses Feld gemappt werden. Stehen die Daten nicht zur Verfügung kann "U" angegeben werden.

<table>
<tr>
<th>Code</th><th>Beschreibung</th><th>Kommentar</th>
</tr>
<tr>
<td>M 	</td><td>männlich 	</td><td>früher 0</td>
</tr>
<tr>
<td>W 	</td><td>weiblich 	</td><td>früher 1</td>
</tr>
<tr>
<td>D 	</td><td>divers 	</td><td>früher nicht vorhanden</td>
</tr>
<tr>
<td>X 	</td><td>unbestimmt 	</td><td>früher nicht vorhanden</td>
</tr>
<tr>
<td>U 	</td><td>unbekannt 	</td><td>früher 2</td>
</tr>
</table>

### Krebsregister

Das deutsche Krebsregistergesetz sieht folgende Ausprägungen vor:

<table>
<tr>
<th>Code </th><th>Beschreibung 	</th><th>Kommentar</th>
</tr>
<tr>
<td>M 	</td><td>männlich </td>  <td></td>
</tr>
<tr>
<td>F 	</td><td>weiblich </td> <td></td>
</tr>
<tr>
<td>S 	</td><td>Sonstige 	</td><td>was ist damit genau gemeint?</td>
</tr>
<tr>
<td>U 	unbekannt </td> <td></td> <td></td>
</tr>
</table>

### Speicherung

Aus Datenschutzgründen darf leider keine Historie aufgebaut werden.

Aber wenn man das mal außer acht lässt, dann drängt sich einem der Gedanke auf, dass das Geschlecht des Patienten zum einen eine änderbare Größe darstellt, zum anderen eine klassische Beobachtung ist. Damit sollten die diversen Aussagen auch entsprechend mit einer Zeitangabe und dem dazugehörigen Codesystem festgehalten werden. Damit wäre folgendes möglich:

* Aussage: "ich bin ein Mann"
* ich werde zusammen mit anderen Männern in ein Zimmer gelegt.
* auf der eGK steht: männlich
* im Reisepass steht: unbestimmt

Diese Aussagen können zeitgleich und unabhängig voneinander gültig sein. 
Damit wird unterstrichen, dass ein Mapping genaugenommen nicht möglich ist.

### Use in International Standards / Mapping

Die oben erwähnten Codes eGK und KVDT können nicht in das administrative Geschlecht HL7 v2 gemappt werden. 
Hier handelt es sich um getrennte Aussagen. 
Administrative Gender ist in der Praxis für Zuordnung zu einer entsprechenden Station relevant. 
Muss man das Geschlecht im Rahmen einer Übermittlung von eGK Daten über HL7 angeben muss dazu ein anderes Feld 
verwendet werden. Da es sich bei dem Geschlecht um eine Beobachtung handelt ist best practice ein OBX Segment. 
Bei eGK ist auch die binäre Übertragung der eGK Daten über HL7 v2 möglich. 
Für DICOM wird mit cp1927 aktuell nach einer Lösung gesucht Daten zum Geschlecht 
über ein neues DICOM Element zu kommunizieren. Dies wird absehbar mit DEFINED TERMS geschehen. 

#### Gender Coding with International Data Exchange Standards

The biggest problem is to identify the correct concept: 
Many codesystems do not have a clear definition so that the content is mixed by just using the textual
descriptions which always contain "male" or "female".
The following table tries to identify them correctly:

<table>
<tr>
<th>Standard<br/>Description</th>
<th>ISO/IEC 5218 [5]</th>
<th>ISO/IEC 5218 extended</th>
<th>CDC [8]</th>
<th>NETSS, NCVHS [6]</th>
<th>ECML [9]</th>
<th>ICAO</th>
<th>Visa-Schengen [12]</th>
<th>NAACCR [13]</th>
<th>US Census [15]</th>
<th>HL7 V3 [16]</th>
<th>HL7 v2 [16]</th>
<th>X12</th>
<th>ASTM</th>
<th>DICOM [14]</th>
<th>OBIS [18]</th>
<th>UBIF [19]</th>
<th>BDT [20]</th>
<th>FHIR [21]</th>
</tr>
<tr>
<td>
not known</td><td>0</td><td>0</td><td></td><td>9</td><td>U</td><td>X</td><td><</td><td>9</td><td></td><td>U</td><td>U</td><td>U</td><td></td><td>U</td><td>U</td><td>?</td><td>U, 0</td><td>unknown 
</td>
</tr>
<tr>
<td>
Male</td><td>1</td><td>1</td><td>M</td><td>1</td><td>M</td><td>M</td><td>M</td><td>1</td><td>1</td><td>M</td><td>M</td><td>M</td><td>M</td><td>M</td><td>M</td><td>m</td><td>M, 1</td><td>male 
</td>
</tr>
<tr>
<td>
Female</td><td>2</td><td>2</td><td>F</td><td>2</td><td>F</td><td>F</td><td>F</td><td>2</td><td>2</td><td>F</td><td>F</td><td>F</td><td>F</td><td>F</td><td>F</td><td>f</td><td>W, 2</td><td>female 
</td>
</tr>
<tr>
<td>
Both (male + female)</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>B</td><td></td><td></td><td>
</td>
</tr>
<tr>
<td>
Transgender male</td><td></td><td>3</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>FC</td><td>FC</td><td></td><td>fc</td><td></td><td>
</td>
</tr>
<tr>
<td>
Transgender female</td><td></td><td>4</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>MC</td><td>MC</td><td></td><td>mc</td><td></td><td>
</td>
</tr>
<tr>
<td>
Transitional</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>T</td><td></td><td></td><td>
</td>
</tr>
<tr>
<td>
Not applicable</td><td>9</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>N</td><td></td><td></td><td></td><td></td><td></td><td></td><td>
</td>
</tr>
<tr>
<td>
Other</td><td></td><td></td><td>O</td><td></td><td></td><td></td><td></td><td>3</td><td></td><td></td><td>O</td><td></td><td></td><td>121102</td><td></td><td></td><td>A, 3</td><td>other 
</td>
</tr>
<tr>
<td>
Transsexual</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>4</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>
</td>
</tr>
<tr>
<td>
Non-sexed</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>N</td><td></td><td></td><td></td><td></td><td></td><td>
</td>
</tr>
<tr>
<td>
Unsexable</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>X</td><td></td><td>121103</td><td>I</td><td>i</td><td></td><td>
</td>
</tr>
<tr>
<td>
Unknown sex</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>U</td><td></td><td></td><td></td><td></td><td>
</td>
</tr>
<tr>
<td>
Male pseudo¬hermaphrodite</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>MP</td><td>MP</td><td></td><td></td><td></td><td>
</td>
</tr>
<tr>
<td>
Female pseudo¬hermaphrodite</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>FP</td><td>FP</td><td></td><td></td><td></td><td>
</td>
</tr>
<tr>
<td>
Hermaprodite</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>H</td><td>H</td><td>H</td><td>h</td><td></td><td>
</td>
</tr>
<tr>
<td>
Simultaneous hermaphrodite</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>sh</td><td></td><td>
</td>
</tr>
<tr>
<td>
Hermaphrodite male phase</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>hm</td><td></td><td>
</td>
</tr>
<tr>
<td>
Hermaphrodite female phase</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>hf</td><td></td><td>
</td>
</tr>
<tr>
<td>
Ambiguous</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>A</td><td></td><td>A</td><td>121102</td><td></td><td>a</td><td></td><td>
</td>
</tr>
<tr>
<td>
Mixed sex</td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td><td>x</td><td></td><td>
</td>
</tr>
</table>

#### a) Administrative Gender, b) Person Register, c) erweitert

<table>
<tr>
<th>a) 	</th><th>Code </th><th>Description </th><th>b) </th><th>Code 	</th><th>Description </th><th>c) 	</th><th>Code 	</th><th>Description</th>
</tr>
<tr>
<td> </td><td>M </td><td>Male 	</td><td>= 	</td><td>M 	</td><td>Male</td><td>= 	</td><td>M 	</td><td>Male</td>
</tr>
<tr>
<td>
</td><td>F</td><td>Female </td><td>=</td><td>F 	</td><td>Female </td><td>= 	</td><td>F 	</td><td>Female</td>
</tr>
<tr>
<td> </td><td>	U 	</td><td>Unknown</td><td> </td><td> </td><td> </td><td> </td>
</tr>
<tr>
<td> </td><td></td><td></td><td></td><td>X	</td><td>Undetermined 	</td><td>= 	</td><td>X 	</td><td>unbestimmt</td>
</tr>
<tr>
<td> </td><td></td><td></td><td></td><td></td><td></td><td></td><td>D 	</td><td>divers</td>
</tr>
</table>


#### a) Intersexual, b) Transsexual, c) Transgender

<table>
<tr>
<th>a)</th><th>Code</th><th>Description</th><th>b)</th><th>Code</th><th>Description</th><th>c)</th><th>Code</th><th>Level</th><th>Description</th>
</tr>
<tr>
<td> </td><td></td><td></td><td></td><td></td><td></td><td></td><td>T 	</td><td>1 	</td><td>Transgender</td>
</tr>
<tr>
<td> </td><td></td><td></td><td></td><td></td><td></td><td></td><td>	NT 	</td><td>1 	</td><td>Non-transgender</td>
</tr>
<tr>
<td> </td><td>	M 	</td><td>Male 	</td><td>? 	</td><td>M 	</td><td>Identifies as a man 	</td><td>? 	</td><td>M 	</td><td>2 	</td><td>Male</td>
</tr>
<tr>
<td> </td><td>	W 	</td><td>Female 	</td><td>? 	</td><td>F 	</td><td>Identifies as a woman 	</td><td>? 	</td><td>F 	</td><td>2 	</td><td>Female</td>
</tr>
<tr>
<td> </td><td>	IS 	</td><td>Intersexual</td><td> </td><td> </td><td> </td><td> </td><td> </td><td></td>
</tr>
<tr>
<td></td><td>	U 	</td><td>unknown 	</td><td>= 	</td><td>U 	</td><td>Unknown 	</td><td>= 	</td><td>U 	</td><td>1 	</td><td>unknown </td>
</tr>
</table>
	
### Links

    [5]: ISO/IEC 5218:2004 (http://standards.iso.org/ittf/PubliclyAvailableStandards/c036266_ISO_IEC_5218_2004(E_F).zip)
    [6]: Canada National Body: ISO/IEC JTC1 SC36 N0834 - Business Case and for Rationale, Incorporating “Multilingual Capability and Equivalency as one of the Basic Principles, at the Architectural and Structural Levels, for the Development of the Multipart MLR standard”. (http://old.jtc1sc36.org/doc/36N0834.pdf) old.jtc1sc36.org, 19. August 2004, S. 6, Fußnote 2
    [8] Standards and Liaison Committee Health Information and Surveillance Systems Board: Common Data Elements Implementation Guide Version 2.4 (http://www.cdc.gov/DATA/impv24.pdf) (PDF; 338 kB), U.S. Department of Health and Human Services, 3. Januar 2000, S. 35 ff.; Proposed CDC Health Data Standards (http://www.cdc.gov/DATA/INDEX.HTM), Website des Centers for Disease Control and Prevention
    [9] RFC 4112: Electronic Commerce Modeling Language (ECML) - Version 2 Specification. Juni 2005, Motorola Laboratories
    [12] Gemeinsame konsularische Instruktion an die diplomatischen Missionen und die konsularischen Vertretungen, die von Berufskonsularbeamten geleitet werden (http://eur-lex.europa.eu/LexUriServ/LexUriServ.do?uri=CELEX:52005XG1222(01):DE:NOT), 22. Dezember 2005, eur-lex.europa.eu
    [13] North American Assocaition of Central Cancer Registires (NAACCR): “Standards and Registry Operations”, http://www.naaccr.org/, last accessed April 22nd. 2016.
    [14] National Electrical Manufacturers Association (Ed.): PS 3.3-2015 - DICOM Part 3: Information Object Definitions (http://dicom.nema.org/standard.html ). Arpil 22nd, Dezember 2016
    [15] US CENSUS: „Gender 2000“, https://www.census.gov/prod/2001pubs/c2kbr01-9.pdf
    [16] Health Level International (HL7): “HL7 Version 2.x”, “HL7 Version 3”, www.hl7.org, last accessed April 22nd, 2016.
    [17] Animal Management - Version 2.00 (http://zims.isis.org/System%20Use%20Cases%20%20PDF/PM224%20-%20Page%20Dictionary%20-%20Animal%20Management%20v2.0.pdf) (Login required), 5. Oktober 2006
    [18] The OBIS SchemaVersion 1.1, http://www.iobis.org/tech/provider/schemadef1/, 14. 8. Juli 2005
    [19] TDWG-SDD: TWiki - SDD Web - Version101 - Version1dot1, http://wiki.tdwg.org/twiki/bin/view/SDD/Version1dot1, SDD1.1.zip accessed March 19. 2007, there SDD1.1/documentation/UBIF_EnumData.html
    [20] Qualitätsring Medizinische Software (QMS): BDT 3.0 Satzbeschreibung, http://www.qms-standards.de/fileadmin/Download/DOWNLOAD-PDFS/GDT_BDT/BDT-Datensatzbeschreibung_3-0_V0-96_20150301.pdf, öast accessed April 22nd, 2016.
    [21] FHIR http://www.hl7.org/fhir/valueset-administrative-gender.html
	
	
