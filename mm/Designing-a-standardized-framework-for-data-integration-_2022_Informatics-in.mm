<?xml version="1.0" encoding="UTF-8"?>
<map version="1.0.1">
  <node TEXT="topic">
    <node TEXT="health">
      <node TEXT="Data classes fields Content definition Field  format Content SNOMED CT  category SNOMED CT codes  Basic data  Patient name  surname alphabetical string patient name observable entity 371484003  Age  Infant  D1 year  child 1  5 year Categorical middle age  54y clinical finding 28288005   Teenage  5 17 year  young  17 34 year   Middle age  34 64 year  aged  F65 year  Date of birth yyyy mm dd integer 1966 12 05 observable entity 184099003  Gender  Male  1   female  0 binary 1 clinical finding 703117000  Marital status  single  married  widow categorical married clinical finding 87915002  Ethnicity  Iranian   non  Iranian categorical Iranian persia qualifier value 297553001  Religion  Islam  Christianity categorical Islam shia social context 28010004   Jewish   Zoroastrian  other specified  Employment status  employed   unemployed categorical employed clinical finding 224363007  Occupation  High risk jobs  jobs in direct contact with animals   poulterer  livestock breeder  slaughterhouse  livestock  market  veterinarians  and veterinary staff  wildlife officers   zookeepers  animal careers  and pet owners  categorical livestock farmer social concept 52060003   Medium risk jobs  jobs in indirect contact with animals   farmer  meat processing workers  environmentalists   shooters    Low risk jobs  jobs without contact with animals  Average monthly  income  Low income  x D25000000rial categorical low income clinical finding 424860001   Medium income  25000000Dx D70000000rial    High income  x F70000000rial  Literacy rate  l 0  illiterate  l 1  functional literacy categorical illiterate clinical finding 707843000   l 2  basic literacy  l 3  proficient literacy    l 4  advanced literacy  Type of residence  urban  rural  other specified categorical rural environments and  geographical  locations 224804009  Type of ownership of  housing   owner   tenant   homeless categorical Owner clinical finding 160943002  Food habit  Unhealthy  raw foodism  fast food  or highly processed  foods. categorical healthy eating qualifier values 723881000000101    Healthy  pasteurized  cooked  boiled  streamed     Unknown  Phone number  98 xxx xxx xxxx integer  98 xxx xxx xxxx observable entity 824551000000105  ID numbers  Patient identifier Numbers range from two to ten digits with two separator  dashes integer xxx xxxxxx x observable entity 422549004  Visit number A four to eight digits with dash integer xxx xx observable entity 722248002  Provider ID Numbers range from two to eight digits without the dash integer xxxxx observable entity 713578002  Record number Six digits with two separator dashes integer xx xx xx observable entity 398225001  Healthcare center ID Numbers range from three to six digit integer hospital ref. string home address observable entity 184097001  Postal Zip code ten digits with a separator dash integer xxxxx xxxxx observable entity 184102003  Travel destination district region string not applicable qualifier value 385432009  Location of exposure district region string agricultural site environments and  geographical  locations 272504001  Healthcare center  location city village  street  alley string Hospital address observable entity 308916002  Environmental wildlife situation data  Cultivation rate  Fully agricultural  semi agricultural categorical agricultural environment   location 272504001   non agricultural  other specified  Role of wildlife  High  rural  nomads  categorical rural environment environment   location 224804009   Medium  semi rural    Low  urbanist   Livestock population  Low  100F medium  100 1000 categorical environment contains  uncontrolled  very high   livestock clinical finding 424093009   High 1000  10000  very high  10000D Farming  husbandry  approaches   Traditional  non technological  categorical traditional qualifier value 263901007   semi technological    Fully technological  Wildlife biodiversity   the number of wild  bio species   Low  10F medium  10 100 categorical medium bio diversity special concept 26604007   High 100  1000  very high  1000D  continued on next page  M. Shanbehzadeh et al." />
      <node TEXT="However  zoo  noses surveillance data are collected individually from standalone information systems for either humans or  animals with varied structures  processes and applications. In moving towards one health  OH  surveillance   integrating the zoonoses data may help prevent and control these diseases. Despite developing preventive and controlling strategies  for zoonoses management  many countries  including Iran  suffer from a  widespread outbreak of these diseases  5 6 ." />
      <node TEXT="This type of surveil   lance can be referred to as one health  OH  surveillance. Second  it presented an exchanging framework toward interoperability  between zoonotic diseases information systems  ZDISs . Letters  posters  conference papers  review studies  lectures   duplicated  non English and articles published before 2010 were  excluded." />
      <node TEXT="11  Seifi A  Dehghan Nayeri N  Rostamnia L  Varaei S  Sari AA  Haghani H  et al.  Health care associated infection surveillance system in Iran  reporting and  accuracy. Reliability of administrative data to identify  sexually transmitted infections for population health  a systematic review. 14  Moore GE  Lund E. Disease reporting and surveillance  where do companion animal  diseases fit in  Vet Clin North Am Small Anim Pract 2009 39 2  225  40." />
      <node TEXT="26  Kelly TR  Karesh WB  Johnson CK  Gilardi KV  Anthony SJ  Goldstein T  et al. One  Health proof of concept  bringing a transdisciplinary approach to surveillance for  zoonotic viruses at the human wild animal interface. 29  Umanzor RP  Pe nafiel FS  Ugarte NS  Valverde AV  Bravo AC  Pernas SS  et al.  A surveillance system to detect COVID 19 infections in health care workers. 41  Willett DL  Kannan V  Chu L  Buchanan JR  Velasco FT  Clark JD  et al. SNOMED  CT concept hierarchies for sharing definitions of clinical conditions using  electronic health record data." />
      <node TEXT="SNOMED CT was used  as the most comprehensive  precise and  structured clinical terminology for electronic healthcare information  exchange  HIE   40 41 . This process was visualized through Mind maple Lite 1.71 applica   tion software as a graphic user interface  representing thesaurus map  ping across multiple medical terminologies. Then  the integrated  SNOMED CT codes were structured into an approved messaging stan  dard framework to provide syntactic interoperability." />
      <node TEXT="Be  sides  this standard uses an XML template that provides consistent public  health data exchange by structuring the message framework amid  various systems. This communication protocol can  enable interoperability among public health and veterinary information  systems that populate the ZDSS. The main output of the proposed  communication protocol supported partnerships between numerous  healthcare providers and public health agencies for patient care man  agement  epidemiological research and public health purposes." />
    </node>
    <node TEXT="healthcare">
      <node TEXT="Data classes fields Content definition Field  format Content SNOMED CT  category SNOMED CT codes  Basic data  Patient name  surname alphabetical string patient name observable entity 371484003  Age  Infant  D1 year  child 1  5 year Categorical middle age  54y clinical finding 28288005   Teenage  5 17 year  young  17 34 year   Middle age  34 64 year  aged  F65 year  Date of birth yyyy mm dd integer 1966 12 05 observable entity 184099003  Gender  Male  1   female  0 binary 1 clinical finding 703117000  Marital status  single  married  widow categorical married clinical finding 87915002  Ethnicity  Iranian   non  Iranian categorical Iranian persia qualifier value 297553001  Religion  Islam  Christianity categorical Islam shia social context 28010004   Jewish   Zoroastrian  other specified  Employment status  employed   unemployed categorical employed clinical finding 224363007  Occupation  High risk jobs  jobs in direct contact with animals   poulterer  livestock breeder  slaughterhouse  livestock  market  veterinarians  and veterinary staff  wildlife officers   zookeepers  animal careers  and pet owners  categorical livestock farmer social concept 52060003   Medium risk jobs  jobs in indirect contact with animals   farmer  meat processing workers  environmentalists   shooters    Low risk jobs  jobs without contact with animals  Average monthly  income  Low income  x D25000000rial categorical low income clinical finding 424860001   Medium income  25000000Dx D70000000rial    High income  x F70000000rial  Literacy rate  l 0  illiterate  l 1  functional literacy categorical illiterate clinical finding 707843000   l 2  basic literacy  l 3  proficient literacy    l 4  advanced literacy  Type of residence  urban  rural  other specified categorical rural environments and  geographical  locations 224804009  Type of ownership of  housing   owner   tenant   homeless categorical Owner clinical finding 160943002  Food habit  Unhealthy  raw foodism  fast food  or highly processed  foods. categorical healthy eating qualifier values 723881000000101    Healthy  pasteurized  cooked  boiled  streamed     Unknown  Phone number  98 xxx xxx xxxx integer  98 xxx xxx xxxx observable entity 824551000000105  ID numbers  Patient identifier Numbers range from two to ten digits with two separator  dashes integer xxx xxxxxx x observable entity 422549004  Visit number A four to eight digits with dash integer xxx xx observable entity 722248002  Provider ID Numbers range from two to eight digits without the dash integer xxxxx observable entity 713578002  Record number Six digits with two separator dashes integer xx xx xx observable entity 398225001  Healthcare center ID Numbers range from three to six digit integer hospital ref. string home address observable entity 184097001  Postal Zip code ten digits with a separator dash integer xxxxx xxxxx observable entity 184102003  Travel destination district region string not applicable qualifier value 385432009  Location of exposure district region string agricultural site environments and  geographical  locations 272504001  Healthcare center  location city village  street  alley string Hospital address observable entity 308916002  Environmental wildlife situation data  Cultivation rate  Fully agricultural  semi agricultural categorical agricultural environment   location 272504001   non agricultural  other specified  Role of wildlife  High  rural  nomads  categorical rural environment environment   location 224804009   Medium  semi rural    Low  urbanist   Livestock population  Low  100F medium  100 1000 categorical environment contains  uncontrolled  very high   livestock clinical finding 424093009   High 1000  10000  very high  10000D Farming  husbandry  approaches   Traditional  non technological  categorical traditional qualifier value 263901007   semi technological    Fully technological  Wildlife biodiversity   the number of wild  bio species   Low  10F medium  10 100 categorical medium bio diversity special concept 26604007   High 100  1000  very high  1000D  continued on next page  M. Shanbehzadeh et al." />
      <node TEXT="SNOMED CT was used  as the most comprehensive  precise and  structured clinical terminology for electronic healthcare information  exchange  HIE   40 41 . This process was visualized through Mind maple Lite 1.71 applica   tion software as a graphic user interface  representing thesaurus map  ping across multiple medical terminologies. Then  the integrated  SNOMED CT codes were structured into an approved messaging stan  dard framework to provide syntactic interoperability." />
      <node TEXT="Be  sides  this standard uses an XML template that provides consistent public  health data exchange by structuring the message framework amid  various systems. This communication protocol can  enable interoperability among public health and veterinary information  systems that populate the ZDSS. The main output of the proposed  communication protocol supported partnerships between numerous  healthcare providers and public health agencies for patient care man  agement  epidemiological research and public health purposes." />
    </node>
    <node TEXT="model">
      <node TEXT="An XML hierarchy is a tree like  structure where elements are arranged by parent child or containment  relationships  contains contained . Omazic  2019  devel   oped a standardized template for reporting zoonotic infectious diseases  in three basic  clinical and animal food data categories. Muligan et al.   2019  developed the zoonoses data model in six prevalence  antimi   crobial resistance  food borne outbreak  animal population and disease  status classes." />
    </node>
  </node>
</map>
