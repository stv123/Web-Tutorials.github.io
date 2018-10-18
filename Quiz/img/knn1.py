import numpy as np
from operator import itemgetter

import csv,os

class KNNClassifier:

    def _init_(self):
        self.training_features=None  #movie,title,kicks,kisses
        self.training_labels=None # movie title,gener

        #test data placeholder

        self.test_features=None  #kiks,kisses

        #build meaningful result
        self.elegantResult="Most likely,{0},{1}, is of type/class '{2}'"


    #method with sample data  for testing

    def createSampleTrainingData(self):
        self.training_features=np.array([[1.0,1.1],[1.0,1.0],[0.0,0.1],[0.0,0.0]])
        self.training_labels=['A','A','B','B']
        self.test_features=np.array([1,1],dtype=float)


    def loadTrainingDataFromFile(self,file_path):
        if file_path is not None  and os.path.exists(file_path):
            features=[]
            self.training_labels=[]
            with open(file_path,'r')  as training_data_file:
                reader=csv.DictReader(training_data_file)
                for row in reader:
                    if(row['moviename']!='?'):
                        features.append([ float(row['kicks']),float(row['kisses']) ])
                        self.training_labels.append(row['movietype'])
                    else:
                        self.test_features=np.array([float(row['kicks']),float(row['kisses'])])

            if len(features) >0 :
                self.training_features=np.array(features)

            print("self.training_features ",self.training_features)
            print("self.training.labels=",self.training_labels)
            print("self.test_features=",self.test_features)


    def classifyData(self,test_data=None,k=0):
        print("classifiData: tes_data=",test_data)

        if test_data is not None:
            self.test_features=np.array(test_data,dtype=float)
        print("classifyData",self.test_features)

        if self.test_features is not None and self.training_features is not None and self.training_labels is not None  and k>0:
            print("classify data=",self.test_features)
            print("")
            featureVectorSize=self.training_features.shape[0]
            tileOfData=np.tile(self.test_features,(featureVectorSize,1))
            diffMat=self.training_features-tileOfData
            square=diffMat**2
            SquareRoot=square**(.5)
            (SquareRoot.argsort())
            R=0
            A=0
            for i in range(k):
                if self.training_labels[i]=='Romance' :
                  #  print('R')
                    R=R+1
                else :
                   # print('A')
                    A=A+1



            if A>R :
                print("Action-Movie")
            else :
                print("Romance-Movie")

    def predictSampleDataClass(self):
        test_data=[0.1,0.2]
        instance=KNNClassifier()
        instance.createSampleTrainingData()
        classOfTestData=instance.classifyData(test_data=test_data,k=3)
        #return instance.elegantResult.format('record',str(instance.test_features,classOfTestData))
        return classOfTestData


    def predictMovieType(self):
        my_test_data=[1,20]
        instance=KNNClassifier()
        instance.loadTrainingDataFromFile('LgR_Movies_kNN_classifier.csv')
        classOfTestData=instance.classifyData(test_data=my_test_data,k=3)
        #return instance.elegantResult.formate('movie',str(instance.test_features),classOfTestData)
        return classOfTestData

instance = KNNClassifier()
instance.predictMovieType()






