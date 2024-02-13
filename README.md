# Perl Web Advice
A website containing advice for people writing web applications in Perl.

See [web.perlhacks.com](http://web.perlhacks.com/).

## Development environment

This web site is developed using a static sitebuilder called
[`aphra`](https://metacpan.org/dist/App-Aphra/view/bin/aphra). In order
to contribute to the site, you'll need to have `aphra` installed.

### Install dependencies

There are two important dependencies for installing `aphra` - `pandoc`
and `http_this`.

* `pandoc` is a tool for converting between various document formats. We use it for converting between Markdown and HTML. If you're working on Linux, there is almost certainly a pre-build package that you can install with a command like `dnf install pandoc` or `apt install pandoc`. On other operating systems, you should see the [`pandoc` web site`](https://pandoc.org/)
* `http_this` is a mini web server that you can use to view changes to the web site before pushing them to GitHub and deploying them to the live version web site. It is a CPAN module so you can install it using you favourite CPAN installation tool - for example, `cpanm App::HTTPThis`.

### Install `aphra`

`aphra` is also a CPAN module. So you can install it using a command like `cpanm App::Aphra`.

## Working on the site

The usual way to work on the code is to create a fork and work on that. You can then
send your changes back to us by creating a pull request.

### Fork and clone the source code

The main copy of the source code is at https://github.com/davorg/perlwebadvice.
Near the top right of that web page is a button labelled "Fork". If you press
that button, GitHub will create your own copy of the source code under your
GitHub account. You can make a local copy of your repo by clicking the big
green "Clone" button and copying the URL of your repo. You then open a
command-line terminal and type:

* `git clone [YOUR URL HERE]`

This will create a new directory called `perlwebadvice` containing a copy
of the source code.

### Understanding the source code

There are three important directories in the source code tree.

* `in` contains the actual pages that make up the web site. Each file under this directory will be copied to the live web site. If the filename ends with `.tt` it will be processed with the [Template Toolkit](https://metacpan.org/pod/Template::Toolkit) before being copied to the output directory (which is called `docs`). Any files that don't end with `.tt` are just copied over.
* `fragments` contains small sections of web pages that are inserted into the main web pages in `in`.
* `layouts` contains layout templates that are used to control the look and feel of the web pages.

### Testing your changes

Once you've made some changes, you'll (hopefully) want to test your changes
before sending them back to us. This is a two-stage process:

1. Run `aphra build`. 
This builds the site and puts a copy of the new version into the `docs` directory.
2. Run `aphra server`. 
This runs a local web server allowing you to visit a local copy of the web site at http://localhost:7007/.

### Submitting your changes

Once you're happy that your changes do what you want (and don't break anything)
you can submit them back to the main repo for incorporation into the live site.

To do this, you need to run `git add` to add any files you've added or changed
and then `git commit` to commit your changes (this will give you an opportunity
to provide a description of the changes you've made - please make that
description useful). You can then run `git push` to send the changes back to
your copy of the code on GitHub.

You can then go to the web page at:

* https://github.com/davorg/perlwebadvice/compare

to create a pull request. Leave the "base repository" dropdown as it is and
select your repo from the "head repository" link. The page will then show
your changes and (when you're happy you're submitting what you want to
submit) you can submit the pull request. Some time later, we'll look at your
pull request and either accept it or reply with suggestions for improvements.
