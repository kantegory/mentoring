from rest_framework import serializers
from example_app.models import *


class NoteSerializer(serializers.ModelSerializer):
  class Meta:
    model = Note
    fields = "__all__"
