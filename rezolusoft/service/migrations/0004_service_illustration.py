# Generated by Django 3.2.21 on 2024-08-15 20:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('service', '0003_rename_servicecategory_category'),
    ]

    operations = [
        migrations.AddField(
            model_name='service',
            name='illustration',
            field=models.CharField(default='null', max_length=50),
            preserve_default=False,
        ),
    ]
