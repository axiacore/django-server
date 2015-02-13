/etc/nginx/sites-available/{{ pillar['project_name'] }}:
  file.managed:
    - source: salt://nginx/nginx.conf
    - user: root
    - mode: 644
    - template: jinja

enable-nginx:
  file.symlink:
    - name: /etc/nginx/sites-enabled/{{ pillar['project_name'] }}
    - target: /etc/nginx/sites-available/{{ pillar['project_name'] }}
    - force: false
    - require:
      - file: /etc/nginx/sites-available/{{ pillar['project_name'] }}
