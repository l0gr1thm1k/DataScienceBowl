# DATA SCIENCE BOWL 2017
I've compiled some information here regarding setting up our enviornments for the Data Science Bowl 2017 as well as links for other competition/machine learning resources.

The competition home page can be found here: [Data Science Bowl 2017](https://www.kaggle.com/c/data-science-bowl-2017)

Environment
===========
Because neither of us owns a machine that is capable of performing the computations necessary to build a model from this data we'll be using AWS instances to preprocess and train.

1. The first thing to do is to set up an [AWS account](https://aws.amazon.com/). 
2. After you have an account set up, you'll need to install the [AWS command line tools](http://docs.aws.amazon.com/cli/latest/userguide/installing.html) to set it up
3. If you are running Linux on the client side, I recommend installing the SpaceCore API to facilitate quick and easy access to your AWS instance. You can run [setup_client_env.sh](setup_client_env.sh) to install this.
4. I have a g2.8xlarge (GPU) instance running on AWS that I'm happy to share with you. To log onto the instance, AWS will need to access the instance private key. Put DataScienceBowl.pem in the folder ~/.ssh/
5. Next edit /opt/spacecore/spacecore.cfg. The AWS instance has a unique identifier which we need to access. The last line of the file will hold this information and it should start with 'cl_id=', change the contents of this line to be 'cl_id="i-0795dd147054873ea"'. Now when you call a command with spacecore it will associate that request with this AWS instance.

Data Preprocessing
==================
There's a lot of helpful tutorials regarding preprocessing the data. The file [preprocess.ipynb](Tutorials/preprocess.ipynb) is an iPython notebook that walks through some of the basics of working with the data including pixel resampling and lung segmentation. Other tutorials exist and can be accessed from the competition homepage.

Machine Learning APIs
=====================
I assume we will be using 3D-Convolutional Neural Networks (CNN) to train our model.  I'm not married to any one API or model type and we can experiment with a variety, that's part of the fun of this competition. I do however have some familiarty with [TensorFlow](https://www.tensorflow.org/), and think this moight be an excellent starting point. A good tutorial on implementing CNN in TensorFlow can be found [here](https://www.tensorflow.org/tutorials/mnist/pros/). Something I have not played with yet is [Keras](https://keras.io/), a high level API built on top of TensorFlow designed to make implementing models easier.

Off the top of my head, other machine learning API to play with include:

1. [MxNet](https://github.com/dmlc/mxnet)
2. [Theano](http://www.deeplearning.net/software/theano/)
3. [PyTorch](https://pytorch.org/)
