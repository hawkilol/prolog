
#E12.1
def rev(s):
  REV = []
  for i in range(len(s)-1, -1, -1):
    REV.append(s[i])
  return REV

print('rev abcdef:',rev(list('abcdef')))

#E12.2
def reverse(s):
  REV = []
  for i in range(len(s)):
    REV = [s[i]] + REV
  return REV

print('rev abcdef:',reverse(list('abcdef'))) 
a = [1,2,3,4,5]

#E12.3

def reverse(s):
  if not(s == []):
    return reverse(s[1:]) + [s[0]]
  else: return []
print('rev abcdef:',reverse(list('abcdef')))

#E12.4
def palindromo(L):
  return L==L[::-1]

print('palindromo ovo:',palindromo(list('ovo'))) 
print(palindromo(list('12321')))
print(palindromo(list('123X21')))

#E12.5
def palindromo(L):
  return L==reverse(L)

print('palindromo ovo:',palindromo(list('ovo'))) 
print(palindromo(list('12321')))
print(palindromo(list('123X21')))

#E12.6

def palindromo(L):
  for i in range(len(L)//2):
    if not(L[i] == L[(len(L)-1)-i]):
        return False
  return True

print('palindromo ovo:',palindromo(list('ovo'))) 
print(palindromo(list('12321')))
print(palindromo(list('123X21')))

#E12.6B

def palindromo(L):
  
  return palindromoB(L,0,len(L)-1)

def palindromoB(L,i,f):
  if(i >= f):
    return True
  if(L[i]!= L[f]):
    return False
    
  return palindromoB(L,i+1,f-1)



print('palindromo ovo:',palindromo(list('ovo'))) 
print(palindromo(list('12321')))
print(palindromo(list('123X21')))

#E12.7
def fatorial(n):
  if (n<=1):
    return 1
  return fatorial(n-1) * n

n = 6
print("Fatorial de %d: " %n, fatorial(n))

#C12.1
#Uma função que chama ela mesma
#Que ela chama a si propria


#C12,2
#O caso recursivo retorna uma chamada a ela mesma,
#assim um retorno alimenta a chamada com o proximo retorno
#criando uma niveis de profundidade de retorno

#Enquanto o caso base, 
#é uma condição que caso verdade para o aumento da profundidade
#alimentando o ultimo de nivel de chamada com o retorno base.

def lst(h,l): return [h]+1
def head(l): h, *t=l; return h
def tail(l): h, *t=l; return t
def null(l): return l ==[]

def compr(L):
  if null(L): return 0
  else: return(1+compr(tail(L)));

def sum(L):
  if null(tail(L)): return head(L)
  else: return(head(L)+ sum(tail(L)));

def append(la,lb):
  if null(la): return lb
  else: return lst(head(la), append(tail(la),lb))
  
def member(x,L):
  if null(L):return 0
  if(head(L)) == x: return 1
  else: return member(x,tail(L))

def select(x,L):
  if(head(L) == x):return tail(L)
  else: return lst(head(L),select(x,tail(L)))
  
  
#test
def maxL(L):
  if null(tail(L)): return head(L)
  elif maxL(tail(L)) >  head(L): return maxL(tail(L))
  else: return head(L)

def reverse1(L):
  if null(L): return L
  else: return  reverse1(tail(L)) + [head(L)]

def rev(L): return revAcc(1, [])

def revAcc(L, acc):
  if null(L): return acc
  else: return (rev(tail(L), [head(L), acc]))

#######################; 
def maxAcc(L): return Acc = head(L): return maxAcc1(tail(L), Acc)

def maxAcc1(L, acc):
  if head(l)>acc: return maxAcc1(tail(L), head(L))
  else: return maxAcc1(tail(L), acc)
 
def particiona(L):
	if null(L): return [], []
	elif null(tail(L)):return L, []
	else:
	la, lb = particiona(tail(tail(L)))
	return lst(head(L), la), lst(head(tail(l)), lb)

def merge(la, lb):
	if null(la): return lb
	if null(lb): return la
	if head(la)< head(lb): return lst(head(la), merge(tail(la), lb)
	else: return [head(lb), merge(tail(la), lb)]
					  
					  
def mergeSort(L):
	if null(L): return []
	if null(tail(L)): return L
	a,b = particiona(L): return merge(mergeSort(a), mergeSort(b))
	
def dupl(L):
	if member(head(L), tail(L)): return true
	else: return dupl(tail(L))
					  
def remDupl(L):
	if member(head(L), tail(L)): return true, remove(L, tail(L))
	else: return dupl(tail(L))
					 
					  
def remDupl(L):
	if null(L): return []
	if member(head(L), tail(L)): return remDupl(tail(L))
	else return [head(L),(), tail(L)]
					  
					  
			

###################################################################################################
#E12.1
def rev(s):
  REV = []
  for i in range(len(s)-1, -1, -1):
    REV.append(s[i])
  return REV

print('rev abcdef:',rev(list('abcdef')))

#E12.2
def reverse(s):
  REV = []
  for i in range(len(s)):
    REV = [s[i]] + REV
  return REV

print('rev abcdef:',reverse(list('abcdef'))) 
a = [1,2,3,4,5]

#E12.3

def reverse(s):
  if not(s == []):
    return reverse(s[1:]) + [s[0]]
  else: return []
print('rev abcdef:',reverse(list('abcdef')))

#E12.4
def palindromo(L):
  return L==L[::-1]

print('palindromo ovo:',palindromo(list('ovo'))) 
print(palindromo(list('12321')))
print(palindromo(list('123X21')))

#E12.5
def palindromo(L):
  return L==reverse(L)

print('palindromo ovo:',palindromo(list('ovo'))) 
print(palindromo(list('12321')))
print(palindromo(list('123X21')))

#E12.6

def palindromo(L):
  for i in range(len(L)//2):
    if not(L[i] == L[(len(L)-1)-i]):
        return False
  return True

print('palindromo ovo:',palindromo(list('ovo'))) 
print(palindromo(list('12321')))
print(palindromo(list('123X21')))

#E12.6B

def palindromo(L):
  
  return palindromoB(L,0,len(L)-1)

def palindromoB(L,i,f):
  if(i >= f):
    return True
  if(L[i]!= L[f]):
    return False
    
  return palindromoB(L,i+1,f-1)



print('palindromo ovo:',palindromo(list('ovo'))) 
print(palindromo(list('12321')))
print(palindromo(list('123X21')))

#E12.7
def fatorial(n):
  if (n<=1):
    return 1
  return fatorial(n-1) * n

n = 6
print("Fatorial de %d: " %n, fatorial(n))

#C12.1
#Uma função que chama ela mesma
#Que ela chama a si propria


#C12,2
#O caso recursivo retorna uma chamada a ela mesma,
#assim um retorno alimenta a chamada com o proximo retorno
#criando uma niveis de profundidade de retorno

#Enquanto o caso base, 
#é uma condição que caso verdade para o aumento da profundidade
#alimentando o ultimo de nivel de chamada com o retorno base.

def lst(h,l): return [h]+1
def head(l): h, *t=l; return h
def tail(l): h, *t=l; return t
def null(l): return l ==[]

def compr(L):
  if null(L): return 0
  else: return(1+compr(tail(L)));

def sum(L):
  if null(tail(L)): return head(L)
  else: return(head(L)+ sum(tail(L)));

def append(la,lb):
  if null(la): return lb
  else: return lst(head(la), append(tail(la),lb))

#maxL

def member(x,L):
  if null(L):return 0
  if(head(L)) == x: return 1
  else: return member(x,tail(L))

def select(x,L):
  if(head(L) == x):return tail(L)
  else: return lst(head(L),select(x,tail(L)))



l=[1,5,7,9]
print(select(5,l))

print(tail(tail(tail(l))))

l=[1,5,9]
l1=[tail(tail(l)), head(tail(l)), head(l)]
print('\n[1,5,9] invertida:')
print(l1)

l=[1,5,1,5,8]

l1 = tail(l[:-1])
print(l[:-1])

from _typeshed import TraceFunction
# list ja existe: então usamos lst()
# daqui em diante usar só estas 4 primitivas 
def lst(h,l): return [h]+l 
def head(l): h,*t=l; return h
def tail(l): h,*t=l; return t
def null(l): return l==[]
'''
1. Seja a lista l=[1,5,7,9]. imprima  o 3ro elemento:
Resolução:
'''
l=[1,5,7,9]
print('o 3ro elemento de [1,5,7,9]:') 
print(head(tail(tail(l))))

'''
2. Seja a lista l=[1,5,7,9] imprima o 2do elemento '''

print(head(tail(l)))

'''
3. Seja a lista l=[1,5,7,9] imprima o 4to elemento '''

print(head(tail(tail(tail(l)))))

'''
3. Seja a lista l=[1,5] a partir dela recria uma lista em
ordem inversa, imprima a lista recriada. '''
l=[1,5]
l1=[head(tail(l)), head(l)]
print('\n[1,5] invertida:')
print(l1) 

'''
4. Seja a lista l=[1,5,9] a partir dela recria uma lista em
ordem inversa, imprima a lista recriada. '''
l=[1,5,9]
l1=[head(tail(tail(l))), head(tail(l)), head(l)]
print('\n[1,5,9] invertida:')
print(l1) 
'''
5. Seja a lista l=[1,5,9,8] a partir dela recrie uma lista trocando o primeiro
pelo ultimo elemento, imprima a lista recriada. '''
l=[1,5,9,8]
l1 = tail(l)+ [head(l)]
print(l1)
'''
6. Seja a lista l=[1,5,9,8] a partir dela recrie uma lista sem o 1ro elemento,
imprima a lista recriada. '''
l=[1,5,9,8]
l1 = tail(l)
print(l1)

'''
7. Seja a lista l=[1,5,9,8] a partir dela recrie uma lista sem o segundo elemento,
imprima a lista recriada. '''

l=[1,5,9,8]
l1 = [head(l)] + tail(tail(l))
print(l1)

'''
8. Seja a lista l=[1,5,9,8] a partir dela recrie uma lista sem o ultimo elemento,
imprima a lista recriada. '''
l=[1,5,9,8]
l1 = [head(l)] + [head(tail(l))] + [head(tail(tail(l)))]
print(l1)

#Ou
#l1 = l[:-1]
#print(l1)

'''
9. Seja a lista l=[1,5] a partir dela recrie a lista [1,1,1,5,5]
imprima a lista recriada. '''

l=[1,5]
l1 = [head(l)]*3 + tail(l)*2
print(l1)


'''
10. Seja a lista l=[1,5,1,5,8] a partir dela recrie uma lista sem elementos duplicados,
imprima a lista recriada. '''

# def member(x,L):
#   if null(L):return 0
#   if(head(L)) == x: return 1
#   else: return member(x,tail(L))

# def remDupl(x,L):
#   if null(L):return 0
#   if(member(head(L))): return 1

def dupl(L):
  if L == []: return False
  if member(head(l), tail(L)): return True
  return dupl(tail(L))

l=[1,5,1,5,8]

l1 = tail(tail(l))
print(l1)

def dupl(L):
  if L == []: return False
  if member(head(l), tail(L)): return True
  return dupl(tail(L))
  
def remDupl(L):
  if L == []: return []
  if member(head(L), tail(L)): return remDupl(tail(L))
  return [head(L), remDupl(tail(L))]


def remDupl2(L):
  if L == []: return []
  if member(head(L), tail(L)): return remDupl2([head(L), select(head(L), tail(L))])
  return [head(L), remDupl(tail((L)))]

def remove(x, L):
  if L==[]: return []
  if x==head(l): return remove(x,tail(L))
  else: return [head(L), remove(x, tail(L))]

def palindrome(L):
  return;

def trocaPU(L):
  u=ultimo(L) 
  p=head(L)
  return append([u,remult(L)], [p])

def remult(L):
  return [];

def zipper(la, lb):
  if la ==[]: return []
  return [(head(la), head(lb)), zipper(tail(la), tail(lb))]

def unzipper(l):
  if null(l): return [], []
  else:
    h1, h2=head(l)
    a, b = unzipper(tail(l))
    return [h1, a] , [h2,b]

def insOrd(x,l):
  if l==[]: return [x]
  if x<head(l): return [x,l]
  return [head(l), insOrd(x,tail(l))]

def insDir(l): return insDir2(l,[])

def insDir2(l, acc):
  if l == []: return acc
  return insDir2 (tail(l), insOrd(head(l), acc))

def selDir(l): return selDir2(l,[])

def selDir2(l, acc):
  if l == []: return acc
  
  return selDir2( select(max(l),l), [max(l), acc])
					  
