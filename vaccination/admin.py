from django.contrib import admin
from vaccination.models import *
from django.contrib.auth import get_user_model
from import_export.admin import ImportExportModelAdmin

class AppointmentAdmin(ImportExportModelAdmin, admin.ModelAdmin):
    pass
admin.site.register(User)
admin.site.register(UserReg)
admin.site.register(Appointment,AppointmentAdmin)

admin.site.register(Childinfo)


    
#DataFlair

# Register your models here.
