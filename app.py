from flask import Flask

# Create a Flask application instance
app = Flask(__name__)

# Home route
@app.route('/')
def home():
    return "Welcome to my DevOps Project!"

# Run the app
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug=True)
