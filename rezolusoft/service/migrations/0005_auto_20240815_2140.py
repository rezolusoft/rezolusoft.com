# Generated by Django 3.2.21 on 2024-08-15 21:40

from django.db import migrations
import tinymce.models


class Migration(migrations.Migration):

    dependencies = [
        ('service', '0004_service_illustration'),
    ]

    operations = [
        migrations.AlterField(
            model_name='category',
            name='info',
            field=tinymce.models.HTMLField(blank=True),
        ),
        migrations.AlterField(
            model_name='service',
            name='info',
            field=tinymce.models.HTMLField(blank=True),
        ),
    ]
