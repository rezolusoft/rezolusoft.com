from rezolusoft.service.models import  Service, Category
from django.views import View
from django.shortcuts import render
from django.http import Http404


class ServiceCategoryDetailsView(View):

    def get_queryset(self, category):
        
        queryset = Service.objects.filter(category__code=category)
        if queryset.count() <= 0:
            #raise Http404('404')
            pass
        else:
            return queryset
        
    def get(self, request, category):

        services = self.get_queryset(category)
        category = Category.objects.get(code=category)

        context = {

        'services': services,
        'category': category,
            
        }
        return render(request, 'pages/service_category_details.html', context)


