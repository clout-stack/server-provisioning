#
# firsttime script
#

# Create jenkins user if one does not exist
BUILD_SSH_FILE_PATH=./private/jenkins.rsa

if [ ! -f $BUILD_SSH_FILE_PATH ]; then
    ssh-keygen -t rsa -N '' -f $BUILD_SSH_FILE_PATH &> /dev/null
    echo "build server keys created"
else
    echo "build server keys already exist"
fi

ansible-galaxy install srsp.oracle-java
