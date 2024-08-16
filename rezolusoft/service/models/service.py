from django.db import models
from rezolusoft.service.models import Category
from tinymce import models as tinymce_models

class Service(models.Model):
    name = models.CharField(max_length=100)
    code = models.CharField(max_length=50, blank=True, db_index=True)
    category = models.ForeignKey(Category, on_delete=models.CASCADE)
    description = models.CharField(max_length=500)
    icon = models.CharField(max_length=50)
    illustration = models.CharField(max_length=50)
    info = tinymce_models.HTMLField(blank=True)

    def __str__(self) -> str:
        return f'{self.name}'
    