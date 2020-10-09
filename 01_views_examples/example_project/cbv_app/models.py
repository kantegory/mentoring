from django.db import models

# Create your models here.
class PublisherFilterManager(models.Manager):
  def get_queryset(self):
    return super().get_queryset().order_by("-birthdate")


class BookCountManager(models.Manager):
  def get_queryset(self):
    return super().get_queryset().annotate(published_books_count=models.Count('book'))


class Publisher(models.Model):
  first_name = models.CharField(max_length=30)
  last_name = models.CharField(max_length=30)
  birthdate = models.DateField()

  objects = models.Manager()
  sorted_objects = PublisherFilterManager()
  book_count_objects = BookCountManager()

  def __str__(self):
    return "{} {}".format(self.first_name, self.last_name)




class Book(models.Model):
  name = models.CharField(max_length=100)
  desc = models.CharField(max_length=200)
  publisher = models.ForeignKey(Publisher, on_delete=models.CASCADE)

  def __str__(self):
    return "{}, {}".format(self.name, self.publisher)
