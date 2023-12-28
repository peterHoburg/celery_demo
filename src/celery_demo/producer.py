from time import sleep
from celery_demo.tasks import hello


def main():
    hello.delay()
    print('hello world')

if __name__ == '__main__':
    while True:
        main()
        sleep(5)
