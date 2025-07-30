import time     
    
while True: 
    with open('meu_texto.txt', 'w') as arquivo:
        arquivo.write('EScrevendo no arquivo...')
    time.sleep(3)
    