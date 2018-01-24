HugoTube - Responsive Bootstrap 4 Youtube-like theme
================================================================

[Hugo](https://gohugo.io) [theme](https://gohugo.io/themes/) based on
the [Youtube](https://youtube.com/) layout.

<https://marcanuy.github.io/hugotube/>.

![HugoTube Theme screenshot](https://raw.githubusercontent.com/marcanuy/hugotube/master/images/screenshot.png)

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [HugoTube - Responsive Bootstrap 4 Youtube like theme](#hugotube---responsive-bootstrap-4-youtube-like-theme)
- [Features](#features)
    - [Bootstrap variables customization](#bootstrap-variables-customization)
    - [updating Bootstrap](#updating-bootstrap)
- [Installation](#installation)
    - [Theme](#theme)
    - [Deps](#deps)
    - [Build css](#build-css)
- [References](#references)

<!-- markdown-toc end -->

# Features

## Bootstrap variables customization

Customization of Bootstrap variables can be done in two steps:

1. override variables:

> Every Sass variable in Bootstrap 4 includes the !default flag
> allowing you to override the variable’s default value in your own
> Sass without modifying Bootstrap’s source code. Copy and paste
> variables as needed, modify their values, and remove the !default
> flag. If a variable has already been assigned, then it won’t be
> re-assigned by the default values in Bootstrap.

In `src/style.scss` we can customize any Bootstrap
[variable](https://github.com/twbs/bootstrap/blob/v4-dev/scss/_variables.scss)
and then import the complete Bootstrap styles which will incorporate
our custom design:

	 // Your variable overrides
	 $body-bg: #000;
	 $body-color: #111;

	 // Bootstrap and its default variables
	 @import "../node_modules/bootstrap/scss/bootstrap";

2. Regenerate stylesheet:

The above file will be processed with `node-sass` and generate
`static/css/style.css` after executing the `make build` recipe.

More on Bootstrap 4 customization: <https://getbootstrap.com/docs/4.0/getting-started/theming/#variable-defaults>.

## updating Bootstrap

Bootstrap is a `package.json` dependency, it can easily be updated
with `make update`.

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

## Deps

Run `make install` to install theme dependencies. That will run `yarn install` (or `npm install`).

## Build css

Run `make build` to generate CSS styles and copy the necessary
Javascript libraries.

# References

- [Bootstrap docs](https://getbootstrap.com/docs/4.0/)
- [Hugo docs](https://gohugo.io/)
- Installation instruction taken from [Hugo dimension theme](https://themes.gohugo.io/dimension)
