FROM docker-prod.affinitic.be/plone:4.3
ADD . /code/
USER root
RUN apt-get update
RUN apt-get install -y libmysqlclient-dev subversion mercurial libldap2-dev libsasl2-dev openssl libssl-dev libpq-dev python-dateutil libsqlite3-dev
# dev
RUN apt-get install -y tmux silversearcher-ag zsh exuberant-ctags parallel python-setuptools
RUN pip install watchdog pyflakes pep8 flake8 pylint zest.releaser pyroma check-manifest git+https://github.com/yejianye/watchdog-tricks.git
RUN gem install tmuxinator
RUN mkdir -p /home/gdw/ftp/photos_heb
# end dev
RUN chown -R plone .
USER plone
RUN bin/buildout -vvvv -N -c base.cfg
