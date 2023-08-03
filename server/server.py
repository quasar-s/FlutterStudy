from flask import Flask,request,jsonify
import openai



OPENAI_API_KEY = "";

openai.api_key = OPENAI_API_KEY
que = ""


modell = "gpt-3.5-turbo"

# query = "2023년 6월 12일부터 2023년 6월 15일까지 친구 한 명과 함께 가는 {0} 여행 일정 세워줘.".format(que)

# messages = [
#     {"role": "system", "content": "You are a helpful assistant"},
#     {"role": "user", "content": query}
# ]

# response = openai.ChatCompletion.create(
#     model = modell,
#     messages = messages
# )
# answer = response['choices'][0]['message']['content']
# print(answer)




d={}
que =""
app = Flask(__name__)



@app.route('/api',methods=['GET'])
def hello_world():
    
    d['Query'] = str(request.args['Query'])
    print(d['Query']+'plz')
    que=d['Query']

    query = "2023년 6월 12일부터 2023년 6월 15일까지 친구 한 명과 함께 가는 {0} 여행 일정 세워줘.".format(que)

    messages = [
        {"role": "system", "content": "You are a helpful assistant"},
        {"role": "user", "content": query}
    ]

    response = openai.ChatCompletion.create(
        model = modell,
        messages = messages
    )
    answer = response['choices'][0]['message']['content']
    print(answer)


    return jsonify(d)

if __name__ == '__main__':
    
    app.run()


