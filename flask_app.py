from flask import Flask
from fetch_cards import fetch_card, arrange

app = Flask(__name__)

@app.route('/')
def fetched_card_endpoint():
    
    archetype = input("Enter an archetype: ").strip()
    detail_list = []

    if not archetype:
        print('Invalid Archetype')
        return "Invalid archetype! Try again"
    else:
        stored_cards = fetch_card(archetype)

        if stored_cards:
            card_details = arrange(stored_cards)

            for detail in card_details:
                detail_list.append(detail)

    return detail_list

if __name__ == '__main__':
    app.run(debug= True)