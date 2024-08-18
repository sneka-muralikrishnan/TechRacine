from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        name = request.form.get('name')
        age = request.form.get('age')
        reason = request.form.get('reason')
        address = request.form.get('address')
        phone = request.form.get('phone')
        email = request.form.get('email')
        return render_template('index.html', name=name, age=age, reason=reason, address=address, phone=phone, email=email)
    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)
