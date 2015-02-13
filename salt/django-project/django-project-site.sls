fetch-and-publish:
    cmd.run:
        - name: /srv/salt/django-project/django-script.sh
        - user: deploy
        - cwd: /opt/deploy
        - env:
           - USERNAME: {{ pillar['bb_user'] }}
           - PASSWORD: {{ pillar['bb_pass'] }}
           - REPOSLUG: '{{ pillar['repo_slug'] }}'

    git.latest:
        - name: {{ pillar['project_repo'] }}
        - target: /opt/deploy/{{ pillar['project_name'] }}_app/{{ pillar ['project_name'] }}
        - rev: master
        - identity: /opt/deploy/.ssh/id_rsa
