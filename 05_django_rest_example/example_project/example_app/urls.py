from django.urls import path
from example_app.views import *

urlpatterns = [
    path('notes/create/', CreateNoteView.as_view()),
]
