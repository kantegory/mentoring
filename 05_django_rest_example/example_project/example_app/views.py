from rest_framework import generics
from example_app.models import *
from example_app.serializers import *


class CreateNoteView(generics.CreateAPIView):
  queryset = Note.objects.all()
  serializer_class = NoteSerializer
