# python-social-test

Development setup
-----------------
Install required system packages:

    sudo apt-get install python3-pip

Create www directory where project sites and environment dir

    mkdir /var/www && mkdir /var/envs && mkdir /var/envs/bin

Install virtualenvwrapper

    sudo pip3 install virtualenvwrapper
    sudo pip3 install --upgrade virtualenv

Add these to your bashrc virutualenvwrapper work

    export WORKON_HOME=/var/envs
    export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.8
    export PROJECT_HOME=/var/www
    export VIRTUALENVWRAPPER_HOOK_DIR=/var/envs/bin
    source /usr/local/bin/virtualenvwrapper.sh

Create virtualenv

    cd /var/envs && mkvirtualenv --python=/usr/bin/python3.8 python-social-test


Install requirements for a project.

    cd /var/www/python-social-test && pip install -r requirements.txt

Configure DB

    Import .sql file to the database

Configure .env file

    An example of .env is named '.env.example'
    
Running 

    $ flask run -p 5000