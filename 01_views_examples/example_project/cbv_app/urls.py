from django.urls import path
from .views import *

urlpatterns = [
  # index url
  path('', IndexView.as_view()),

  # publisher urls  
  path('publisher/<int:pk>/', PublisherRetrieveView.as_view()),
  path('publisher/list/', PublisherListView.as_view()),
  path('publisher/<int:pk>/update/', PublisherUpdateView.as_view()),
  path('publisher/create/', PublisherCreateView.as_view()),
  path('publisher/<int:pk>/delete/', PublisherDeleteView.as_view()),

  # book urls  
  path('book/<int:pk>/', BookRetrieveView.as_view()),
  path('book/list/', BookListView.as_view()),
  path('book/<int:pk>/update/', BookUpdateView.as_view()),
  path('book/create/', BookCreateView.as_view()),
  path('book/<int:pk>/delete/', BookDeleteView.as_view()),
]
