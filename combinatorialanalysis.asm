li $s0, 1			# armazena as opï¿½ï¿½es para escolha de forma geomï¿½trica
li $s1, 2
li $s2, 3
li $s3, 4
li $s4, 5

#Menu\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
li $v0, 4
la $a0, string1  		
syscall

li $v0, 4
la $a0, string5
syscall

li $v0, 5			# lï¿½ a escolha da forma
syscall				# invoca o sistema operacional

or $t0, $zero, $v0		# armazena escolha em $t0

beq $t0, $s0, Permutação	# verifica qual ï¿½ a escolha
nop				# e pula para de terminado ponto
beq $t0, $s1, Arranjo		# de acordo com a opï¿½ï¿½o escolhida
nop
beq $t0, $s2, Combinação
nop
beq $t0, $s3, Quest
nop
beq $t0, $s0, fim2	
nop			
#FimDoMenu\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


#QUESTIONARIO#\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
Quest: 
li $v0, 4
la $a0, string2 		
syscall

li $v0, 5			
syscall

or $t0, $zero, $v0
beq $t0, $s0, Permutação
nop

beq $t0, $s1, Quest2
nop

li $v0, 4
la $a0, string5 		
syscall

j Quest
nop

Quest2:
li $v0, 4
la $a0, string3
syscall

li $v0, 5	
syscall

or $t0, $zero, $v0
beq $t0, $s0, Arranjo
nop
beq $t0, $s1, Combinação
nop
li $v0, 4
la $a0, string5 		
syscall
j Quest2
nop
#QUESTIONARIO#\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


#PERMUTAï¿½ï¿½O#\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
Permutação:		
li $v0, 4
la $a0, string13
syscall
	
li $v0, 4
la $a0, string6 		
syscall

li $v0, 5			
syscall

move $t1, $v0

li $v0, 4
la $a0, string4
syscall

li $v0, 5	
syscall

or $t0, $zero, $v0
beq $t0, $s0, PermRep
nop
j PermSemRep
nop

#PERMUTAï¿½ï¿½O COM REPETIï¿½ï¿½O#\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
PermRep:

jal p1
nop

j fim
nop


#PERMUTAï¿½ï¿½O COM REPETIï¿½ï¿½O#\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

#PERMUTAï¿½ï¿½O SEM REPETIï¿½ï¿½O#\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
PermSemRep:
jal p2
nop

j fim
nop
#PERMUTAï¿½ï¿½O SEM REPETIï¿½ï¿½O#\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

#PERMUTAï¿½ï¿½O#\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\



#\\\\\\\\\\\\\\\\\ARRANJO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
Arranjo:
li $v0, 4
la $a0, string10 		
syscall

li $v0, 4
la $a0, string6 		
syscall

li $v0, 5
syscall

move $t1, $v0

li $v0, 4
la $a0, string14 		
syscall

li $v0, 5
syscall

move $t2, $v0

li $v0, 4
la $a0, string4
syscall

li $v0, 5	
syscall

move $t3, $t1
or $t0, $zero, $v0
beq $t0, $s0, ArrRep
nop
j ArrSemRep
nop

#\\\\\\\\\\\ARRANJO SEM REPETIï¿½ï¿½O\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
ArrSemRep:
jal a1
nop

j fim
nop
#\\\\\\\\\\\ARRANJO SEM REPETIï¿½ï¿½O\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

#\\\\\\\\\\\ARRANJO COM REPETIï¿½ï¿½O\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
ArrRep:
jal a2
nop

j fim
nop
#\\\\\\\\\\\ARRANJO COM REPETIï¿½ï¿½O\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

#\\\\\\\\\\\\\\\\\ARRANJO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

#\\\\\\\\\\\\COMBINAï¿½AO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
Combinação:			
nop
li $v0, 4
la $a0, string11 		
syscall

li $v0, 4
la $a0, string6 		
syscall

li $v0, 5
syscall

move $t1, $v0

li $v0, 4
la $a0, string14 		
syscall

li $v0, 5
syscall

move $t2, $v0

li $v0, 4
la $a0, string4
syscall

li $v0, 5	
syscall

move $t3, $t1
or $t0, $zero, $v0
beq $t0, $s0, CombRep
nop
j CombSemRep
nop

#\\\\\\\\\\\COMBINAï¿½ï¿½O SEM REPETIï¿½ï¿½O\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
CombSemRep:
jal c1
nop

j fim
nop
#\\\\\\\\\\\COMBINAï¿½ï¿½O SEM REPETIï¿½ï¿½O\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

#\\\\\\\\\\\COMBINAï¿½ï¿½O COM REPETIï¿½ï¿½O\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
CombRep:

jal c2
nop

j fim
nop
#\\\\\\\\\\\COMBINAï¿½ï¿½O COm REPETIï¿½ï¿½O\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\



#\\\\\\\\\\\COMBINAï¿½AO\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

fim:
li $v0, 4
la $a0, string12
syscall

li $v0, 1
move $a0, $t1
syscall
nop

li $v0, 10
syscall

fim2:
li $v0, 4
la $a0, string5
syscall

li $v0, 10
syscall

#\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\




#\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\FATORIAL\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
fat:
beq $a0, $s5, fatfim
nop
mult $a1, $a0
mflo $a1
addi $a0, $a0, -1
j fat
nop
fatfim:
move $v0, $a1
jr $ra
nop

p1:
move $t9, $ra
li $v0, 4
la $a0, string7
syscall

li $v0, 4
la $a0, string8
syscall

li $v0, 5	
syscall

move $t2, $v0

li $v0, 4
la $a0, string9
syscall

li $v0, 5	
syscall

or $t0, $v0, $zero
beq $t0, $s0, r2
nop
j r4
nop

r2:
li $v0, 4
la $a0, string8
syscall

li $v0, 5	
syscall

move $t3, $v0

li $v0, 4
la $a0, string9
syscall

li $v0, 5	
syscall

or $t0, $v0, $zero
beq $t0, $s0, r3
nop
j r4
nop

r3:
li $v0, 4
la $a0, string8
syscall

li $v0, 5	
syscall

move $t4, $v0

r4:
move $a0, $t1
li $a1, 1
jal fat
nop
move $t1, $v0

move $a0, $t2
li $a1, 1
jal fat
nop
move $t2, $v0

beq $s5, $t3, prox
move $a0, $t3
li $a1, 1
jal fat
nop
move $t3, $v0

beq $s5, $t4, prox2
nop
li $a1, 1
move $a0, $t4
jal fat
nop
move $t4, $v0

add $t2, $t4, $t2
add $t2, $t2, $t3
div $t1, $t2
mflo $t1
jr $t6
nop

prox:
div $t1, $t2
mflo $t1
jr $t6
nop

prox2:
add $t2, $t3, $t2
div $t1, $t2
mflo $t1
jr $t6
nop

p2:
move $t6, $ra
move $a0, $t1
li $a1, 1
jal fat
nop

move $t1, $v0
jr $t6
nop

a1:
move $t6, $ra
sub $t2, $t1, $t2

move $a0, $t1
li $a1, 1
jal fat
nop
move $t1, $v0

move $a0, $t2
li $a1, 1
jal fat
nop
move $t2, $v0

div $t1, $t2
mflo $t1
jr $t6
nop

c1:
move $t6, $ra
sub $t3, $t1, $t2

move $a0, $t1
li $a1, 1
jal fat
nop
move $t1, $v0

move $a0, $t2
li $a1, 1
jal fat
nop
move $t2, $v0

move $a0, $t3
li $a1, 1
jal fat
nop
move $t3, $v0

mult $t2, $t3
mflo $t2
div $t1, $t2
mflo $t1

jr $t5
nop

c2:
move $t6, $ra

addi $t3, $t1, -1
add $t1, $t3, $t2

move $a0, $t1
li $a1, 1
jal fat
nop
move $t1, $v0

move $a0, $t2
li $a1, 1
jal fat
nop
move $t2, $v0

move $a0, $t3
li $a1, 1
jal fat
nop
move $t3, $v0

mult $t2, $t3
mflo $t2
div $t1, $t2
mflo $t1
jr $t6
nop

a2:
beq $s0, $t2, a3
mult $t1, $t3
mflo $t1
addi $t2, $t2, -1
j ArrRep
nop

a3: 
jr $ra
nop
#\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\FATORIAL\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

.data
	string1: .asciiz "Calculadora de anï¿½lise combinatï¿½ria. \nEscolha uma opï¿½ï¿½o:\n1.Permutaï¿½ï¿½o\n2.Arranjo\n3.Combinaï¿½ï¿½o\n4.Nï¿½o sei\n5.Sair\n"
	string2: .asciiz "O numero de objetos ï¿½ igual ao nï¿½mero de posiï¿½ï¿½es? "
	string3: .asciiz "A ordem importa? "
	string4: .asciiz "Hï¿½ repetiï¿½ï¿½es? "
	string5: .asciiz "Depois de escolhida a opï¿½ï¿½o responda todas as perguntas com 1 para sim e 2 para nï¿½o\n"
	string6: .asciiz "Digite o nï¿½mero de elementos: "
	string7: .asciiz "Vocï¿½ pode fazer permutaï¿½ï¿½o em que atï¿½ 3 nï¿½meros se repetem. Se o nï¿½mero 3 se repetir 5 vezes, o nï¿½mero utilizado na conta ï¿½ o 5, por exemplo.\n"
	string8: .asciiz "Digite quantas vezes o prï¿½ximo nï¿½mero que se repete aparece: \n"
	string9: .asciiz "Mais algum nï¿½mero se repete?\n"
	string10: .asciiz "ARRANJO\n"
	string11: .asciiz "COMBINAï¿½ï¿½O\n"
	string12: .asciiz "O resultado ï¿½: "
	string13: .asciiz "PERMUTAï¿½ï¿½O\n"
	string14: .asciiz "Digite o nï¿½mero de agrupamentos: "
