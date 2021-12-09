class ConsultaPage
  include HTTParty

  def metodoBusca
    $uri_base = "https://portal.vr.com.br/api-web/comum/enumerations/VRPAT"
    $response = HTTParty.get($uri_base)
    puts "response body: #{$response.body}"
  end

  def metodoCompara(chave)
    expect($response.body).to have_content chave
    puts "response TipoEstabelecimento: #{$response[chave]}"
  end

  def metodoPrint
    puts "response TipoEstabelecimento: #{$response["typeOfEstablishment"]}"
    page.save_screenshot(log / imagem.png) #aqui houve tentativa de gerar imagem na pasta log
  end
end
