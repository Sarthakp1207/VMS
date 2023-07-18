# Generated by Django 3.2.8 on 2021-11-24 14:20

import django.contrib.auth.models
import django.contrib.auth.validators
from django.db import migrations, models
import django.db.models.deletion
import django.utils.timezone


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('auth', '0012_alter_user_first_name_max_length'),
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('password', models.CharField(max_length=128, verbose_name='password')),
                ('last_login', models.DateTimeField(blank=True, null=True, verbose_name='last login')),
                ('is_superuser', models.BooleanField(default=False, help_text='Designates that this user has all permissions without explicitly assigning them.', verbose_name='superuser status')),
                ('username', models.CharField(error_messages={'unique': 'A user with that username already exists.'}, help_text='Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.', max_length=150, unique=True, validators=[django.contrib.auth.validators.UnicodeUsernameValidator()], verbose_name='username')),
                ('first_name', models.CharField(blank=True, max_length=150, verbose_name='first name')),
                ('last_name', models.CharField(blank=True, max_length=150, verbose_name='last name')),
                ('email', models.EmailField(blank=True, max_length=254, verbose_name='email address')),
                ('is_staff', models.BooleanField(default=False, help_text='Designates whether the user can log into this admin site.', verbose_name='staff status')),
                ('is_active', models.BooleanField(default=True, help_text='Designates whether this user should be treated as active. Unselect this instead of deleting accounts.', verbose_name='active')),
                ('date_joined', models.DateTimeField(default=django.utils.timezone.now, verbose_name='date joined')),
                ('is_hospital', models.BooleanField(default=False)),
                ('is_user', models.BooleanField(default=False)),
                ('location', models.CharField(default='Enter the Address', max_length=50)),
                ('hospitalbranch', models.CharField(default='Enter hospital name and branch', max_length=50)),
                ('validhospital', models.CharField(choices=[('pending', 'pending'), ('approved', 'approved')], default='pending', max_length=50)),
                ('groups', models.ManyToManyField(blank=True, help_text='The groups this user belongs to. A user will get all permissions granted to each of their groups.', related_name='user_set', related_query_name='user', to='auth.Group', verbose_name='groups')),
                ('user_permissions', models.ManyToManyField(blank=True, help_text='Specific permissions for this user.', related_name='user_set', related_query_name='user', to='auth.Permission', verbose_name='user permissions')),
            ],
            options={
                'verbose_name': 'user',
                'verbose_name_plural': 'users',
                'abstract': False,
            },
            managers=[
                ('objects', django.contrib.auth.models.UserManager()),
            ],
        ),
        migrations.CreateModel(
            name='Appointment',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Childname', models.CharField(max_length=20)),
                ('Contactno', models.CharField(max_length=10)),
                ('Appointmentdate', models.DateField()),
                ('Time', models.TimeField(default='HH:MM')),
                ('Aadharno', models.CharField(max_length=12)),
                ('hospitalbranch', models.CharField(max_length=50)),
                ('status', models.CharField(choices=[('Pending', 'Pending'), ('Booked', 'Booked'), ('Rejected', 'Rejected'), ('Waitinglist for vaccine', 'Waiting list for vaccine')], default='Pending', max_length=50)),
                ('notes', models.CharField(max_length=50)),
                ('appointmentcreateuser', models.CharField(max_length=50)),
                ('loggeduser', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Childinfo',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Childname', models.CharField(max_length=20)),
                ('Dateofbirth', models.DateField()),
                ('Age', models.CharField(max_length=50)),
                ('Contactno', models.CharField(max_length=10)),
                ('Gender', models.CharField(choices=[('Gender', 'Gender'), ('Male', 'Male'), ('Female', 'Female')], default='Gender', max_length=50)),
                ('Bloodtype', models.CharField(choices=[('A+', 'A+'), ('B+', 'B+'), ('AB+', 'AB+'), ('O+', 'O+'), ('A-', 'A-'), ('B-', 'B-'), ('AB-', 'AB-'), ('O-', 'O-')], default='A+', max_length=50)),
                ('Height_in_cm', models.CharField(max_length=50)),
                ('Weight_in_kg', models.CharField(max_length=50)),
                ('Hospital', models.CharField(max_length=50)),
                ('loggeduser', models.CharField(max_length=50)),
                ('vaccine_1', models.DateField()),
                ('vaccine_2', models.DateField()),
                ('vaccine_3', models.DateField()),
                ('vaccine_4', models.DateField()),
            ],
        ),
        migrations.CreateModel(
            name='UserReg',
            fields=[
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='vaccination.user')),
            ],
        ),
    ]
