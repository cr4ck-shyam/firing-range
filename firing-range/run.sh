apt-get update && apt-get upgrade -y
mkdir /root/firing/deps
cd /root/firing/deps
wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-318.0.0-linux-x86_64.tar.gz
tar -xf google-cloud-sdk-318.0.0-linux-x86_64.tar.gz
/root/firing/deps/google-cloud-sdk/bin/gcloud components install app-engine-java -q
apt-get install ant --yes
wget https://apache.inspire.net.nz/tomcat/tomcat-9/v9.0.39/bin/apache-tomcat-9.0.39.zip
unzip apache-tomcat-9.0.39.zip
sed -i '95s/true/false/' /root/firing/deps/google-cloud-sdk/platform/google_appengine/google/appengine/tools/java/config/user/ant-macros.xml
