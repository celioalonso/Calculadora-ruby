def soma(a, b)
    a + b
  end
  
  def subtracao(a, b)
    a - b
  end
  
  def multiplicacao(a, b)
    a * b
  end
  
  def divisao(a, b)
    a / b
  end
  
  loop do
    # Menu de opções
    puts "\nEscolha uma operação:"
    puts "1 - Soma"
    puts "2 - Subtração"
    puts "3 - Multiplicação"
    puts "4 - Divisão"
    puts "0 - Sair"
  
    # Recebendo a escolha do usuário
    escolha = gets.to_i
  
    case escolha
    when 1..4
      # Solicitando os números ao usuário
      print "Digite o primeiro número: "
      numero1 = gets.to_f
  
      print "Digite o segundo número: "
      numero2 = gets.to_f
  
      # Realizando a operação escolhida
      resultado =
        case escolha
        when 1 then soma(numero1, numero2)
        when 2 then subtracao(numero1, numero2)
        when 3 then multiplicacao(numero1, numero2)
        when 4 then divisao(numero1, numero2)
        end
  
      # Exibindo o resultado
      puts "\nO resultado é: #{resultado}"
  
      # Pausar e esperar a entrada do usuário antes de limpar o console
      puts "Pressione Enter para continuar..."
      gets
  
      # Limpar o console
      system("clear") || system("cls")
    when 0
      # Sair do loop
      puts "Saindo da calculadora. Até logo!"
      break
    else
      # Mensagem de opção inválida
      puts "Opção inválida. Por favor, escolha uma opção válida."
    end
  end