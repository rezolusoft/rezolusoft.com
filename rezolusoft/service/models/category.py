from django.db import models


class ServiceCategory(models.Model):

    title  = models.CharField(max_length=150)
    description = models.CharField(max_length=500)
    icon = models.ImageField(upload_to="service/category/")


    def __str__(self) -> str:
        return self.title
