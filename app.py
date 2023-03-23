from flask import Flask, request
from api.index import search
app = Flask(__name__)


app.route('/search')(search)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)
