from django.shortcuts import render
from .tasks import test_func
from django.http import HttpResponse
from mailApp.tasks import send_mail_func

# Create your views here.

def test(request):
    test_func.delay()
    return HttpResponse("Done")

def send_mail(request):
    send_mail_func.delay()
    return HttpResponse("Send")
    
