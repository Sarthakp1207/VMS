from django.urls import path
from . import views
from E_vaccination_app.settings import DEBUG, MEDIA_URL, MEDIA_ROOT

from django.conf.urls.static import static
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.conf import settings
#DataFlair Django Tutorials
urlpatterns = [
    path('', views.index, name = 'index'),
    path('main/', views.SignUpView.as_view(), name="signup"),
 
    path('hospital/', views.HospitalSignUpView.as_view(), name='hospital_signup'),
    path('user/', views.UserSignUpView.as_view(), name='user_signup'),
    path('hospital_home/', views.hospital_home, name='hospital_home'),
    path('home/', views.home, name='home'),
    path('header/', views.header, name = 'header'),
   
	path('login/', views.login, name="login"),  
	path('logout/', views.logout, name="logout"),
    path('admin/', views.adminlogin, name="adminlogin"),
    path('hospital_profile/', views.hospital_user, name = "hospital_user"),
    path('user_profile/', views.userpage, name = "userpage"),
    path('home/', views.home, name="home"),
    path('hospital_list/', views.hospital_list, name="hospital_list"),
    path('mypatient/update_status/<int:get_id>', views.update_status),
    path('view_hospital/', views.view_hospital, name="view_hospital"),
    path('createchild/', views.createchild, name = 'createchild'),
 	path('mychild/', views.mychild, name='mychild'),
    path('mychild/my_reminder/<int:get_id>', views.my_reminder, name='my_reminder'),
    
    path('mychild/update/<int:child_id>', views.update_child),
	path('mychild/delete/<int:child_id>', views.delete_child),
    path('createappointment/', views.createappointment, name = 'upload-appointment'),
    path('myappointment/', views.myappointment, name='myappointment'),
    path('mypatient/', views.mypatient, name='mypatient')
    
   
]
urlpatterns += staticfiles_urlpatterns()
if DEBUG:
   
    urlpatterns += static(MEDIA_URL, document_root = MEDIA_ROOT)

'''x-html has doctype manadatory while html doesn't require you to declare doctype
xmlns type is mandatory in html
html, head, body and title is mandatory
must be properly nested
must be properly closed
must be used in lowercase

'''