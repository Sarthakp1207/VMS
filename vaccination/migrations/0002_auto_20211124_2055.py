# Generated by Django 3.2.8 on 2021-11-24 15:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('vaccination', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='childinfo',
            name='vaccine_1',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='childinfo',
            name='vaccine_2',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='childinfo',
            name='vaccine_3',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='childinfo',
            name='vaccine_4',
            field=models.DateField(blank=True, null=True),
        ),
    ]
