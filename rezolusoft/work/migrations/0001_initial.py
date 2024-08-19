# Generated by Django 3.2.21 on 2024-08-16 12:03

from django.db import migrations, models
import django.db.models.deletion
import tinymce.models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('service', '0006_service_code'),
    ]

    operations = [
        migrations.CreateModel(
            name='Work',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('client', models.CharField(max_length=50)),
                ('name', models.CharField(max_length=150)),
                ('banner', models.ImageField(upload_to='services/banner/')),
                ('duration', models.CharField(max_length=100)),
                ('slug', models.SlugField(max_length=200, unique=True)),
                ('challenge', tinymce.models.HTMLField()),
                ('solution', tinymce.models.HTMLField()),
                ('website', models.CharField(blank=True, max_length=150)),
                ('service', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='service.service')),
            ],
        ),
    ]
