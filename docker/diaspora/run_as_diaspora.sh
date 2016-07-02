gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 && \
  curl -L dspr.tk/1t | bash && \
  echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' >> ~/.bashrc && \
  source "$HOME/.rvm/scripts/rvm" && \
  rvm autolibs read-fail && \
  rvm install 2.1 && \
  cd ~ && \
  rm -rf diaspora ; \
  git clone -b master git://github.com/diaspora/diaspora.git && \
  cd diaspora && \
  gem install bundler && \
  RAILS_ENV=production DB=postgres  bin/bundle install --without test development
