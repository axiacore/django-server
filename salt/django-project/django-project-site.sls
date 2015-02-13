/srv/salt/django-project/django-script.sh:
    cmd.run:
        - env:
            - 'USERNAME': '{{ pillar['bb_user'] }}'
            - 'PASSWORD': '{{ pillar['bb_pass'] }}'
            - 'REPO': '{{ pillar['project_repo'] }}'

    git.latest:
        - name: {{ pillar['project_repo'] }}
        - target: /opt/deploy/{{ pillar['project_name'] }}_app/{{ pillar ['project_name'] }}
        - rev: master
