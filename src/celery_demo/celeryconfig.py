broker_url = 'redis://redis:6379/0'
result_backend = 'db+postgresql://fake:fake@postgres:5432'
include = ['celery_demo.tasks']
