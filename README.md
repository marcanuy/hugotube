HugoTube - Responsive Bootstrap 4 Youtube-like theme
================================================================

[Hugo](https://gohugo.io) [theme](https://gohugo.io/themes/) based on
the [Youtube](https://youtube.com/) layout.

<https://marcanuy.github.io/hugotube/>.

![HugoTube Theme screenshot](https://raw.githubusercontent.com/marcanuy/hugotube/master/images/screenshot.png)

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [HugoTube - Responsive Bootstrap 4 Youtube-like theme](#hugotube---responsive-bootstrap-4-youtube-like-theme)
- [Customize styles for your website](#customize-styles-for-your-website)
- [Installation](#installation)
    - [Theme](#theme)
- [Developing Theme](#developing-theme)
    - [Bootstrap variables customization](#bootstrap-variables-customization)
    - [Updating Bootstrap](#updating-bootstrap)
    - [Deps](#deps)
    - [Build css](#build-css)

<!-- markdown-toc end -->

# Features

- Mobile design first with Bootstrap 4 grid
- Using Hugo pipes to generate one 
  - CSS file from SCSS
  - Javascript file from multiple JS
- Choose Share Buttons type
  - static https://sharingbuttons.io/
  - each site javascript share buttons (Google, Twitter and Facebook
    with counter)

# Customize styles for your website

If you want to change some styling to fit your own website needs, copy
the following files to your website root path and edit them:

- `assets/sass/custom_variables.scss`: customize variables used by Bootstrap.
- `assets/sass/styles.scss`: your main website styles with all
  Bootstrap variables avaiable.

# Installation

## Theme

Run the following commands inside your Hugo site folder:

    $ git clone https://github.com/marcanuy/hugotube.git themes/hugotube

Alternatively use git submodules in order to have a way to easily update the theme from the source in case you have your site in git as well.
For this run the following commands inside your Hugo site folder:

    $ git submodule add https://github.com/marcanuy/hugotube.git themes/hugotube

If you checkout your site from a repository which has this added as a submodule (e.g. if you are using CI to deploy), execute following commands or put them into a initgit.sh file in your repository which can be executed by your CI:

    $ git submodule init
    $ git submodule update

In order to update all the existing submodules from their upstreams, you can either go into each submodule root folder and do the normal git pull or execute following command:

    $ git submodule foreach git pull

# Developing Theme

## Bootstrap variables customization

In `assets/scss/custom_variables.scss` we can customize any Bootstrap
[variable](https://github.com/twbs/bootstrap/blob/v4-dev/scss/_variables.scss)
and then import the complete Bootstrap styles which will incorporate
our custom design:

Then use all Bootstrap variables theme's styles at
`assets/scss/styles.scss`.

More on Bootstrap 4 customization: <https://getbootstrap.com/docs/4.0/getting-started/theming/#variable-defaults>.

## Updating Bootstrap

Bootstrap is a `package.json` dependency, it can easily be updated
with `make update`.

## Deps

Run `make install` to install theme dependencies.

## Build css

Run `make build` to generate CSS styles and copy the necessary
Javascript libraries.
