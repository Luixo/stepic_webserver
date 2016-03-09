CONFIG = {
    'mode': 'django',
    'environment': {
        'PYTHONPATH': '/path/to/custom/python/packages',
    },
    'working_dir': '../ask',
    # 'user': 'www-data',
    # 'group': 'www-data',
    'args': (
        # '--bind=127.0.0.1:8000',
        '--workers=1',
        # '--worker-class=egg:gunicorn#sync',
        # '--timeout=30',
        'settings',
    ),
}
