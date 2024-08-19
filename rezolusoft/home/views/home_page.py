from django.shortcuts import render
from django.views import View
from rezolusoft.service.models import Category
from rezolusoft.work.models import Work


class HomePage(View):

    def get(self, request):

        categories = Category.objects.all()
        works = Work.objects.all()[:3]
        context = {
            'categories': categories,
            'works': works
        }

        return render(request, 'pages/home.html', context=context)
