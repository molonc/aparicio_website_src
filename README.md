# Aparicio Lab research website

The Aparicio Lab website is a Jekyll website based on the Bedford Lab's website ([bedford.io](http://bedford.io)). The Bedford Jekyll website contains a few nice features, one of which is a front page summarizing recent blog posts, papers, and projects. Projects are auto populated using a Ruby script from metadata extracted from the lab's Github repositories, and thus refer to software projects exclusively.

The Aparicio lab website is hosted on Azure.  An automated process pulls the latest changes from this repository (https://github.com/molonc/aparicio_website_src), hosts it in Azure and serves it at https://aparicio.molonc.ca

## Editing site

The site is built in a way that you can make a significant number of changes right here on Github!  To do so, simply navigate to the specific content page of your choosing, make the edits, then save and commit the edits.  You will need a GitHub account, so please contact Daniel Lai for access.

If you want to edit via web browser, simply navigate to the page and edit as follows: https://docs.github.com/en/github/managing-files-in-a-repository/editing-files-in-your-repository

### Homepage

* `aparicio_website_src/index.html`: The main page and layout
* `aparicio_website_src/misc/_posts/2017-08-08-home.md`: The blurb at the top of the home page
* `aparicio_website_src/_includes/themes/lab/default.html`: Header and footer

### Careers

* `aparicio_website_src/careers/index.html`: page and layout
* `aparicio_website_src/careers/_posts`: content.  `careers` and `benefits` are the header and footer of the page, rest are alumni stories and job openings.

### Research

* `aparicio_website_src/research/index.html`: page and layout
* `aparicio_website_src/research/_posts`: content, one big page, easily viewable and editable.
* `aparicio_website_src/research/images`: images

### Papers

* `aparicio_website_src/papers/index.html`: page and layout
* `aparicio_website_src/papers/_posts`: content per paper
* `aparicio_website_src/assets/images/papers`: thumbnails
* `aparicio_website_src/assets/pdfs/papers`: pdfs

### Teams

* `aparicio_website_src/team/index.html`: page and layout
* `aparicio_website_src/team/_posts`: content
* `aparicio_website_src/assets/images/team`: headshots

### Blog

* `aparicio_website_src/blog/index.html`: page and layout
* `aparicio_website_src/blog/_posts`: content

### Contact

* `aparicio_website_src/contact/index.html`: page and layout
* `aparicio_website_src/contact/_posts`: content
* `aparicio_website_src/assets/images/contact_page`: images

## Build site

To build the website locally, clone the repo with:

```
git clone --recurse-submodules https://github.com/molonc/aparicio_website_src.git
```

Then install necessary Ruby dependencies by running:

```
bundle install
```

from within the `aparicio_website_src` directory. If you do not have root permissions you may need to run:

```
bundle install --path vendor/bundle
```

After this, the site can be be built with:

```
bundle exec jekyll build
```

(If you are getting errors at this stage, it may be due to your version of `bundle`. Try `gem uninstall bundler` + `gem install bundler -v 1.13.1`.)

To view the site, run `bundle exec jekyll serve` and point a browser to `http://localhost:4000/`. More information on Jekyll can be found [here](http://jekyllrb.com/).

To include projects, preprocessing scripts are necessary to clone project repos and update Jekyll metadata. This can be accomplished with:

```
bundle exec ruby _scripts/update-and-preprocess.rb
```

> Note that you need to create a .netrc file to allow the ruby script to pull data using the github api.

Then `bundle exec jekyll build` works as normal.

In short, running `bundle install && bundle exec ruby _scripts/update-and-preprocess.rb && bundle exec jekyll serve` will do everything you need.


## Contribute

Blog posts just require YAML top matter that looks something like:

```
---
layout: post
title: Newton Institute presentation
author_handle: Trevor Bedford
link: http://www.newton.ac.uk/programmes/IDD/seminars/2013082213301.html
image: /images/blog/transmission.png
---
```

The `layout`, `title` and `author_handle` tags are required, while `link` and `image` tags are optional. Just save a Markdown file with this top matter as something like `blog/_posts/2013-08-27-newton-institute.md`, where `2013-08-27` is the date of the post and `newton-institute` is the short title. The `author_handle` tag on the blog post must match the `handle` tag in the `.md` file of the team member authoring the post (team member `.md` files can be found in `team/_posts`). This short title is used in the URL of the post, so this becomes `blog/newton-institute/`, so the short title should be long enough and unique enough not to cause conflicts with other posts.

## Adding a new publication

2021-09-02: Tested to work by Daniel, thanks to Milo!

Specific to the Aparicio Lab, for each new paper added

1) Find the relevant entry on Pubmed, note the numerical pubmed ID
    e.g.: https://www.ncbi.nlm.nih.gov/pubmed/29449679
2) Run `python _scripts/paperScraper.py`
    - Enter the PMID(s) you have found and `end` when finished
    - For each PMID, it will download a pubmed_results.xml + generate a `.md` file (e.g. 2017-11-28-29449679.md)
3) Move the `.md` file into `papers/_posts` with all the other ones
4) Create a image for the paper, its location needs to match the `image:` value in the newly created `.md` file:
    e.g. image: /assets/images/papers/29449679.jpg
5) Optionally, if you want a PDF, manually add the PDF line to the `.md` file anywhere in the header block:
    e.g. pdf: ./assets/pdfs/papers/29449679.pdf
    Ensure you download and insert the corresponding PDF into the specified location
6) If the local server's website looks okay, commit your changes and push to production

Known Issues:
- It really doesn't like paper without a standard author list, such as those with Consortiums as authors.  In these case, I comment out any lines in `_scripts/paperScraper.py` that refer to author, generate a partially complete `.md` file, and manually fill in the missing elements

## For more information

* Look over the [metadata format guide](http://bedford.io/guide/format/)
* Look over the [Markdown style guide](http://bedford.io/guide/style/)

## License

All source code in this repository, consisting of files with extensions `.html`, `.css`, `.less`, `.rb` or `.js`, is freely available under an MIT license, unless otherwise noted within a file.

**The MIT License (MIT)**

Copyright (c) 2013-2016 Trevor Bedford

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
