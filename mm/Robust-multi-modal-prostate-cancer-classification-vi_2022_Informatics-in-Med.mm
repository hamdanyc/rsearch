<?xml version="1.0" encoding="UTF-8"?>
<map version="1.0.1">
  <node TEXT="topic">
    <node TEXT="machine learning">
      <node TEXT="27  Zhong X  Cao R  Shakeri S  Scalzo F  Lee Y  Enzmann DR  Wu HH  Raman SS   Sung K. Deep transfer learning based prostate cancer classification using 3 Tesla  multi parametric MRI. 36  Pedregosa F  Varoquaux G  Gramfort A  Michel V  Thirion B  Grisel O  Blondel M   Prettenhofer P  Weiss R  Dubourg V. others  Scikit learn  machine learning in  Python. Jan.   43  Epstein JI  Zelefsky MJ  Sjoberg DD  Nelson JB  Egevad L  Magi Galluzzi C   Vickers AJ  Parwani AV  Reuter VE  Fine SW  Eastham JA." />
      <node TEXT="Computer aided diagnostic  CAD   7  techniques based on machine  learning methods have been used extensively for the prediction and  detection of early prostate cancer  8 10 . Several machine learning methods are now avail  able to classify the clinical severity of prostate cancer. Recently  there has been an in crease in the use of deep learning based  CAD techniques for medical imaging data such as MRI  18  and CT   19   and these techniques have been used to solve the problem of early  prostate cancer prediction  20 ." />
      <node TEXT="This is an open access article under the CC BY NC ND license   http   creativecommons.org licenses by  nc nd 4.0   .Robust multi modal prostate cancer classification via feature autoencoder  and dual attention  Bochong Lia    Ryo Oka  M.Db  Ping Xuan  Professorc  Yuichiro Yoshimura  PhDd   Toshiya Nakaguchi  Professore  aGraduate School of Science and Technology  Chiba University  1 33  Yayoicho  Inage Ward  Chiba shi  263 002  Japan  bToho University Sakura Medical Center  564 1 Shimoshizu  Sakura  Chiba  Sakura  285 0841  Japan  cSchool of Computer Science and Technology  Heilongjiang University  74 Xuefu Road  Nangang District  Harbin  Harbin  150080  China  dToyama University School of Medicine  3190 Gofuku  Toyama  Gofuku  930 8555  Japan  eCenter for Frontier Medical Engineering  Chiba University  1 33  Yayoicho  Inage Ward  Chiba shi  Chiba  263 8522  Japan    ARTICLE INFO   Keywords   Prostate cancer  Computer aided detection  Magnetic resonance imaging  Machine learning ABSTRACT   Prostate cancer is the second leading cause of cancer death in men. In this paper  we propose a novel and effective multi modal convolutional neural  network for discriminating prostate cancer clinical severity grade  i.e. Therefore  we require a non invasive method  with superior sensitivity and specificity to assist physicians in diag  nosing the clinical severity of prostate cancer." />
    </node>
    <node TEXT="supervised">
      <node TEXT="We input the MRI images of both modalities into a ten layer convolu   tional neural network for feature extraction. So  in this part   we will mainly learn the detailed features of each modality  and we use  the classical U net  34  structure as the backbone that becomes an  auto encoder and uses unsupervised learning for efficient feature  extraction and feature representation of high dimensional data. In our work  we mainly use the dual attention network proposed by Ref." />
    </node>
    <node TEXT="model">
      <node TEXT="However  in recent studies  increasing  research has focused on the classification of sequence images. In  our comparison experiments  we added the classical C3D  39  model of  recent years  which uses 3D convolution for feature learning on  sequence images. It proposes to simultaneously feed im  ages of T2 and ADC modalities into a deep migration learning network  for feature extraction and obtain prediction results after a fully con  nected layer." />
      <node TEXT="For a long time  CNNs have been effective but controversial because  of their poor interpretability. 4.Discussion  At present  the novel model proposed in this paper for clinical  severity classification of prostate cancer obtained well results  but we  can observe from Fig. In 2020 Aldoj et al.  26  work  although their proposed method  can achieve a maximum AUC value of 0.91  they used 4 modalities of  images for T2  ADC  DWI and K trans  and the images were manually  cropped to the prostate lesion area by the physician." />
      <node TEXT="Informatics in Medicine Unlocked 30  2022  100923 5SPIE AAPM NCI Prostate MR Classification Challenge    focused on  quantitative image analysis methods for the diagnostic classification of  clinically significant prostate cancers and was held in conjunction with  the 2017 SPIE Medical Imaging Symposium  among these two datasets   data is sourced from different sites and collected using different  appliances. Implementations  All experiments in this work were performed with Python 3.6 on a  WINDOWS machine with an Nvidia TITAN RTX graphics card and 24 GB  of RAM  CPU model is Intel R  Core  TM  i7 9700K 3.60 GHz. The method proposed in this paper also uses  images of two main modalities as input  we experiment with some of the  most basic two input models for comparison experiments." />
    </node>
  </node>
</map>
