import requests, os

def fetch_card(archetype) -> list:
    params = {
        'archetype': f'{archetype}'
    }

    API_URL = 'https://db.ygoprodeck.com/api/v7/cardinfo.php'

    response = requests.get(API_URL,params=params)

    if response.status_code == 200:
        print('Connection was successful')
        return response.json().get('data',[])
    else:
        print(f'Connection failed!!! (Status code: {response.status_code})')
        return []

def arrange(cards):
    result = []

    for card in cards:
        card_name = card.get('name','Unknown') 
        card_atk = card.get('atk','N/A')
        card_def = card.get('def','N/A')
        card_type = card.get('type','Unknown')
        img_url = card.get('card_images',[{}])[0].get('image_url','Unavailable')

        formatted_card =  (f"Name: {card_name}\n"
                           f"Attack: {card_atk}\n"
                           f"Defence: {card_def}\n"
                           f"Type: {card_type}\n"
                           f"Image_Url: {img_url}\n")
        result.append(formatted_card)

    return result

if __name__ == "__main__":
    archetype = input("Enter an archetype: ").strip()
    
    if not archetype:
        print("Invalid archetype! Try again")
    else:
        stored_cards = fetch_card(archetype)

        if stored_cards:
            card_details = arrange(stored_cards)

            for detail in card_details:
                print(detail)