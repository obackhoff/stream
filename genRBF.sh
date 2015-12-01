:<<'COMMENT'
Valid options for WriteStreamToARFFFile:                                                                                                 
-s stream (default: generators.RandomTreeGenerator)                                                                                      
Stream to write.                                                                                                                         
-f arffFile                                                                                                                              
Destination ARFF file.                                                                                                                   
-m maxInstances (default: 10000000)                                                                                                      
Maximum number of instances to write to file.                                                                                            
-h suppressHeader                                                                                                                        
Suppress header from output.                                                                                                             
-O taskResultFile                                                                                                                        
File to save the final result of the task to.  
COMMENT

:<<'COMMENT'
Valid options for generators.RandomRBFGenerator:                                                                                         
-r modelRandomSeed (default: 1)                                                                                                          
Seed for random generation of model.                                                                                                     
-i instanceRandomSeed (default: 1)                                                                                                       
Seed for random generation of instances.                                                                                                 
-c numClasses (default: 2)                                                                                                               
The number of classes to generate.                                                                                                       
-a numAtts (default: 10)                                                                                                                 
The number of attributes to generate.                                                                                                    
-n numCentroids (default: 50)                                                                                                            
The number of centroids in the model.
COMMENT

java -cp /home/omar/Apps/moa-prerelease-2015.05/moa.jar -javaagent:/home/omar/Apps/moa-prerelease-2015.05/sizeofag.jar moa.DoTask "WriteStreamToARFFFile -s 'generators.RandomRBFGenerator -n 10 -a 2 -r 10' -f stream -m 10000 -h"

:<<'COMMENT'
Valid options for clustering.RandomRBFGeneratorEvents:                                                                                   
-m modelRandomSeed (default: 1)                                                                                                          
Seed for random generation of model.                                                                                                     
-i instanceRandomSeed (default: 5)                                                                                                       
Seed for random generation of instances.                                                                                                 
-K numCluster (default: 5)                                                                                                               
The average number of centroids in the model.                                                                                            
-k numClusterRange (default: 3)                                                                                                          
Deviation of the number of centroids in the model.                                                                                       
-R kernelRadius (default: 0.07)                                                                                                          
The average radii of the centroids in the model.                                                                                         
-r kernelRadiusRange (default: 0.0)                                                                                                      
Deviation of average radii of the centroids in the model.                                                                                
-d densityRange (default: 0.0)                                                                                                           
Offset of the average weight a cluster has. Value of 0 means all cluster contain the same amount of points.                              
-V speed (default: 500)                                                                                                                  
Kernels move a predefined distance of 0.01 every X points                                                                                
-v speedRange (default: 0)                                                                                                               
Speed/Velocity point offset                                                                                                              
-N noiseLevel (default: 0.1)                                                                                                             
Noise level                                                                                                                              
-n noiseInCluster                                                                                                                        
Allow noise to be placed within a cluster                                                                                                
-E eventFrequency (default: 30000)                                                                                                       
Event frequency. Enable at least one of the events below and set numClusterRange!                                                        
-M eventMergeSplitOption                                                                                                                 
Enable merging and splitting of clusters. Set eventFrequency and numClusterRange!                                                        
-C eventDeleteCreate                                                                                                                     
Enable emering and disapperaing of clusters. Set eventFrequency and numClusterRange!                                                     
-h decayHorizon (default: 1000)                                                                                                          
Decay horizon                                                                                                                            
-t decayThreshold (default: 0.01)                                                                                                        
Decay horizon threshold                                                                                                                  
-e evaluationFrequency (default: 1000)                                                                                                   
Evaluation frequency                                                                                                                     
-a numAtts (default: 2)                                                                                                                  
The number of attributes to generate.
COMMENT

#java -cp /home/omar/Apps/moa-prerelease-2015.05/moa.jar -javaagent:/home/omar/Apps/moa-prerelease-2015.05/sizeofag.jar moa.DoTask "WriteStreamToARFFFile -s 'clustering.RandomRBFGeneratorEvents -K 2' -f stream -m 10000 -h"


