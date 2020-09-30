from django.db import models

# Create your models here.
class Publisher(models.Model):
  first_name = models.CharField(max_length=30)
  last_name = models.CharField(max_length=30)
  birthdate = models.DateField()

  def __str__(self):
    return "{} {}".format(self.first_name, self.last_name)


class Book(models.Model):
  name = models.CharField(max_length=100)
  desc = models.CharField(max_length=200)
  publisher = models.ForeignKey(Publisher, on_delete=models.CASCADE)

  def __str__(self):
    return "{}, {}".format(self.name, self.publisher)
