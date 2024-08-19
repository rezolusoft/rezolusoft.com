from django.urls import path
from rezolusoft.home.views import (HomePage, WorkListView, WorkDetailsView, ServiceCategoryDetailsView)

urlpatterns = [
    path('', HomePage.as_view(), name='home' ),
    path("services/<str:category>/", ServiceCategoryDetailsView.as_view(), name='services'),
    path('work', WorkListView.as_view(), name='work' ),
    path('work/<str:slug>/', WorkDetailsView.as_view(), name='work-details' ),  
]