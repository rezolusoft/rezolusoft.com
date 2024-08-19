from rezolusoft.work.models import Work
from rezolusoft.service.models import Category
from django.views import View
from django.shortcuts import render
from django.http import Http404


class WorkListView(View):

    def get_queryset(self):
        
        queryset = Work.objects.all()
        
        return queryset
        
    def get(self, request):

        works = self.get_queryset()
        categories = Category.objects.all()
        context = {
        'works': works,
        'categories': categories
        }
        return render(request, 'pages/work/list.html', context)


