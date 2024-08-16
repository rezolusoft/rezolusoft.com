from .settings import *

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'whitenoise.middleware.WhiteNoiseMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]



STATIC_ROOT = os.path.join('/home/rezogsyk/rezolusoft/static/')
MEDIA_ROOT = os.path.join('/home/rezogsyk/rezolusoft/media/')
STATICFILES_STORAGE = 'whitenoise.storage.CompressedStaticFilesStorage'
