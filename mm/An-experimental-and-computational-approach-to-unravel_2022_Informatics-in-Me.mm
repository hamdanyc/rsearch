<?xml version="1.0" encoding="UTF-8"?>
<map version="1.0.1">
  <node TEXT="topic">
    <node TEXT="model">
      <node TEXT="This is an open access article under the CC BY NC ND license   http   creativecommons.org licenses by  nc nd 4.0   .An experimental and computational approach to unraveling interconnected  TLR signaling cascades  Chun Wai Liewa  Laura Polancob  Kimberly Manalangb  Robert A. Kurtb    aDepartment of Computer Science  Lafayette College  Easton  PA  18042  USA  bDepartment of Biology  Lafayette College  Easton  PA  18042  USA    ARTICLE INFO   Keywords   Computer modeling  Dual TLR signaling  Interconnected cascades ABSTRACT   Previously  a modeling tool was used to construct a model of the TLR4 signaling cascade  and here the utility of  the modeling tool in two dimensions   adaptability  different types of TLR cascades and readout systems  and  power  the ease with which models of more complex cascades could be created by combining simpler inter  connected cascades  was evaluated. This initial encounter is facilitated by pattern  recognition receptors  PRRs  on innate white blood cells such as mac  rophages  neutrophils  and dendritic cells which recognize pathogen  associated molecular patterns  PAMPs  on potential pathogens  1 3 . Upon binding to LPS  TLR4 forms a homodimer bringing  together the Toll interleukin  IL  1R homology  TIR  domains of TLR4  and Myd88. Formation of the myddo   some complex leads to recruitment and activation of TRAF6  TAK1   TAB1  3  among other signaling proteins  and ends with activation of  NF B which then translocates to the nucleus to transcribe genes such as  IL 1   TNF    and IL 6  10 . For instance  upon  agonist binding all TLR  except TLR3  associate with the adaptor protein  Myd88  10 . Yet  despite the wealth of knowledge of TLR signaling  cascades  most of what is known about TLR signaling is limited because  it comes from investigations focused on how a cell responds to a single  TLR agonist even though studies have shown that the response can differ   Corresponding author. Contents lists available at ScienceDirect  Informatics in Medicine Unlocked  u   zkw  s yo kr o     1ow  o to 1m y2w m k o2ty   https   doi.org 10.1016 j.imu.2022.100939  Received 20 January 2022  Received in revised form 23 March 2022  Accepted 1 April 2022" />
      <node TEXT="While some studies have experimentally explored multiple TLR  signaling cascades  34 37  there are a paucity of models that can be  used to simulate multiple interconnected signaling cascades. These data could be explained by enhanced negative  feedback or competition between the signaling cascades. Future experiments could validate  these modeling data by creating cell lines with different baseline levels  of Myd88  or other TLR signaling proteins  and then examining the  response to dual signaling. To investigate additional genes transcribed by NF B the  THP 1 cell line was stimulated with LPS and or flagellin to trigger individual  a  b  d  e  and dual  c  f  TLR signaling cascades. As a readout system qRT PCR was used  to assess IL 6 and TNF    gene expression. All data are the average and standard error of at least three separate experiments. Where indicated     significant dif  ferences were found relative to the control p D0.05 using a Student  s t Test ." />
      <node TEXT="Our approach is  somewhat similar with a Netlogo model and an iterative process of using  modeling data to inform the experimental design  and using experi   mental data to improve the model  11 . In this study  the  tool was further enhanced so that it could combine two models and  create a more complex model that combined the two basic models. These data suggest that TLR4 and TLR5 signaling have  different sensitivities to their agonists. However  since pathogens have  more than one PAMP  a more biologically relevant experimental system  and model should take into account what happens when multiple TLRs  are activated in the same cell at the same time. For  instance  cancer therapies that target multiple pathways  24 25 31 32   may be more successful than targeting a single pathway. To investigate whether dual signaling cascades induced expression of negative  regulators of TLR signaling the THP 1 cell line was stimulated with varying doses of both LPS and flagellin and qRT PCR was used to quantitate IRAKM  a   RP105  b   and Myd88s  c  gene expression. All data are the average and standard error of at least three separate experiments." />
      <node TEXT="These  numbers were determined in part by previous work  11 . The simulation model  also did not respond in a synergistic manner when stimulated with both  agonists  Fig. Collectively  these data support the contention that  transcriptional regulation is more complicated when the cell is exposed  to two signals  and that dual TLR4 TLR5 signaling does not result in a  synergistic response  but rather enhanced negative feedback or compe   tition between the signaling cascades. Since IRAKM was previously shown to function as a negative  regulator of TLR4 signaling  11   experiments were conducted to  determine whether IRAKM could function as a negative regulator when  the cells were exposed to dual signaling by treating the cells with  different doses of LPS and flagellin and quantifying IRAKM gene  expression  Fig. To experimentally investigate dual signaling cascades the THP 1 cell line was stimulated with varying  doses of both LPS and flagellin to trigger TLR4 and TLR5 signaling respectively. All data are the average and standard error of at least three separate experiments. Where indicated     significant differences were  found relative to the control  0  g ml LPS  at each dose p D0.05 using a Student  s t Test ." />
      <node TEXT="Analysis of dual signaling reveals greater complexity at the  transcriptional level  To further investigate NF B induced transcriptional regulation upon  dual signaling expression of two additional genes  IL 6 and TNF     were  quantified. However  when the cells were exposed to both LPS  and flagellin IL 6 and TNF    gene expression did not show the same  pattern as IL 1  gene expression or NF B activation  Figs. 3  that was not evident with IL 6 or TNF    gene expression  Fig. These  data underscore a potential fundamental difference in how the cells  respond at the transcriptional level to single versus dual signaling  and  indicate that the model could be improved by taking into account  greater transcriptional regulation of gene expression. 4.Discussion  Modeling can provide data that not only contributes to the under   standing of complex signaling cascades  but can also be informative of  what experiments should be done next  can be used to make predictions  about the best targets in a signaling cascade to increase or decrease the  desired cell response  and provide information about how cells or even  patients may respond to pharmacological interventions. a  To evaluate the ability of the model to simulate dual  signaling cascades the TLR4 and TLR5 models were combined and experiments were run when both cascades were activated with varying doses of both LPS and  flagellin. b  Data from the dual signaling model was then graphed." />
      <node TEXT="To validate that activation of NF B correlated  with NF B induced gene transcription we assessed IL 1  gene expression  by quantitative reverse transcriptase PCR  qRT PCR  in THP 1 cells  treated with LPS or flagellin. TLR4 signaling resulted in more rapid activation of NF B and a  response that peaked at a lower dose of LPS as compared to TLR5  signaling  Fig. Experimental and modeling data for the dual TLR signaling cascades  Since cells rarely receive a single signal at any given time there was  interest in creating a more realistic experimental system utilizing mul  tiple agonists  LPS and flagellin. In order to generate data over a range of  doses for LPS and flagellin experiments were run with a cell receiving 3  different doses of LPS in combination with 3 different doses of flagellin   Fig. These data indicated that the cell did not  respond in a synergistic manner when both signals were given to the cell. Whereas  most of the NF B response was not gone until the cells were  treated with LPS and 5  g ml of flagellin  Fig. To create more complex models that could react to multiple agonists   a new algorithm was developed that combined the TLR4 and TLR5  models into a dual signaling model  Fig." />
      <node TEXT="6 Song WS  Jeon YJ  Namgung B  Hong M  Yoon S. A conserved TLR5 binding and  activation hot spot on flagellin. 23  Kuai R  Sun X  Yuan W  Ochyl LJ  Xu Y  Najafabadi AH  Scheetz L  Yu M  Balwani I   Schwendeman A  Moon JJ. 25  Smith M  Garc a Mart nez E  Pitter MR  Fucikova J  Spisek R  Zitvogel L   Kroemer G  Galluzzi L. Trial Watch  toll like receptor agonists in cancer  immunotherapy. 28  Patra MC  Kwon H  Batool M  Choi S. Computational insight into the structural  organization of full length toll like receptor 4 dimer in a model phospholipid  bilayer. 29  T aubner C  Mathiak B  Kupfer A  Fleischer N  Eckstein S. Modelling and simulation  of the TLR4 pathway with coloured petri nets. 33  Goff PH  Hayashi T  He W  Yao S  Cottam HB  Tan GS  Crain B  Krammer F   Messer K  Pu M  Carson DA  Palese P  Corr M. Synthetic toll like receptor 4  TLR4   and TLR7 ligands work additively via MyD88 to induce protective antiviral  immunity in mice. Synchronization of IRF1  JunB   and C EBP   activities during TLR3 TLR7 cross talk orchestrates timely cytokine  synergy in the proinflammatory response." />
    </node>
  </node>
</map>
