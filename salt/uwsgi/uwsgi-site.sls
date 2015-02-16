/etc/init/uwsgi.conf:
  file.managed:
    - source: salt://upstart/uwsgi.conf
    - user: root
    - mode: 644
    - template: jinja

/opt/deploy/{{ pillar['project_name'] }}_app/uwsgi.ini:
  file.managed:
    - source: salt://uwsgi/uwsgi.ini
    - user: deploy
    - group: www-data
    - mode: 640
    - template: jinja

websockets:
  file.managed:
    - source: salt://uwsgi/uwsgi_websocket.ini
    - user: deploy
    - group: www-data
    - mode: 640
    - template: jinja
{% if pillar['uses_notifications'] == True %}
    - name: /opt/deploy/{{ pillar['project_name'] }}_app/uwsgi_websocket.ini
{% endif %}
    - name: /tmp/uwsgi_websocket.xxx
{% endif %}