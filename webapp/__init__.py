from flask import Flask, render_template
from webapp import utils as u

app = Flask(__name__)

from webapp import routes