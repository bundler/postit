cat <<L > Gemfile.lock
GIT
  remote: https://github.com/irrationalfab/PrettyBacon.git
  revision: 1eeb06f7d381acd65414b86b42fdf3538faae01c
  branch: master
  specs:
    prettybacon (0.0.2)
      bacon (~> 1.2)

GEM
  remote: https://rubygems.org/
  specs:
    addressable (2.3.6)
    aggregate (0.2.2)
    arel (5.0.1.20140414130214)
    bacon (1.2.0)
    connection_pool (2.0.0)
    daemons (1.1.9)
    data_objects (0.10.14)
      addressable (~> 2.1)
    dm-core (1.2.1)
      addressable (~> 2.3)
    dm-do-adapter (1.2.0)
      data_objects (~> 0.10.6)
      dm-core (~> 1.2.0)
    dm-postgres-adapter (1.2.0)
      dm-do-adapter (~> 1.2.0)
      do_postgres (~> 0.10.6)
    do_postgres (0.10.14)
      data_objects (= 0.10.14)
    dotenv (0.11.1)
      dotenv-deployment (~> 0.0.2)
    dotenv-deployment (0.0.2)
    eventmachine (1.0.3)
    ffi (1.9.6)
    flounder (0.17.0)
      aggregate (~> 0.2, >= 0.2.2)
      arel (~> 5, > 5.0.1)
      connection_pool (~> 2)
      hashie (~> 3, >= 3.2)
      pg (~> 0.17)
      pg-hstore (~> 1.2, >= 1.2.0)
    foreman (0.75.0)
      dotenv (~> 0.11.1)
      thor (~> 0.19.1)
    hashie (3.3.1)
    kicker (3.0.0)
      listen (~> 1.3.0)
      notify (~> 0.5.2)
    listen (1.3.1)
      rb-fsevent (>= 0.9.3)
      rb-inotify (>= 0.9)
      rb-kqueue (>= 0.2)
    notify (0.5.2)
    pg (0.17.1)
    pg-hstore (1.2.0)
    rack (1.5.2)
    rack-protection (1.5.3)
      rack
    rake (10.4.0)
    rb-fsevent (0.9.4)
    rb-inotify (0.9.5)
      ffi (>= 0.5.0)
    rb-kqueue (0.2.3)
      ffi (>= 0.5.0)
    sequel (4.11.0)
    sinatra (1.4.5)
      rack (~> 1.4)
      rack-protection (~> 1.4)
      tilt (~> 1.3, >= 1.3.4)
    terminal-table (1.4.5)
    thin (1.6.2)
      daemons (>= 1.0.9)
      eventmachine (>= 1.0.0)
      rack (>= 1.0.0)
    thor (0.19.1)
    tilt (1.4.1)

PLATFORMS
  ruby

DEPENDENCIES
  bacon
  dm-core
  dm-do-adapter
  dm-postgres-adapter
  flounder
  foreman
  kicker
  pg
  prettybacon!
  rake
  sequel
  sinatra
  terminal-table
  thin
L

out=$(postit -v)
expected="Bundler version 1.9.10"
if [ "$out" = "$expected" ]
then
  printf '.'
else
  echo "\nFailure in $0\nExpected '$expected', got '$out'"
  exit 1
fi
