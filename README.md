# Joyce's Recipes

<https://joycesrecipes.net>

## Creating the PDFs

The `convert-pdf.sh` script uses [Pandoc](https://pandoc.org/) to convert the Markdown files in `content/recipes` into
PDFs. Each recipe page on the website contains a link to the corresponding PDF. This is not part of the `hugo build`
process that builds the HTML pages, hence the need for the script.

## Building the site

```shell
$ hugo build
```

## Caching search results

```shell
$ pagefind --site public
```

## Publishing changes

```shell
$ aws s3 sync public s3://joyces-recipes
```

Rebuild the project in AWS Amplify.
