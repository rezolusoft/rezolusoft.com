from django.db import models
from rezolusoft.service.models import Service
from tinymce import models as tinymce_models

class Work(models.Model):
    client = models.CharField(max_length=50)
    name = models.CharField(max_length=150)
    banner = models.ImageField(upload_to='services/banner/')
    preview = models.ImageField(upload_to='services/preview/', blank=True)
    service = models.ForeignKey(Service, on_delete=models.CASCADE)
    duration = models.CharField(max_length=100)
    slug = models.SlugField(max_length=200, db_index=True, unique=True)
    challenge = tinymce_models.HTMLField()
    solution = tinymce_models.HTMLField()
    website = models.CharField(max_length=150, blank=True)

    def __str__(self) -> str:
        return f'{self.client} - {self.name}'

