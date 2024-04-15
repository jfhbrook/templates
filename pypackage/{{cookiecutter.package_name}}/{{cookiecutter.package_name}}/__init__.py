# -*- coding: utf-8 -*-

"""
This is the documentation for {{cookiecutter.package_name}}.
"""
{% if cookiecutter.use_click == "y" %}
import click


@click.command()
def main():
    click.echo("hello world!")


if __name__ == "__main__":
    main()
{% endif %}
