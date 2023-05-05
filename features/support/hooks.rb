# Define as dependências necessárias para a criação do relatório de teste
require "report_builder"
require "date"

# Define um bloco de código a ser executado quando o processo terminar
at_exit do
  # Obtém a data atual no formato dia-mês-ano
  t = Time.now.strftime("%d-%m-%Y")
  
  # Define informações adicionais para o relatório de teste
  @infos = {
    "Dispositivo" => "API",
    "Data do Teste" => t,
  }

  # Configura o ReportBuilder com as opções apropriadas
  ReportBuilder.configure do |config|
    config.input_path = "log/report.json"
    config.report_path = "log/report_#{t}"
    config.report_types = [:html]
    config.report_title = "VR HTTParty"
    config.additional_info = @infos
    config.color = "green"
  end

  # Gera o relatório de teste usando as opções definidas acima
  ReportBuilder.build_report
end
