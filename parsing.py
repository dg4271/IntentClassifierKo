import json

with open("./data/dialog/dialog.json") as jsonFile, \
     open("./data/dialog/category_corpus.txt", 'w') as categoryFile, \
     open("./data/dialog/intent_corpus.txt", 'w') as intentFile, \
     open("./data/dialog/domain_corpus.txt", 'w') as domainFile:
    jsonData = json.load(jsonFile)

    for data in jsonData['DATA']:
        print(data['DOMAIN'])
        for category in data['CATEGORY']:
            print(category["category"])
            for main_intents in category['INTENT']:
                for intents in main_intents['INTENT']:
                    if 'question' in intents:
                        categoryFile.write(category['category'] +'\t'+ intents['question']+'\n')
                        intentFile.write(main_intents['MAIN_INTENT']+'\t'+intents['question']+'\n')
                        intentFile.write(data['DOMAIN']+'\t'+intents['question']+'\n')
                    #elif 'answer' in intents:
                    #    outputFile.write(category['category'] +'\t'+ intents['answer']+'\n')
        print()
    
    
