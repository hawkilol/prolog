
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
