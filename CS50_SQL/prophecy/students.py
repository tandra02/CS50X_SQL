import csv
from cs50 import SQL


def create_student(name, students):
    students.append({"student_name": name})
    

def create_house(house, houses, head):
    exist = False
    for h in houses:
        # If the key matches
        if h["house_name"] == house:
            exist = True
            break
    if not exist:
        # Appending house and their head in houses list
        houses.append({"house_name": house, "head": head})


def create_relationship(name, house, relationships):
    relationships.append({"student_name": name, "house_name": house})

# Storing the databse
dbase = SQL("sqlite:///roster.db")

students = []
houses = []
relationships = []

with open("students.csv", "r") as student_file:
    reader = csv.DictReader(student_file)
    for row in reader:
        name = row['student_name']
        house = row['house']
        head = row['head']

        create_house(house, houses, head)
        create_student(name, students)
        create_relationship(name, house, relationships)


for s in students:
    dbase.execute("INSERT INTO hogwarts_students (student_name) VALUES (?)", s["student_name"])

for h in houses:
    dbase.execute("INSERT INTO hogwarts_houses (house, head) VALUES (?,?)", h["house_name"], h["head"])


for r in relationships:
    dbase.execute("INSERT INTO relationship (student_name, house) VALUES (?,?)", r["student_name"], r["house_name"])
