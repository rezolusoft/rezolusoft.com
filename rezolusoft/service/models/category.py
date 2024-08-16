from django.db import models
from tinymce import models as tinymce_models


class Category(models.Model):

    code  = models.CharField(max_length=150, unique=True, db_index=True)
    name = models.CharField(max_length=150)
    description = models.CharField(max_length=500)
    info = tinymce_models.HTMLField(blank=True)


    def __str__(self) -> str:
        return self.name
