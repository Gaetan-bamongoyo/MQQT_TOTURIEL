from celery import shared_task

@shared_task(bind=True)
def test_func(self):
    for i in range(2):
        print(i)
    return "Done"