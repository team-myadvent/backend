# Generated by Django 5.1.4 on 2024-12-18 18:29

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ("event_calendar", "0004_auto_20241217_2037"),
    ]

    operations = [
        migrations.AlterField(
            model_name="eventcalendar",
            name="comment_detail",
            field=models.TextField(blank=True, default="", help_text="캘린더 메시지", null=True),
        ),
    ]