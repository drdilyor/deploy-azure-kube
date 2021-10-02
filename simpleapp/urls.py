from django.urls import path

from simpleapp import views


urlpatterns = [
    path('', views.index)
]
