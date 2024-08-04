from django.urls import path
from rezolusoft.home.views import HomePage

urlpatterns = [
    path('', HomePage.as_view(), name='home' )
    
]