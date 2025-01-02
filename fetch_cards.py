import requests, os

archetype = input("Enter an archetype: ")

params = {
    "archetype": f"{archetype}"
}

response = requests.get('https://db.ygoprodeck.com/api/v7/cardinfo.php',params = params)

if response.status_code == 200:
    print("Connection was successful!")
else:
    print("Connection Failed!!!")
    print("Aborting...")

def fetch_card(fetched_response) -> list:
    return fetched_response.json()['data']

stored_cards = fetch_card(response)

def arrange(s):
    for dictionary in s:
        if 'atk' in dictionary:
            print(f"Name: {dictionary['name']},"
                  f"Atk: {dictionary['atk']}, "
                  f"Def: {dictionary['def']}, "
                  f"Type: {dictionary['type']}"
                  f"Img: {dictionary['card_images'][0]['image_url']}")
        else:
            print(f"{dictionary['name']}, "
                  f"Img: {dictionary['card_images'][0]['image_url']}")

    

if __name__ == "__main__":
    arrange(stored_cards)