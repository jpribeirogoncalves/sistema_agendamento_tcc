// app/javascript/controllers/delete.js
const deleteButtons = document.querySelectorAll(".delete-button");

deleteButtons.forEach(button => {
  button.addEventListener("click", (event) => {
    event.preventDefault();
    const url = event.currentTarget.dataset.url;

    if (confirm("Tem certeza que deseja excluir este item?")) {
      fetch(url, {
        method: 'DELETE',
        headers: {
          'X-CSRF-Token': document.querySelector('meta[name="csrf-token"]').content
        }
      }).then(response => {
        if (response.ok) {
          // Lógica para atualizar a interface após a exclusão bem-sucedida
        } else {
          // Lógica para lidar com falha na exclusão
        }
      }).catch(error => {
        console.error('Erro ao excluir:', error);
      });
    }
  });
});
