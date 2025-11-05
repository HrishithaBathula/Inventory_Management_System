# from django.apps import AppConfig


# class DashboardConfig(AppConfig):
#     name = 'dashboard'
from django.apps import AppConfig

class DashboardConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'dashboard'

    def ready(self):
        from django.contrib.auth.models import Group
        from django.db.utils import OperationalError, ProgrammingError

        try:
            Group.objects.get_or_create(name='Admin')
            Group.objects.get_or_create(name='Staff')
        except (OperationalError, ProgrammingError):
            # Happens before migrations — safe to ignore
            pass
