# Generated by Django 3.2.21 on 2024-08-16 00:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('service', '0005_auto_20240815_2140'),
    ]

    operations = [
        migrations.AddField(
            model_name='service',
            name='code',
            field=models.CharField(blank=True, db_index=True, max_length=50),
        ),
    ]
