from celery_demo.main import app

@app.task
def hello():
    return 'hello world'
