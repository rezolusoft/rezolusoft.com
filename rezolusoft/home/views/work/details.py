from rezolusoft.work.models import Work
from django.views import View
from django.shortcuts import render
from django.http import Http404


class WorkDetailsView(View):

    def get_queryset(self, slug):

        queryset = Work.objects.get(slug=slug)
        
        return queryset

    def get(self, request, slug):

        work = self.get_queryset(slug)
        context = {
            'work': work,

        }
        return render(request, 'pages/work/details.html', context)
