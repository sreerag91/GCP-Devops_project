from flask import Flask
app = Flask(__name__)
app.run()
@app.route("/")
def hello():
    return "Hello World!"
