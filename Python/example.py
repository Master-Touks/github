import requests
import csv

api_key = "5d906eee4e19761e90592cbee213672338dd3544"

url = "https://api.hunter.io/v2/email-finder"

params = {
    "api_key": api_key,
    "first_name": "first_name",
    "last_name": "last_name",
    "company": "Company",
}

response = requests.get(url, params=params)

print(response.url)

data = response.json()
print(data)
print(data["data"] ["email"])
