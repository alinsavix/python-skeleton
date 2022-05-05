.. These are examples of badges you could add:

```
    .. image:: https://api.cirrus-ci.com/github/<USER>/pkgname.svg?branch=main
        :alt: Built Status
        :target: https://cirrus-ci.com/github/<USER>/pkgname
    .. image:: https://readthedocs.org/projects/pkgname/badge/?version=latest
        :alt: ReadTheDocs
        :target: https://pkgname.readthedocs.io/en/stable/
    .. image:: https://img.shields.io/coveralls/github/<USER>/pkgname/main.svg
        :alt: Coveralls
        :target: https://coveralls.io/r/<USER>/pkgname
    .. image:: https://img.shields.io/pypi/v/pkgname.svg
        :alt: PyPI-Server
        :target: https://pypi.org/project/pkgname/
    .. image:: https://img.shields.io/conda/vn/conda-forge/pkgname.svg
        :alt: Conda-Forge
        :target: https://anaconda.org/conda-forge/pkgname
    .. image:: https://pepy.tech/badge/pkgname/month
        :alt: Monthly Downloads
        :target: https://pepy.tech/project/pkgname
    .. image:: https://img.shields.io/twitter/url/http/shields.io.svg?style=social&label=Twitter
        :alt: Twitter
        :target: https://twitter.com/alinsa
```

# pkgname

a short description of pkgname

A longer description of your project goes here...


# Making Changes & Contributing
This project uses `pre-commit`, please make sure to install it before making any changes:

```bash
    pip install pre-commit
    cd pkgname
    pre-commit install
```

It is a good idea to update the hooks to the latest version::

```bash
    pre-commit autoupdate
```

# Note

More stuff goes here
