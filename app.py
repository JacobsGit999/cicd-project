from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Day 15 CI/CD AUTO DEPLOY WORKING"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
