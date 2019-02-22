from webapp import app, render_template
from webapp import models as m

# @app.template_filter('avg')
# def avg_student_filter(userId):
#     pass

@app.template_filter('cap')
def cap_filter(txt):
    return txt.upper()

@app.route('/')
@app.route('/home')
def index():
    
    # recuperation des donnees
    users = m.query_db("SELECT * FROM users ORDER BY `name`")

    return render_template('index.html', users=users)