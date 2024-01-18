"""
    urls.py
"""


from django.conf import settings
from django.urls import include, path
from django.views.generic import RedirectView


if settings.PATH:
    # settings.PATH is the $YNH_APP_ARG_PATH
    # Prefix all urls with "PATH":
    urlpatterns = [
        path('', RedirectView.as_view(url=f'{settings.PATH}/')),
        path(f'{settings.PATH}/', include('scovie.urls')),
    ]
else:
    # Installed to domain root, without a path prefix
    # Just use the default project urls.py
    from scovie.urls import urlpatterns  # noqa
