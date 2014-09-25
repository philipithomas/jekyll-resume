# Jekyll Resume

## tl;dr

Paper resumes suck. This is a digital resume built in [Jekyll](http://jekyllrb.com) using [Google Web Starter Kit](https://github.com/google/web-starter-kit). See it live at [jekyll-resume.philipithomas.com](https://jekyll-resume.philipithomas.com).

Modify it to your needs and build the code in Ruby with:

```
    bundle install
    jekyll build
```

## Background

While in college searching for post-graduation job, I built myself a [digital resume in PHP that became popular](https://github.com/philipithomas/cv-philipithomas). It [looked cool](https://php-cv.herokuapp.com/), but was poorly executed.

Since then I try to build most basic sites in [Jekyll](http://jekyllrb.com), a static site generator written in Ruby. It has just enough features to be useful, but the generated sites are static.

There's a lot of [Bootstrap](http://getbootstrap.com/) code floating around, so I decided to try something a little different - Google's [Web Starter Kit](https://github.com/google/web-starter-kit).

## Design/Framework

This project loosely uses Google's [Web Starter Kit](https://github.com/google/web-starter-kit). I didn't do a good job of preserving the original code or making it maintainable, but it was fun to experiment with a different CSS framework.

The repo uses the [jekyll-assets project](https://github.com/ixti/jekyll-assets) to handle javascript and css. There is some custom scss in the `_assets/stylesheets/custom.scss` file. 

## Config

Configure the basic parts of the website, including the name and description, using the `_config.yml` file.

## Resume Sections

The resume has sections defined by the `_data/sections.yml` file. The name is the title of the section. The ID is a globally unique ID for the section that is used as a CSS id for the menu scroller. In addition, this specifies the name of the yml file in `_data` that the section pulls its data from. If you want to add or modify sections, this is the **core file for resume logic.** The layout specifies which layout in `_includes/resume/` to use for the section - it is loosely a "macro," but I should refactor the implementation to use a correct [Liquid](http://liquidmarkup.org/) macro.

Modify the data for each section in `_data/` using [YAML](http://www.yaml.org/start.html). The bullet sections support [Markdown](http://commonmark.org/) formatting, e.g. for links.

## Deployment

I deploy the files on [AWS S3](https://aws.amazon.com/s3/) using [CircleCI](https://circleci.com/) (with [Cloudflare as a CDN](https://cloudflare.com). It can also be easily hosted for free on [Github Pages](https://pages.github.com/). Note that the circle.yml and deploy.sh files are unnecessary for Github Pages.

## Next Steps

If you have changes to this repo, please [open an issue or a pull request](https://github.com/philipithomas/jekyll-resume). Read the post introducing the project [on my website](https://www.philipithomas.com/jekyll-resume/), and [follow me on twitter](https://twitter.com/philipithomas) or [join my mailing list](http://eepurl.com/VkZXf) to stay up-to-date with my latest projects.

