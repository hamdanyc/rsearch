<?xml version="1.0" encoding="UTF-8"?>
<map version="1.0.1">
  <node TEXT="topic">
    <node TEXT="model">
      <node TEXT="The recent study   49  proposedthat pre trained models on fine grained data are suitable for medical analysis and continual pre training can reduce the domain gap between natural and medical images. The iNat and NeWT are two large scale fine grained natural image data collections. A brief description of pre trained weights used in our experiments are listed below  3.2.1. ChestX ray14 This pre trained weight is an in domain ResNet50 model trained on the ChestX ray14 dataset   51  consists of 112K frontal view chest X  ray images of 30K unique patients. The detailed information on this pre trained weight can be found in Taher et al.   49 . ChexPert This pre trained weight is an in domain ResNet50 model trained on a large scale publicly available ChexPert dataset   52  consisting of 224K chest X ray images of 65K patients. The detail about this pre trained weight can be found in Taher et al.   49 ." />
      <node TEXT="3 D convolutional neural networks for automatic detection of pulmonary nodules in chest CT. IEEE J Biomed Health Inf 2018 23 5  2080 90. 31  Kesim E  Dokur Z  Olmez T. X ray chest image classification by a small sized convolutional neural network. 33  Shin H C  Roth HR  Gao M  Lu L  Xu Z  Nogues I  Yao J  Mollura D  Summers RM. 34  Das AK  Kalam S  Kumar C  Sinha D. TLCoV An automated Covid 19 screening model using transfer learning from chest X ray images. 41  Cohen JP  Morrison P  Dao L  Roth K  Duong TQ  Ghassemi M. Covid 19 image data collection  Prospective predictions are the future. 52  Irvin J  Rajpurkar P  Ko M  Yu Y  Ciurea Ilcus S  Chute C  Marklund H  Haghgoo B  Ball R  Shpanskaya K  et al. Chexpert  A large chest radiograph dataset with uncertainty labels and expert comparison. 62  Jamil M  Hussain I  et al. Automatic detection of COVID 19 infection from chest X ray using deep learning." />
      <node TEXT="Conclusion and future work In this paper  we have presented a fine tuned ResNet50 model applying transfer learning technique for effectively classifying COVID  19 from chest X ray images. References  1  Mahase E. Coronavirus  covid 19 has killed more people than SARS and MERS combined  despite lower case fatality rate. 4  Ahmadi A  Fadaei Y  Shirani M  Rahmani F. Modeling and forecasting trend of COVID 19 epidemic in Iran until may 13  2020. 6  Corman VM  Landt O  Kaiser M  Molenkamp R  Meijer A  Chu DK  Bleicker T  Br nink S  Schneider J  Schmidt ML  et al. Deep learning based im  age conversion of CT reconstruction kernels improves radiomics reproducibility for pulmonary nodules or masses. 14  Kermany DS  Goldbaum M  Cai W  Valentim CC  Liang H  Baxter SL  McKeown A  Yang G  Wu X  Yan F  et al. Identifying medical diagnoses and treatable diseases by image based deep learning. 24  Kaur M  Gianey HK  Singh D  Sabharwal M. Multi objective differential evo  lution based random forest for e health applications." />
      <node TEXT="Contents lists available at ScienceDirect Informatics in Medicine Unlocked journal homepage  www.elsevier.com locate imu Transfer learning with fine tuned deep CNN ResNet50 model for classifying COVID 19 from chest X ray images Md. Due to the lack of available testing kits  it is impractical for screening every patient with a respiratory ailment using traditional methods  RT PCR . In addition  the tests have a high turn around time and low sensitivity. Introduction In December 2019  Wuhan  China  was the first person to develop a novel corona viral disease  called COVID 19 . As per Chinese government s most recent guidelines  the diagnosis of COVID 19 should be validated by a reverse transcription polymerase chain reaction  RT PCR . Chest CT is a routine pneumonia imagery tool that provides an ad  vantage for COVID 19 diagnosis. Most COVID 19 patients show similar characteristics on CT images  such as opacity of the ground glass  pul  monary consolidation  and or peripheral lung changes   9 10 ." />
      <node TEXT="This pre trained supervised ResNet50 model s weight was collected. This pre trained weight was downloaded manually from the given source on that paper and the wight file name was     2021                  . 2021                            This pre trained supervised ResNet50 model s weight was also col  lected from the same source   50  as      2021            . But this model only trained on the iNat2021 dataset instead of initializing with pre trainedImageNet weight. This pre  trained ResNet50 model utilized a self supervised SwAV algorithm   54  while training on the iNat2021 Mini dataset. 1 One of the self supervised learning  SSL  methods is MoCo  Momen  tum Contrast  v1. All these pre trained ResNet50 model weights are used to initialize our ResNet50 TL models." />
      <node TEXT="This could be because of the transfer learning technique with pre trained weights. We can also see a similar pattern in             14 but the accuracy difference is smaller than        1. On the other hand         2Table 5 Various scores calculated in test dataset for different ResNet50 TL model where Pre  Precision  Re  Recall  F1  F1 score  Sup  Support  Acc  Accuracy  INCXR14                        14  INCxP                        iNSup       2021              iNSupFS       2021                             iNMSwAV       2021             1 . Model Class Pre Re F1 Sup Acc ChestX ray14Covid 0.9791 0.9737 0.9764 7230.9766Normal 0.9741 0.9795 0.9768 730 ChexPertCovid 0.9861 0.9834 0.9848 7230.9849Normal 0.9836 0.9863 0.9850 730 ImageNetCovid 0.8394 0.7953 0.8168 7230.8224Normal 0.8073 0.8493 0.8278 730 INCXR14Covid 0.9902 0.9737 0.9819 7230.9821Normal 0.9744 0.9904 0.9823 730 INCxPCovid 0.9650 0.9544 0.9597 7230.9601Normal 0.9553 0.9658 0.9605 730 iNSupCovid 0.9635 0.9488 0.9561 7230.9566Normal 0.9501 0.9644 0.9572 730 iNSupFSCovid 0.9696 0.9710 0.9703 7230.9704Normal 0.9712 0.9699 0.9705 730 iNMSwAVCovid 0.9931 0.9903 0.9917 7230.9917Normal 0.9904 0.9932 0.9918 730        1Covid 0.9411 0.9281 0.9345 7230.9353Normal 0.9297 0.9425 0.9361 730        2Covid 0.7974 0.8382 0.8173 7230.8135Normal 0.8312 0.7891 0.8096 730 and ImageNet scores are very low compared to other models. Various standard evaluation scores are shown in Table 5  where column Support represents the number of samples is used during evalu  ation. Although                       14  ChexPert and ChestX ray14 have achieved above 97  f1 score  the                     14identified covid class over complete samples 99  correctly. Our work has achieved 99.17  validation accuracy on the COVID 19 Ra  diography dataset." />
      <node TEXT="machine learning package created largely by Facebook s AI Research department. The repeated training technique is taken for several epochs. The training dataset is used for model training  and the test dataset is used for model evaluation. Table 4 presents hyperparameters of our experimental setup. The train and validation loss depicted in Fig. Parameters Parameters value Batch size 32 Optimizer Adam Learning rate 0.001 Betas  0.9  0.999  Eps 1e  08 Weight decay 0 Criterion Cross Eentropy Loss other. Although the initial loss is very little compared to other models." />
      <node TEXT="Train and validation loss of different ResNet50 TL models. Most of the hidden layers use Batch Normalization  and ReLU followed by a conv layer. The first fc layer has 2048 out features  then dropout with a probability of 0.5 is applied. After the second fc layer  ReLU and dropoutwith probability 0.5 are applied. These pre trained weights are generated from different datasets. As we are experimenting with medical images datasets. Researchers are experimenting on various aspects of transfer learning for medical images like chest X rays and CT scan images." />
      <node TEXT="We utilized those pre trained weights and applied the transfer learning approach on a different chest X ray images dataset for classifying Covid or Normal patients. The proposed methodology is stated in Section 3  which also explains experimental Setup  Model Training  and Evaluation. ML tools are widely accepted as a prominent tool to improve the prediction and diagnosis of many diseases  23 24 . In medical imaging systems  DL models are therefore widely accepted as they can automatically extract features or use some pre trained networks like ResNet  25 . A deep CNN DeTraC  36  model was proposed to classify COVID 19 chest X ray images and showed 93.1  accuracy. A team of researchers and collaborators with medical doctors created this database from multiple international sources at different timescales  14 40 42 . There are four categories  Covid  Lung Opacity  Viral Pneumonia  and Normal  of chest X ray  CXR  images in this database." />
      <node TEXT="In our experiment  no data augmentation techniques are applied. ResNet50 TL model and pre trained weights One of the well known models which perform very well in dif  ferent computer vision problems is ResNet   37 . Some of the others are VGG   43   DenseNet   44   Inception v3   45   AlexNet   46   Mo  bileNet   47   GoogLeNet   48  etc. In this work  we utilized 10 different pre trained weights of the ResNet50 model to carry out transfer learning on the limited medical images dataset  COVID 19 Radiography Database . Also the architecture for proposed fine tuned ResNet50 TL presented in Table 3. There are a series of convolutional  conv  layers in ResNet50 archi  tecture. Then 3  3 max pooling with the stride of size 2 is applied." />
    </node>
    <node TEXT="supervised">
      <node TEXT="This pre trained supervised ResNet50 model s weight was collected. This pre trained weight was downloaded manually from the given source on that paper and the wight file name was     2021                  . 2021                            This pre trained supervised ResNet50 model s weight was also col  lected from the same source   50  as      2021            . But this model only trained on the iNat2021 dataset instead of initializing with pre trainedImageNet weight. This pre  trained ResNet50 model utilized a self supervised SwAV algorithm   54  while training on the iNat2021 Mini dataset. 1 One of the self supervised learning  SSL  methods is MoCo  Momen  tum Contrast  v1. All these pre trained ResNet50 model weights are used to initialize our ResNet50 TL models." />
    </node>
    <node TEXT="machine learning">
      <node TEXT="machine learning package created largely by Facebook s AI Research department. The repeated training technique is taken for several epochs. The training dataset is used for model training  and the test dataset is used for model evaluation. Table 4 presents hyperparameters of our experimental setup. The train and validation loss depicted in Fig. Parameters Parameters value Batch size 32 Optimizer Adam Learning rate 0.001 Betas  0.9  0.999  Eps 1e  08 Weight decay 0 Criterion Cross Eentropy Loss other. Although the initial loss is very little compared to other models." />
    </node>
    <node TEXT="health">
      <node TEXT="3 D convolutional neural networks for automatic detection of pulmonary nodules in chest CT. IEEE J Biomed Health Inf 2018 23 5  2080 90. 31  Kesim E  Dokur Z  Olmez T. X ray chest image classification by a small sized convolutional neural network. 33  Shin H C  Roth HR  Gao M  Lu L  Xu Z  Nogues I  Yao J  Mollura D  Summers RM. 34  Das AK  Kalam S  Kumar C  Sinha D. TLCoV An automated Covid 19 screening model using transfer learning from chest X ray images. 41  Cohen JP  Morrison P  Dao L  Roth K  Duong TQ  Ghassemi M. Covid 19 image data collection  Prospective predictions are the future. 52  Irvin J  Rajpurkar P  Ko M  Yu Y  Ciurea Ilcus S  Chute C  Marklund H  Haghgoo B  Ball R  Shpanskaya K  et al. Chexpert  A large chest radiograph dataset with uncertainty labels and expert comparison. 62  Jamil M  Hussain I  et al. Automatic detection of COVID 19 infection from chest X ray using deep learning." />
      <node TEXT="Conclusion and future work In this paper  we have presented a fine tuned ResNet50 model applying transfer learning technique for effectively classifying COVID  19 from chest X ray images. References  1  Mahase E. Coronavirus  covid 19 has killed more people than SARS and MERS combined  despite lower case fatality rate. 4  Ahmadi A  Fadaei Y  Shirani M  Rahmani F. Modeling and forecasting trend of COVID 19 epidemic in Iran until may 13  2020. 6  Corman VM  Landt O  Kaiser M  Molenkamp R  Meijer A  Chu DK  Bleicker T  Br nink S  Schneider J  Schmidt ML  et al. Deep learning based im  age conversion of CT reconstruction kernels improves radiomics reproducibility for pulmonary nodules or masses. 14  Kermany DS  Goldbaum M  Cai W  Valentim CC  Liang H  Baxter SL  McKeown A  Yang G  Wu X  Yan F  et al. Identifying medical diagnoses and treatable diseases by image based deep learning. 24  Kaur M  Gianey HK  Singh D  Sabharwal M. Multi objective differential evo  lution based random forest for e health applications." />
    </node>
  </node>
</map>
