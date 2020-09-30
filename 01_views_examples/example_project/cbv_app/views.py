from django.shortcuts import render, get_object_or_404
from django.views.generic.list import ListView
from django.views.generic.base import TemplateView
from django.views.generic.detail import DetailView
from django.views.generic.edit import CreateView, UpdateView, DeleteView

# import models
from .models import *

# Create your views here.
class IndexView(TemplateView):
  template_name = "cbv_app/index.html"


class PublisherRetrieveView(DetailView):
  model = Publisher


class PublisherListView(ListView):
  model = Publisher


class PublisherUpdateView(UpdateView):
  model = Publisher
  fields = ['first_name', 'last_name', 'birthdate']
  success_url = '/publisher/list/'


class PublisherCreateView(CreateView):
  model = Publisher
  fields = ['first_name', 'last_name', 'birthdate']
  success_url = '/publisher/list/'


class PublisherDeleteView(DeleteView):
  model = Publisher


class BookRetrieveView(DetailView):
  model = Book


class BookListView(ListView):
  model = Book


class BookUpdateView(UpdateView):
  model = Book
  fields = ['name', 'desc', 'publisher']
  success_url = '/book/list/'


class BookCreateView(CreateView):
  model = Book
  fields = ['name', 'desc', 'publisher']
  success_url = '/book/list/'


class BookDeleteView(DeleteView):
  model = Book
