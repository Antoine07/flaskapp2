from webapp import app, render_template

@app.route('/')
@app.route('/home')
def index():
    
    return "Hello World !"