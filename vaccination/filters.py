import django_filters
from .models import User

        
class HospitalFilter(django_filters.FilterSet):
   
    class Meta:
    
        model = User
        fields = ['hospitalbranch']

