from django.shortcuts import render
from .tasks import test_func

# Create your views here.

def test(request):
    test_func.display()
    return HttpResponse("done")