# from django.db.models.signals import post_save
# from django.contrib.auth.models import User
# from .models import Profile
# from django.dispatch import receiver


# @receiver(post_save, sender=User)
# def create_profile(sender, instance, created, **kwargs):
#     if created:
#         Profile.objects.create(customer=instance)


# # @receiver(post_save, sender=User)
# # def save_profile(sender, instance, **kwargs):
# #     instance.profile.save()
# @receiver(post_save, sender=User)
# def save_profile(sender, instance, **kwargs):
#     if hasattr(instance, 'profile'):
#         instance.profile.save()

from django.db.models.signals import post_save
from django.contrib.auth.models import User
from django.dispatch import receiver
from .models import Profile

@receiver(post_save, sender=User)
def create_profile(sender, instance, created, **kwargs):
    """
    Create a Profile for each new User, but skip if User is being saved via admin raw operations.
    """
    if created and not kwargs.get('raw', False):
        Profile.objects.create(customer=instance)

@receiver(post_save, sender=User)
def save_profile(sender, instance, **kwargs):
    """
    Save the related Profile, but skip during admin 'raw' operations
    or if Profile does not exist yet.
    """
    if hasattr(instance, 'profile') and not kwargs.get('raw', False):
        try:
            instance.profile.save()
        except Exception:
            # Ignore errors triggered by admin context copying
            pass
