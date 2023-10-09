$(document).ready(function() {
  let produtos = [];

  // Função para atualizar a tabela de produtos
  function atualizarTabela() {
    let tabela = $("#tabelaProdutos tbody");
    tabela.empty();

    for (let i = 0; i < produtos.length; i++) {
      let produto = produtos[i];

      let tr = $("<tr>");

      let tdNome = $("<td>").text(produto.nome);
      tr.append(tdNome);

      let tdImagens = $("<td>");
      for (let j = 0; j < produto.imagens.length; j++) {
        let img = $("<img>").attr("src", produto.imagens[j]).css("max-width", "100px");
        tdImagens.append(img);
      }
      tr.append(tdImagens);

      let tdValor = $("<td>").text(produto.valor);
      tr.append(tdValor);

      let tdDescricao = $("<td>").text(produto.descricao);
      tr.append(tdDescricao);

      let tdComentarios = $("<td>");

      // Botão para abrir o modal de comentários
      let btnComentarios = $("<button>").text("Comentários").addClass("btnComentarios").data("index", i);
      tdComentarios.append(btnComentarios);

      tr.append(tdComentarios);

      let tdAcoes = $("<td>");

      // Botão para abrir o modal de edição
      let btnEditar = $("<button>").text("Editar").addClass("btnEditar").data("index", i);
      tdAcoes.append(btnEditar);

      tr.append(tdAcoes);

      tabela.append(tr);
    }
  }

  // Adiciona o evento de submit do formulário de cadastro de produtos
  $("#formProduto").submit(function(event) {
    event.preventDefault();

    let nome = $("#nome").val();
    let imagens = $("#imagens")[0].files; // Obtém os arquivos de imagem selecionados
    let valor = $("#valor").val();
    let descricao = $("#descricao").val();

    let imagensURLs = [];

    // Verifica se foram selecionadas no máximo 5 imagens
    if (imagens.length <= 5) {
      // Cria URLs para as imagens selecionadas
      for (let i = 0; i < imagens.length; i++) {
        imagensURLs.push(URL.createObjectURL(imagens[i]));
      }

      let produto = {
        nome: nome,
        imagens: imagensURLs,
        valor: valor,
        descricao: descricao,
        comentarios: [] // Inicializa a lista de comentários vazia
      };

      produtos.push(produto);

      atualizarTabela();

      // Limpa o formulário
      $("#formProduto")[0].reset();
    } else {
      alert("Selecione no máximo 5 imagens.");
    }
  });

  // Adiciona o evento de click do botão "Comentários"
  $(document).on("click", ".btnComentarios", function() {
    let index = $(this).data("index");
    let produto = produtos[index];

    // Limpa a lista de comentários anterior
    $("#listaComentarios").empty();

    // Adiciona os comentários ao modal
    for (let i = 0; i < produto.comentarios.length; i++) {
      let comentario = produto.comentarios[i];
      let li = $("<li>").text(comentario);

      // Botão para excluir o comentário
      let btnExcluirComentario = $("<button>").text("Excluir").addClass("btnExcluirComentario").data("indexProduto", index).data("indexComentario", i);
      li.append(btnExcluirComentario);

      $("#listaComentarios").append(li);
    }

    // Exibe o modal de comentários
    $("#modalComentarios").show();
  });

  // Adiciona o evento de click do botão "Excluir Comentário"
  $(document).on("click", ".btnExcluirComentario", function() {
    let indexProduto = $(this).data("indexProduto");
    let indexComentario = $(this).data("indexComentario");

    produtos[indexProduto].comentarios.splice(indexComentario, 1);

    // Atualiza a lista de comentários no modal
    $("#modalComentarios").hide();
    $("#modalComentarios").show();
  });

  // Adiciona o evento de clique no botão "X" do modal de comentários para ocultá-lo
  $("#modalComentarios .close").click(function() {
    $("#modalComentarios").hide();
  });

  // Adiciona o evento de click do botão "Editar"
  $(document).on("click", ".btnEditar", function() {
    let index = $(this).data("index");
    let produto = produtos[index];

    // Preencha o formulário de edição com os detalhes do produto
    $("#nomeEditar").val(produto.nome);
    $("#imagensEditar").val(""); // Limpe a seleção de imagens
   

    // Exiba o modal de edição
    $("#modalEditar").show();

    // Adicione um evento de submit ao formulário de edição
    $("#formEditarProduto").off("submit").on("submit", function(event) {
      event.preventDefault();

      // Atualize os detalhes do produto com os novos valores do formulário de edição
      produto.nome = $("#nomeEditar").val();
 

      // Atualize a tabela
      atualizarTabela();

      // Feche o modal de edição
      $("#modalEditar").hide();
    });
  });

let tdAcoes = $("<td>");

// Botão para abrir o modal de edição
let btnEditar = $("<button>").text("Editar").addClass("btnEditar").data("index", i);
tdAcoes.append(btnEditar);

// Botão "Excluir" para remover o produto
let btnExcluir = $("<button>").text("Excluir").addClass("btnExcluirProduto").data("index", i);
tdAcoes.append(btnExcluir);

tr.append(tdAcoes);

  atualizarTabela();
});
// ...

// Função para atualizar a tabela de produtos
function atualizarTabela() {
  let tabela = $("#tabelaProdutos tbody");
  tabela.empty();

  for (let i = 0; i < produtos.length; i++) {
    let produto = produtos[i];

    let tr = $("<tr>");

    // ... (Código anterior)

    let tdAcoes = $("<td>");

    // Botão para abrir o modal de edição
    let btnEditar = $("<button>").text("Editar").addClass("btnEditar").data("index", i);
    tdAcoes.append(btnEditar);

    // Botão "Excluir Produto" para remover o produto
    let btnExcluirProduto = $("<button>").text("Excluir Produto").addClass("btnExcluirProduto").data("index", i);
    tdAcoes.append(btnExcluirProduto);

    tr.append(tdAcoes);

    tabela.append(tr);
  }
}

// ...

// Adicione o evento de clique para o botão "Excluir Produto"
$(document).on("click", ".btnExcluirProduto", function() {
  let index = $(this).data("index");
  produtos.splice(index, 1); // Remove o produto da lista
  atualizarTabela(); // Atualiza a tabela após a exclusão
});

// ...
