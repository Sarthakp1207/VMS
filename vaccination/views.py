from django.shortcuts import get_object_or_404, redirect, render 
from django.http import HttpResponse
from django.forms import inlineformset_factory
from django.contrib.auth import authenticate, login, logout
from django.contrib import messages
from django.contrib.auth.decorators import login_required
# Create your views here.
from django.contrib.auth.models import User
from django.views.generic import CreateView, ListView, UpdateView,TemplateView
from .forms import UserSignUpForm, HospitalSignUpForm,UserForm
from .forms import AppointmentCreate,StatusUpdate,ChildCreate
from .filters import HospitalFilter
from django.contrib import auth
from .models import *
import datetime
def signup(request):
  
        return render(request,'vaccination/user_register.html')

def login(request):
    if request.method == 'POST':
        user = auth.authenticate(username=request.POST['username'],password = request.POST['password'])
        if user is not None :
           if user.validhospital=='approved' :
              if user.is_hospital :
              
                 auth.login(request,user)
                 return redirect('hospital_home')
             
              else:
                 auth.login(request,user)
                 return redirect('home')
           else:
                return render (request,'vaccination/login.html', {'error':'Your registeration not approved!'})
 
       
        else:
            return render (request,'vaccination/login.html', {'error':'Username or password is incorrect!'})
    else:
    
        return render(request,'vaccination/login.html')
        
		
def logout(request):
  
    return redirect('index') 
	
def adminlogin(request):
    return redirect('admin')

        
def header(request):
  
    return render(request,'vaccination/header.html')

def home(request):
   
   return render(request, 'vaccination/home.html')
  
def hospital_home(request):
   
         return render(request, 'vaccination/hospital_home.html')
         
def index(request):
    return render(request, 'vaccination/index.html')

    

def createchild(request):
        data = User.objects.filter(is_hospital=1)
       
        create_type="Child info"
        upload = ChildCreate(initial={'loggeduser': request.user.username})
        if request.method == 'POST':
                upload = ChildCreate(request.POST, request.FILES)
                if upload.is_valid():
                   upload.save()
                   return redirect('mychild')
                else:
                    return HttpResponse("""your form is wrong, reload on <a href = "{{ url : 'index'}}">reload</a>""")
        else:
            return render(request, 'vaccination/upload_child.html', {'upload_form':upload,'create_type':create_type,'data':data})    
def my_reminder(request, get_id):
    get_id = int(get_id)
    product = get_object_or_404(Childinfo, id=get_id)
    product.vaccine_1 = product.Dateofbirth+ datetime.timedelta(days=60)
    product.vaccine_2 = product.Dateofbirth+ datetime.timedelta(days=120)
    product.vaccine_3 = product.Dateofbirth+ datetime.timedelta(days=180)
    product.vaccine_4 = product.Dateofbirth+ datetime.timedelta(days=210)
    product.save()
    getdetails=Childinfo.objects.filter(id=get_id)
    return render(request, 'vaccination/my_reminder.html', {'getdetails': getdetails})

def createappointment(request):  
    create_type="Appointment"
    data = User.objects.get(id=request.COOKIES['hospital_id'])
    upload_form = AppointmentCreate(initial={'loggeduser': request.user.username})
    
    if request.method == 'POST':
       
        upload_form = AppointmentCreate(request.POST, request.FILES)
            
        if upload_form.is_valid():
            new_author = upload_form.save(commit=False)
            new_author.hospitalbranch=data.hospitalbranch
            new_author.appointmentcreateuser=data.username
            new_author.save()
            
            return redirect('myappointment')
        else:
            return HttpResponse("""your form is wrong, reload on <a href = "{{ url : 'index'}}">reload</a>""")
    
     
        
            
    else:
            return render(request, 'vaccination/upload_data.html',{'upload_form':upload_form,'create_type':create_type})
def mychild(request):
    getdetails = Childinfo.objects.filter(loggeduser=request.user.username).order_by('-id')
    if not getdetails:
       return render (request,'vaccination/my_child_info.html', {'error':'there is no data'})
    
    else :
       
         return render(request, 'vaccination/my_child_info.html', {'getdetails': getdetails})   
   
    
def myappointment(request):
    getdetails = Appointment.objects.filter(loggeduser=request.user.username).order_by('-id')
    if not getdetails:
       return render (request,'vaccination/my_appointment_details.html', {'error':'there is no data'})
    
    else :
       
         return render(request, 'vaccination/my_appointment_details.html', {'getdetails': getdetails})
def mypatient(request):
    getdetails = Appointment.objects.filter(appointmentcreateuser=request.user.username).order_by('-id')
    if not getdetails:
       return render (request,'vaccination/my_patient_details.html', {'error':'there is no data'})
    
    else :
       
         return render(request, 'vaccination/my_patient_details.html', {'getdetails': getdetails})   
def update_status(request, get_id):
    get_id = int(get_id)
    try:
        food_sel1 = Appointment.objects.get(id = get_id)
    except Appointment.DoesNotExist:
        return redirect('hospital_home')   
    
    food_form1= StatusUpdate(request.POST or None, instance = food_sel1)

    if food_form1.is_valid():
        food_form1.save()
        return redirect('mypatient')
    return render(request, 'vaccination/update_result.html', {'upload_form':food_form1})
def update_child(request, child_id):
    child_id = int(child_id)
    try:
        child_sel = Childinfo.objects.get(id = child_id)
    except Childinfo.DoesNotExist:
        return redirect('home')    
    child_form = ChildCreate(request.POST or None, instance = child_sel)
    if child_form.is_valid():
        child_form.save()
        return redirect('mychild')
    return render(request, 'vaccination/upload_child.html', {'upload_form':child_form})

    return render(request, 'vaccination/upload_child.html')

def delete_child(request, child_id):
    child_id = int(child_id)
    try:
        child_sel = Childinfo.objects.get(id = child_id)
    except Childinfo.DoesNotExist:
        return redirect('home')
    child_sel.delete()
    return redirect('mychild')
   
def hospital_user(request):
	if request.method == "POST":
		user_form = UserForm(request.POST, instance=request.user)
		
		if user_form.is_valid():
		    user_form.save()
		    messages.success(request,('Your profile was successfully updated!'))
	
		else:
		    messages.error(request,('Unable to complete request'))
		
	user_form = UserForm(instance=request.user)
	
	return render(request = request, template_name ="vaccination/hospital_user.html", context = {"user":request.user, 
		"user_form": user_form})


def userpage(request):
	if request.method == "POST":
		user_form = UserForm(request.POST, instance=request.user)
		
		if user_form.is_valid():
		    user_form.save()
		    messages.success(request,('Your profile was successfully updated!'))
	
		else:
		    messages.error(request,('Unable to complete request'))
		
	user_form = UserForm(instance=request.user)
	
	return render(request = request, template_name ="vaccination/user.html", context = {"user":request.user, 
		"user_form": user_form})

def view_hospital(request):
    getdetails = User.objects.filter(is_hospital =1,validhospital='approved').order_by('-id')
    if not getdetails:
       return render (request,'vaccination/view_hospital.html', {'error':'there is no data'})
    
    else :
       
         return render(request, 'vaccination/view_hospital.html', {'getdetails': getdetails})
        
def hospital_list(request):
    getallcity=User.objects.filter(is_hospital =1,validhospital='approved').order_by('-id')
    city_filter = request.GET.get('hospitalbranch')
   
    f = HospitalFilter(request.GET, queryset=getallcity)
   
    return render(request, 'vaccination/search_hospital.html', {'filter': f,'getallcity':getallcity})
    
  
class SignUpView(TemplateView):
    template_name = 'vaccination/main.html'



    

class HospitalSignUpView(CreateView):
    model = User
    form_class = HospitalSignUpForm
    template_name = 'vaccination/signup_form.html'

    def get_context_data(self, **kwargs):
        kwargs['user_type'] = 'Hospital'
        return super().get_context_data(**kwargs)

    def form_valid(self, form):
        user = form.save()
        if user is not None and user.validhospital=='approved' :
            auth.login(self.request, user)
            return redirect('hospital_home')
        else:
        
            return render(self.request, 'vaccination/login.html',{'error':'Your registeration not approved!'})
          
class UserSignUpView(CreateView):
    model = User
    form_class = UserSignUpForm
    template_name = 'vaccination/signup_form.html'

    def get_context_data(self, **kwargs):
        kwargs['user_type'] = 'Patient'
        return super().get_context_data(**kwargs)

    def form_valid(self, form):
        user = form.save()
        auth.login(self.request, user)
        return redirect('home')


  

  
