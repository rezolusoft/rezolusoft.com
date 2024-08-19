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

DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.mysql",
        "NAME": "rezogsyk_rezolusoft",
        "USER": "rezogsyk_rezogsyk",
        "PASSWORD": os.environ.get('DB_PASS'),
        "HOST": "127.0.0.1",
        "PORT": "3306",
    }
}


DEBUG = os.environ.get('DEBUG')
TEMPLATES_DEBUG = os.environ.get('TEMPLATE_DEBUG')

SECRET_KEY = os.environ.get('SECRET_KEY')

ALLOWED_HOSTS = ['rezolusoft.com', 'www.rezolusoft.com',]


STATIC_ROOT = os.path.join('/home/rezogsyk/rezolusoft/static/')
STATICFILES_STORAGE = 'whitenoise.storage.CompressedStaticFilesStorage'
