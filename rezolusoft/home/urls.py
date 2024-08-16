from django.urls import path
from rezolusoft.home.views import (HomePage, ServiceCategoryDetailsView)

urlpatterns = [
    path('', HomePage.as_view(), name='home' ),
    path("services/<str:category>/", ServiceCategoryDetailsView.as_view(), name='services')
    
]