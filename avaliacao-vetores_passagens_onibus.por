programa
{
	inclua biblioteca Texto --> tx
	inclua biblioteca Util --> u

	caracter continua = 's'
	real valorPassagem
	inteiro opcao = 0, capacidade = 40, contadorCanc = 0, contadorRes = 0
	cadeia poltrona[40], poltronaRes[40]
	
	funcao inicio()
	{ // início da função início
		
		Destino()

		numOnibus()

		Valor()

		numPassagem()

		faca{
			limpa()
			escreva("GESTÃO DE VENDAS DE PASSAGENS\n")
			
			Menu()
			
		}enquanto(continua == 's')
		
	} // fim da função início

	funcao Destino() { // início da função Destino
		limpa() // Limpa a tela do console
		escreva("Escolha o destino da viagem (de 1 a 4):\n")
		escreva("\n1 - Catimbó do Norte")
		escreva("\n2 - Catimbó do Sul")
		escreva("\n3 - Catimbó do Leste")
		escreva("\n4 - Catimbó do Oeste\n")
		inteiro dest = 0
		leia(dest) // Variável que recebe o código do destino.

			se(dest == 1){
				escreva("Cidade de destino: Catimbó do Norte")
			}senao se(dest == 2){
				escreva("Cidade de destino: Catimbó do Sul")
			}senao se(dest == 3){
				escreva("Cidade de destino: Catimbó do Leste")
			}senao se(dest == 4){
				escreva("Cidade de destino: Catimbó do Oeste\n\n")
			}

		escreva("\nDestino ", dest, " adicionado com sucesso\n")

		u.aguarde(5000)

		limpa()
		
	} // fim da função Destino

	funcao numOnibus(){ // início da função NumOnibus 


		limpa() // Limpa a tela do console

		escreva("Escolha o número do ônibus:\n")
		escreva("Número 1000 para Catimbó do Norte às 8 horas\n")
		escreva("Número 1010 para Catimbó do Norte às 12 horas\n")
		escreva("Número 1100 para Catimbó do Sul às 9 horas\n")
		escreva("Número 1110 para Catimbó do Sul às 13 horas\n")
		escreva("Número 1200 para Catimbó do Leste às 10 horas\n")
		escreva("Número 1210 para Catimbó do Leste às 14 horas\n")
		escreva("Número 1300 para Catimbó do Oeste às 11 horas\n")
		escreva("Número 1310 para Catimbó do Oeste às 15 horas\n")
		inteiro num = 0
		leia(num) // Variável que recebe o código do número do ônibus

			se(num == 1000){
				escreva("Ônibus nº 1000 para Catimbó do Norte às 8 horas")
			}senao se(num == 1010){
				escreva("Ônibus nº 1010 para Catimbó do Norte às 12 horas")
			}senao se(num == 1100){
				escreva("Ônibus nº 1100 para Catimbó do Sul às 9 horas")
			}senao se(num == 1110){
				escreva("Ônibus nº 1110 para Catimbó do Sul às 13 horas")
			}senao se(num == 1200){
				escreva("Ônibus nº 1200 para Catimbó do Leste às 10 horas")
			}senao se(num == 1210){
				escreva("Ônibus nº 1210 para Catimbó do Leste às 14 horas")
			}senao se(num == 1300){
				escreva("Ônibus nº 1300 para Catimbó do Oeste às 11 horas")
			}senao se(num == 1310){
				escreva("Ônibus nº 1310 para Catimbó do Oeste às 15 horas")
			}

		escreva("\nÔnibus número ", num, " adicionado com sucesso\n")

		u.aguarde(5000)

		limpa()
		
	} // fim da função NumOnibus


	funcao Valor() { // início da função Valor
		limpa() // Limpa a tela do console

		escreva("Informe o valor da passagem: R$")
		leia(valorPassagem)

		escreva("\nPassagem no valor de R$ ", valorPassagem, " adicionada com sucesso")
		u.aguarde(5000)

		limpa()
		
	} // fim da função Valor

	funcao numPassagem(){ // início da função numPassagem
		cadeia x
		para(inteiro cont = 0; cont < 40; cont++){
			x = ""+(cont+1)
			poltrona[cont] = tx.preencher_a_esquerda('0', 2, x)
			poltronaRes[cont] = "0"
		} 
	}// fim da função numPassagem

	funcao Menu()
	{ // início da Menu
		faca{ // inícnio da função faça

			escreva("GESTÃO DE VENDAS DE PASSAGENS\n\n",
 				   "1 - Reservar\n",
 				   "2 - Cancelar\n",
 				   "3 - Listagem de Ocupações/Disponibilidade\n",
 				   "4 - Listagem Geral\n",
 				   "5 - Resumo de Ocupação\n\n",
 				   "9 - Finalizar Programa\n"
 				   )
 			leia(opcao) // receber o valor da opção

 			escolha(opcao){ // começo do laço escolha
				caso 1:
					Reservar()
					pare
				caso 2:
					Cancelar()
					pare
				caso 3:
					escreva("LISTAGEM DE OCUPAÇÕES / DISPONIBILIDADE\n\n")
					listagemOcupDisp()
					Prosseguir()
					pare
				caso 4:
					listagemGeral()
					pare
				caso 5:
					resumoOcupacao()
					pare
				caso 9:
					continua = 'a'
					pare
				caso contrario:
 					limpa() // Limpa a tela do console
 					escreva("Opção Inválida. Escolha uma opção válida.\n\n")
 			} // fim do laço escolha
 			
 
		} // fima da função faça
		enquanto(continua == 's')
		
	} // fim da função Menu

	funcao Reservar(){ // início da função Reservar
		limpa()
		escreva("RESERVA DE POLTRONA\n\n")
		
		listagemOcupDisp()
		
		inteiro res

		escreva("\nInforme a Poltrona/Assento: ")
		leia(res)
		
		se(res >= 1 e res <= 40 e poltronaRes[res-1] != "1"){
			poltronaRes[res-1] = "1"
			contadorRes += 1			
			escreva("Poltrona reservada com sucesso\n")
		}senao{
			escreva("Poltrona indisponível\n")	
		}

		Prosseguir()
		
	} // fim da função Reservar

	funcao Cancelar(){ // início da função Cancelar
		limpa()
		escreva("CANCELAMENTO DE RESERVA\n")
		listagemOcupDisp()		
		inteiro res

		escreva("\nInforme a Poltrona/Assento: ")
		leia(res)
		
		se(res >= 1 e res <= 40 e poltronaRes[res-1] == "1"){
			poltronaRes[res-1] = "0"
			contadorCanc  += 1
			contadorRes -= 1
					
			escreva("Cancelamento de Poltrona/Assento com sucesso \n")
		}senao{
			escreva("Esta Poltrona ainda Não foi Reservada\n")	
		}

		Prosseguir()
	} // fim da função Cancelar

	funcao listagemOcupDisp(){ // início da função listagemOcupDisp
		
		inteiro contador = 0

		escreva("       Fileira 1     Fileira 2     Fileira 3     Fileira 4                  Fileira 1     Fileira 2   Fileira 3   Fileira 4  \n\n")		
		para(inteiro coluna = 0; coluna < 10; coluna++){
						
				escreva("           ",poltrona[contador]   ,"           ",poltrona[contador+1]   ,"              ",poltrona[contador+3]   ,"          ",poltrona[contador+2]    ,"      <------->  ")
				escreva("        ",poltronaRes[contador]   ,"              ",poltronaRes[contador+1]   ,"           ",poltronaRes[contador+3]   ,"           ",poltronaRes[contador+2]   ,"	      --->: ",coluna+1,"\n")				

				contador += 4
		}
		
	} // fim da função listagemOcupDisp

	funcao Prosseguir(){ // ínício da função prosseguir
		cadeia y

		escreva("Aperte uma tecla para prosseguir: ")
		leia(y)
				
	} // fim da função prosseguir

	funcao listagemGeral(){ // início da função listagemGeral
		limpa()
		escreva("LISTAGEM GERAL\n")

		listagemOcupDisp()
		escreva("\nTotal de Poltronas do Ônibus.........: ",capacidade,"\n")
		escreva("Total de Poltronas Reservadas........: ",contadorRes,"\n")
		escreva("Total de Poltronas Disponíveis.......: ",(capacidade - contadorRes),"\n")
		escreva("Receita total Bruta das Reservas.....: R$",(valorPassagem * contadorRes),"\n")
		escreva("Total de cancelamentos realizados....: ",contadorCanc,"\n")

		Prosseguir()
	} // fim da função listagemGeral

	funcao resumoOcupacao(){ // início da função resumoOcupacao
		limpa()
		escreva("RESUMO DE OCUPAÇÃO\n")
		inteiro contador = 0

		escreva("    Fileira 1    Fileira 2    Fileira 3    Fileira 4  \n")		
		para(inteiro coluna = 0; coluna < 10; coluna++){
									
				escreva("           ",poltronaRes[contador],"           ",poltronaRes[contador+1],"           ",poltronaRes[contador+3],"           ",poltronaRes[contador+2],"	 --->: ",coluna+1,"\n")				

				contador += 4
		}

		escreva("\nForam reservada(s)",contadorRes," Passagem(ns)\n")

		Prosseguir()
	} // fim da função resumoOcupacao
	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5385; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */