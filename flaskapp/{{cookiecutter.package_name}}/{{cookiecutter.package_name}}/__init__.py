# -*- coding: utf-8 -*-

"""
This is the documentation for paste.
"""

from flask import Flask, render_template
from flask_vite import Vite

from paste.vite import vite_template_kwargs

app = Flask(__name__)

app.config["ASSETS_ROOT"] = "http://localhost:3000/" if app.config["DEBUG"] else "/"


@app.route("/")
def index():
    return render_template("index.html.j2", **vite_template_kwargs())


vite = Vite(app)
