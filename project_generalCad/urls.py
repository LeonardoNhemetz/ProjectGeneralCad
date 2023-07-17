from django.urls import path
from app_generalCad import views

urlpatterns = [
    path('', views.home,name='home'),
]
