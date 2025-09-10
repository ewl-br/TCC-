// Pegar a agenda
const carregarAgenda = async () => {
  const res = await fetch("http://10.0.2.2:8080/agenda"); // IP do PC
  const data = await res.json();
  console.log(data);
};

// Enviar assunto para a IA gerar agenda
const gerarAgenda = async () => {
  const res = await fetch("http://10.0.2.2:8080/gerar_agenda", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ assuntos: ["Matemática", "Biologia"] })
  });
  const data = await res.json();
  console.log(data.agenda);
};
