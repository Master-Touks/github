import requests
import csv

api_key = "5d906eee4e19761e90592cbee213672338dd3544"

url = "https://api.hunter.io/v2/email-finder"
url2 = "https://api.hunter.io/v2/email-verifier"

filepath = "../../leads.csv"
reader = csv.DictReader(open(filepath))

for row in reader:
    first_name = row["Prénom"]
    last_name = row["Nom"]
    Company = row["Entreprise"]
    params = {
        "api_key": api_key,
        "first_name": first_name,
        "last_name": last_name,
        "company": Company,
    }

    response = requests.get(url, params=params)
    print(response.url)
    data = response.json()
    email = data["data"]["email"]
    print(email)
    params2 = {

        "api_key": api_key,
        "email": email,

    }
    response2 = requests.get(url2, params=params2)
    data2 = response2.json()
    disposable = data2.get("data", {}).get("disposable", "")
    print(disposable)
    print()
