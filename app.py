from flask import Flask, jsonify, request
import sys
import os
import json

app = Flask(__name__)

@app.route('/')
def index():
    return "Welcome to the Scraped Data API!"

@app.route('/serve_data')
def serve_data():
    # Get the file and object from URL parameters
    file_name = request.args.get('file')
    data_object = request.args.get('data_object')

    if file_name and data_object:
        try:
            with open(f'data/{file_name}', 'r') as f:
                data = json.load(f)
                if 'headlines' in data:
                    headlines = data['headlines']
                    if data_object in headlines:
                        return jsonify({"data": data_object})
                    else:
                        return jsonify({"error": "Data object not found in file."})
                else:
                    return jsonify({"error": "Invalid file format."})
        except Exception as e:
            return jsonify({"error": f"Error processing file: {str(e)}"})
    else:
        return jsonify({"error": "Invalid parameters."})

if __name__ == '__main__':
    app.run(debug=True)
