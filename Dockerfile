FROM davorg/perl-app-aphra:latest

WORKDIR /perlwebadvice

EXPOSE 7007

CMD http_this docs
