from django.shortcuts import render
from django.views import View
from rezolusoft.service.models import Category


class HomePage(View):

    def get(self, request):

        categories = Category.objects.all()
        context = {
            'categories': categories,
        }

        return render(request, 'pages/home.html', context=context)
