from django.contrib.auth import get_user_model
from celery import shared_task
from django.core.mail import send_mail
from celery_project import settings

@shared_task(bind=True)
def send_mail_func(self):
    mail_object = "Hi celery testing"
    message = "Si tu aimes mes contenus abonne toi"
    to_mail = "betweencompagny1@gmail.com"
    send_mail(
            subject = mail_object, 
            message = message, 
            from_email = settings.EMAIL_HOST_USER, 
            recipient_list = [to_mail],
            fail_silently=True
            )
    return "Send"