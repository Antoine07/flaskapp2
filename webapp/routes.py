from webapp import app, render_template
from webapp import models as m

@app.route('/')
@app.route('/home')
def index():
    
    # recuperation des donnees
    users = m.query_db("SELECT * FROM users ORDER BY `name`")

    return render_template('index.html', users=users)