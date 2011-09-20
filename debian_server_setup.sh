# run it as root

aptitude update
aptitude -y upgrade
aptitude install -y mysql-server mysql-client
aptitude install -y sun-java6-jre

aptitude install -y build-essential bison openssl
aptitude install -y libreadline6 libreadline6-dev curl

aptitude install -y git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libxml2-dev libxslt-dev
aptitude install -y git

aptitude install -y autoconf libc6-dev

aptitude install -y libfreetype6-dev xml-core
aptitude install -y libjpeg-dev libpng-dev
aptitude install -y imagemagick

aptitude install -y subversion

aptitude install -y emacs

aptitude install -y libmysqlclient-dev
aptitude install -y libmagick-dev
aptitude install -y libmagickcore-dev

aptitude install -y nginx
aptitude install -y memcached

aptitude install -y postfix
