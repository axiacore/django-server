#! /usr/bin/env python
# -*- coding: utf-8 -*-
# Author: AxiaCore S.A.S. http://axiacore.com
ALLOWED_HOSTS = ['www.{{ pillar['fqdn'] }}', '{{ pillar['fqdn'] }}']

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': '{{ pillar['project_name'] }}',
        'USER': '{{ pillar['project_name'] }}',
        'PASSWORD': '{{ pillar['db_password'] }}',
        'HOST': 'localhost',
        'PORT': '5432',
    }
}
