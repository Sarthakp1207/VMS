from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth import get_user_model
from django.forms import ModelForm
from django.db import transaction
from .models import UserReg,User,Appointment,Childinfo
from django.contrib.auth.models import User
User = get_user_model()

class DateInput(forms.DateInput):
    input_type = 'date'



class AppointmentCreate(forms.ModelForm):
  
    class Meta:
            model = Appointment
            fields=['Childname','Age','Contactno','Appointmentdate','Time', 'Aadharno','loggeduser']
            widgets = {'loggeduser': forms.HiddenInput(), 'appointmentcreateuser': forms.HiddenInput(),'status': forms.HiddenInput(),'vaccine_name': forms.HiddenInput(),'hospitalbranch': forms.HiddenInput(),'Appointmentdate': DateInput(),'Time':forms.TimeInput(format='%H:%M')}
class ChildCreate(forms.ModelForm):
    class Meta:
            model = Childinfo
            fields=['Childname','Age','Contactno','Dateofbirth','Gender', 'Bloodtype','Height_in_cm','Weight_in_kg','Hospital','loggeduser']
            widgets = {'loggeduser': forms.HiddenInput(),'Dateofbirth': DateInput()}
    
       

class StatusUpdate(forms.ModelForm):

     class Meta: 
            model = Appointment
            fields = ('status','vaccine_name')            
    
class UserForm(forms.ModelForm):

     class Meta: 
            model = User
            fields = ('username','first_name', 'last_name', 'email')
           
class HospitalSignUpForm(UserCreationForm):
    
    class Meta(UserCreationForm.Meta):
        model = User
        fields = ('username','first_name', 'last_name', 'email','hospitalbranch','location')
     

    def save(self, commit=True):
        user = super().save(commit=False)
        user.is_hospital = True
        
        if commit :
            user.save()
        return user
class UserSignUpForm(UserCreationForm):
   

    class Meta(UserCreationForm.Meta):
        model = User
        fields = ('username','first_name', 'last_name', 'email')

    @transaction.atomic
    def save(self, commit=True):
        user = super().save(commit=False)
        user.is_user = True
        user.validhospital='approved'
        if commit:
           user.save()
           userreg = UserReg.objects.create(user=user)
      
        return user
