from flask import Flask, Response
import json

app = Flask(__name__)


@app.route('/')
def index():
    return redirect(url_for('test'))


@app.route('/test', methods=['GET'])
def test_endpoint():
    response = {'status': 'OK'}
    return Response(json.dumps(response), mimetype='application/json') 

if __name__ == '__main__':
    app.run()