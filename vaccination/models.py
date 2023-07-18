from django.db import models
from django.contrib.auth.models import User
from django.conf import settings
from .models import *
from django.dispatch import receiver #add this
from django.db.models.signals import post_save #add this
from django.contrib.auth.models import AbstractUser
#DataFlair Models

class User(AbstractUser):
    is_hospital = models.BooleanField(default=False)
    is_user = models.BooleanField(default=False)
    pending = 'pending'
    approved = 'approved'
    status_CHOICES = [
        (pending, 'pending'),
        (approved, 'approved'),
       
    ]
    location= models.CharField(max_length = 50, default='Enter the Address')
    hospitalbranch = models.CharField(max_length = 50, default='Enter hospital name and branch')
    validhospital = models.CharField(
        max_length=50,
        choices=status_CHOICES,
        default=pending)
    def __unicode__(self):
      
        return self.hospitalbranch

class UserReg(models.Model):
   user = models.OneToOneField(User, on_delete=models.CASCADE, primary_key=True)
   
   def __unicode__(self):
      
        return self
   
   
class Childinfo(models.Model):
    
    Childname=models.CharField(max_length = 20)
    
    Dateofbirth = models.DateField()
    Age = models.CharField(max_length = 50)
    Contactno=models.CharField(max_length = 10)
    Male = 'Male'
    Female = 'Female'
    Gender_select = 'Gender'
    status_CHOICES = [
        (Gender_select, 'Gender'),
        (Male, 'Male'),
        (Female, 'Female'),
       
    ]
    Gender = models.CharField(
        max_length=50,
        choices=status_CHOICES,
        default=Gender_select)
    Apositive= 'A+'
    Bpositive= 'B+'
    ABpositive= 'AB+'
    Opositive= 'O+'
    Anegative= 'A-'
    Bnegative= 'B-'
    ABnegative= 'AB-'
    Onegative= 'O-'
    status_CHOICES = [
        (Apositive, 'A+'),
        (Bpositive, 'B+'),
        (ABpositive, 'AB+'),
        (Opositive, 'O+'),
        (Anegative, 'A-'),
        (Bnegative, 'B-'),
        (ABnegative, 'AB-'),
        (Onegative, 'O-'),
       
    ]
    Bloodtype = models.CharField(
        max_length=50,
        choices=status_CHOICES,
        default=Apositive)
    Height_in_cm=models.CharField(max_length = 50)
    Weight_in_kg=models.CharField(max_length = 50)
    Hospital= models.CharField(max_length = 50) 
    loggeduser=models.CharField(max_length = 50)
    vaccine_1=models.DateField(null=True, blank=True)
    vaccine_2=models.DateField(null=True, blank=True)
    vaccine_3=models.DateField(null=True, blank=True)
    vaccine_4=models.DateField(null=True, blank=True)
 
    def __unicode__(self):
        return self  

class Appointment(models.Model):
    
    Childname=models.CharField(max_length = 20)
    Contactno=models.CharField(max_length = 10)
    Age = models.CharField(max_length = 50)
    Appointmentdate = models.DateField()
    Time = models.TimeField(default='HH:MM')
    Aadharno=models.CharField(max_length = 12)
    hospitalbranch = models.CharField(max_length = 50)
    pending = 'Pending'
    booked = 'Booked'
    rejected = 'Rejected'
    vaccinated = 'vaccinated'
    waitingvaccine = 'Waitinglist for vaccine'
   
    status_CHOICES = [
       (pending, 'Pending'),
       (booked, 'Booked'),
       (rejected, 'Rejected'),
       (vaccinated, 'vaccinated'),
       (waitingvaccine, 'Waiting list for vaccine'),
        
    ]
   
    status = models.CharField(
        max_length=50,
        choices=status_CHOICES,
        default=pending)
    vaccine_name= models.CharField(max_length = 50)
    appointmentcreateuser=models.CharField(max_length = 50)
    loggeduser=models.CharField(max_length = 50)
    
    
    def __unicode__(self):
        return self