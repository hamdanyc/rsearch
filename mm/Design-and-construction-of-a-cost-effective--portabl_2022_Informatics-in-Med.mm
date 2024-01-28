<?xml version="1.0" encoding="UTF-8"?>
<map version="1.0.1">
  <node TEXT="topic">
    <node TEXT="machine learning">
      <node TEXT="Equations for the sensitivity and non linearity can be seen in Eqs. To select an approach which achieves the best results in terms of gesture classification  multiple algorithms are compared under specified categories. Between sessions  the glove is taken off and put back on in differing environmental conditions  at different ambient temperatures  for example . Suitable data partitioning is an important aspect when training machine learning algorithms since it assists with avoiding overfitting and plays a large role in determining how effective the resultant models are. The above datasets are partitioned into one large training set and ten smaller sets for repeatability tests. This set is then split randomly into training and testing subsets using scikit  learn s train test split function with 25  of the data being used for the testing subset. The classification algorithms selected are  k  nearest neighbours  support vector machine  neural network  decision tree  and random forest." />
      <node TEXT="2019  URL https   www.who.int news  room fact sheets detail deafness and hearing loss targetText Over 205 25  20of 20the 20world s will 20have 20disabling 20hearing 20loss. 3  Bukhari J  Rehman M  Malik S  Kamboh A  Salman A. American sign language translation through sensory glove  SignSpeak. 7  Fernandez Delgado M  Cernadas E  Barro S. Do we need hundreds of classifiers to solve real world classification problems  J Mach Learn Res 2014 15 1  3133 81. 15  Paredes Madrid L  Matute A  Bareno J  Parra Vargas C  Gutierrez Velasquez E. Underlying physics of conductive polymer composites and force sensing re  sistors  FSRs . 19  Pedregosa F  Varoquaux G  Gramfort A  Michel V  Thirion B  Grisel O  et al. Scikit learn  Machine learning in python. 20  Pedregosa F  Varoquaux G  Gramfort A  Michel V  Thirion B  Grisel O  et al. Scikit learn  Machine learning in python. MobiSys 17  proceedings of the 15th annual international conference on mobile systems  applications  and services   June 19 23  2017  niagara falls  NY  USA." />
      <node TEXT="Thus  a synthetic leather golf glove is chosen for its desirable physical properties and cost effectiveness as presented in Fig. Each sensor s dimensions would then  there  fore  not be optimised for the finger it is measuring. It is a material that has been doped with carbon black molecules  which are conductive   14 . This is beneficial as both sensors might provide unique data for gesture detection from one compact IC. This package includes multiple individual sensors which may be combined to deter  mine a variety of gesture related parameters. This microprocessor is  additionally  required to output speech once a word has been signed. Due to availability and cost  the two microprocessors under consideration are an ATMEGA 328 and a Raspberry Pi Zero W. Despite its higher cost  the Raspberry Pi is chosen since it allows more reliable access to non volatile memory  has additional computational power  beneficial when using machine learning models   and has access to a more suitable TTS engine." />
      <node TEXT="Contents lists available at ScienceDirect Informatics in Medicine Unlocked journal homepage  www.elsevier.com locate imu Design and construction of a cost effective  portable sign language to speech translator Muhammed Rashaad Cassim  Jason Parry   Adam Pantanowitz  David M. Rubin Biomedical Engineering Research Group  School of Electrical and Information Engineering  University of the Witwatersrand  Johannesburg Private Bag 3  2050  Johannesburg  South Africa A R T I C L E I N F O Keywords  American Sign Language Gesture detection Gesture classification Machine learningA B S T R A C T This paper presents the design and construction of a cost effective  portable sign language to speech translator. Gesture classification is achieved through a supervised machine learning approach   five different algorithms are compared to determine the best configuration for this system. Overall  the system costs under  35 which is lower when compared to similar systems investigated  that cost at least  100. There are many variants of sign language  which can be broadly characterised as either fingerspelling or signed languages   2 . This would require a fairly complex system to interpret full body gestures and cues. This paper presents the design and implementation of a cost  effective  portable sign language to speech translator. Initially  a de  scription of the system is provided comprising relevant success criteria  assumptions and constraints." />
      <node TEXT="The glove and Myo combination setup resulted in a practical repeatabil  ity of 72 . 9 assumes that labour costs may be neglected when calculating the system s overall cost. This is due to it costing almost athird of a glove that used store bought sensors and even less when compared to a solution utilising the Myo  while performing the same function. All algorithms performed fairly strongly in the cross validation ac  curacy category  as expected  due to this test being carried out on a single training dataset using an established machine learning library. The neural network may have achieved an even higher practical repeatability if a better hidden layer structure had been discovered. The solution developed improved on that from existing research in two major aspects. When compared to existing solutions  the system can be seen as more cost effective." />
      <node TEXT="Cassim et al. Table 2 Machine learning algorithm parameters and tuning values considered. Algorithm Parameter Values k nearest neighboursNumber of neighbours1 to 20 Weighting strategy Uniform  distance based support vector machineKernel type linear  polynomial  radial basis Penalty co efficient 0.1  1.0  5.0  10.0  50.0  100.0  1000.0 neural networkStructure  1    2    3    4    5    1  1    1  2    1  3    1  4    1  5    2  1    2  2    2  3    2  4    2  5    5  1    5  2    5  3    5  4    5  5    1  1  1  1  1  1  1  1  1  1  1    5  5  5  5  5    100    500    1000    100  100    100  100  100    100  100  100  100  100  Learning rate 0.001  0.01  0.1  0.2  0.4  0.8  1.0 decision treeLoss criterion gini  entropy Splitting parameter Best  random random forestNumber of estimators1 to 20 Loss criterion gini  entropy Fig. 5 and 6 summarise the results of an analysis carried out to determine which sensor data should be used in the final system. The combination of flex sensor and accelerometer data is selected to classify gestures. The results of this can be seen in Fig. However  digit 4 s temperature drift is 17.35  of its maximum output and could  therefore  cause an incorrect classification  if the glove happened to be used at a temperature which is 7 hotter than that of the test environment. This tuning is done using sci kit learn s GridSearchCV func  tionality  as discussed in 2.2.3 ." />
    </node>
    <node TEXT="supervised">
      <node TEXT="Contents lists available at ScienceDirect Informatics in Medicine Unlocked journal homepage  www.elsevier.com locate imu Design and construction of a cost effective  portable sign language to speech translator Muhammed Rashaad Cassim  Jason Parry   Adam Pantanowitz  David M. Rubin Biomedical Engineering Research Group  School of Electrical and Information Engineering  University of the Witwatersrand  Johannesburg Private Bag 3  2050  Johannesburg  South Africa A R T I C L E I N F O Keywords  American Sign Language Gesture detection Gesture classification Machine learningA B S T R A C T This paper presents the design and construction of a cost effective  portable sign language to speech translator. Gesture classification is achieved through a supervised machine learning approach   five different algorithms are compared to determine the best configuration for this system. Overall  the system costs under  35 which is lower when compared to similar systems investigated  that cost at least  100. There are many variants of sign language  which can be broadly characterised as either fingerspelling or signed languages   2 . This would require a fairly complex system to interpret full body gestures and cues. This paper presents the design and implementation of a cost  effective  portable sign language to speech translator. Initially  a de  scription of the system is provided comprising relevant success criteria  assumptions and constraints." />
    </node>
    <node TEXT="model">
      <node TEXT="Equations for the sensitivity and non linearity can be seen in Eqs. To select an approach which achieves the best results in terms of gesture classification  multiple algorithms are compared under specified categories. Between sessions  the glove is taken off and put back on in differing environmental conditions  at different ambient temperatures  for example . Suitable data partitioning is an important aspect when training machine learning algorithms since it assists with avoiding overfitting and plays a large role in determining how effective the resultant models are. The above datasets are partitioned into one large training set and ten smaller sets for repeatability tests. This set is then split randomly into training and testing subsets using scikit  learn s train test split function with 25  of the data being used for the testing subset. The classification algorithms selected are  k  nearest neighbours  support vector machine  neural network  decision tree  and random forest." />
      <node TEXT="Thus  a synthetic leather golf glove is chosen for its desirable physical properties and cost effectiveness as presented in Fig. Each sensor s dimensions would then  there  fore  not be optimised for the finger it is measuring. It is a material that has been doped with carbon black molecules  which are conductive   14 . This is beneficial as both sensors might provide unique data for gesture detection from one compact IC. This package includes multiple individual sensors which may be combined to deter  mine a variety of gesture related parameters. This microprocessor is  additionally  required to output speech once a word has been signed. Due to availability and cost  the two microprocessors under consideration are an ATMEGA 328 and a Raspberry Pi Zero W. Despite its higher cost  the Raspberry Pi is chosen since it allows more reliable access to non volatile memory  has additional computational power  beneficial when using machine learning models   and has access to a more suitable TTS engine." />
      <node TEXT="Another possible reason is that the neural network in   9  was trained on a public database   more data points may have lead to a better trained model which can more accurately classify gestures. One alternative design path to make the system adaptable is an Internet of Things approach where the microcontroller offloads new gesture data to a server for training and receives an updated model back. Overall  the final glove is able to successfully translate an English pangram from sign language to speech with a reasonable level of repeatability   an average of 85  practical accuracy over all letters which is in the upper end of the range presented in existing research  as indicated in Section 1. Additionally  the system meets its goal of portability as a user may wear the glove and use it while travelling with only a power bank attached to supply powerto the system   this power supply is sufficient for up to 50 h of use. Finally  the project meets its goal of cost effectiveness when taking only the component cost  exclusive of labour and other associated costs  into account   the final glove is far cheaper than an alternative using store bought sensors or an alternative means of gesture sensing such as electromyographical sensors or a camera based system. Social and ethical implications The system will facilitate communication between people who are deaf and people who do not understand sign language  but are able to hear. This causes a clear bias in the dataset which may result in inaccurate classifi  cation of gestures when used by other people  specifically  people with a different physical hand structure to the creators ." />
    </node>
  </node>
</map>
