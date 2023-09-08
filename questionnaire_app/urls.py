from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('questionnaire/', views.questionnaire_view, name='questionnaire')
]
