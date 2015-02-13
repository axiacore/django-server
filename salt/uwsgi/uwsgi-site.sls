/etc/init/uwsgi.conf:
  file.managed:
    - source: salt://upstart/uwsgi.conf
    - user: root
    - mode: 644
    - template: jinja
