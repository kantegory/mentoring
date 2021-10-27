from django.db import models
from django.conf import settings

# Create your models here.
class Note(models.Model):
  user = models.ForeignKey(settings.AUTH_USER_MODEL, on_delete=models.CASCADE)
  description = models.TextField()
  title = models.CharField(max_length=255)
  created_at = models.DateField(auto_now_add=True)
