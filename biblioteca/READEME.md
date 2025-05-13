# **📚 Sistema de Controle de Biblioteca Universitária**  
**Desenvolvido por:** [Seu Nome]  
**Tecnologias:** PHP, MySQL, HTML5, CSS3, JavaScript  

---

## **🎯 Objetivo**  
Desenvolver um sistema completo para gerenciamento de:  
- Acervo de livros  
- Cadastro de alunos e autores  
- Controle de empréstimos  
- Relatórios e autenticação  

---

## **🛠️ Pré-requisitos**  
| Ferramenta          | Descrição                          | Download  
|---------------------|-----------------------------------|----------  
| **XAMPP**           | Servidor local (Apache + MySQL)   | [Apache Friends](https://www.apachefriends.org)  
| **VS Code**         | Editor de código                  | [Visual Studio Code](https://code.visualstudio.com)  
| **Git** (Opcional)  | Controle de versão                | [Git SCM](https://git-scm.com)  

---

## **📂 Estrutura do Projeto**  
```markdown
biblioteca_moderna/
├── app/               # Lógica da aplicação
│   ├── Core/          # Arquivos centrais (Database, Rotas)
│   ├── Controllers/   # Regras de negócio
│   ├── Models/        # Acesso ao banco
│   └── Views/         # Interface (HTML)
├── config/            # Configurações
├── public/            # Arquivos públicos
│   ├── assets/        # CSS, JS, Imagens
│   └── index.php      # Ponto de entrada
├── storage/           # Logs e cache
└── migrations/        # Scripts SQL
```

---

## **🚀 Passo a Passo para Desenvolvimento**  

### **1. Configuração Inicial**  
1. Instale o **XAMPP** e inicie os módulos `Apache` e `MySQL`.  
2. Clone este repositório ou crie a estrutura manualmente.  
3. Acesse o phpMyAdmin (`http://localhost/phpmyadmin`) e crie o banco `biblioteca`.  

### **2. Banco de Dados**  
- Execute os scripts SQL em `migrations/` na ordem:  
  1. `01_autores.sql`  
  2. `02_livros.sql`  
  3. `03_alunos.sql`  
  4. `04_emprestimos.sql`  

### **3. Desenvolvimento por Camadas**  
#### **Back-end (PHP)**  
1. **Models**:  
   - Exemplo: `LivroModel.php` → métodos `cadastrar(), listar(), buscarPorId()`.  
2. **Controllers**:  
   - Exemplo: `LivroController.php` → ações `listar(), salvar(), excluir()`.  

#### **Front-end (HTML/CSS)**  
- Use `Views/livros/listar.php` para exibir tabela de livros.  
- Adicione formulários em `Views/livros/cadastrar.php`.  

### **4. Integração**  
- Conecte as Views aos Controllers:  
  ```html
  <!-- Exemplo em Views/livros/cadastrar.php -->
  <form action="/livros/salvar" method="POST">
    <input type="text" name="titulo" required>
    <button>Cadastrar</button>
  </form>
  ```

### **5. Funcionalidades Extras**  
- **Login**:  
  - Tela: `Views/auth/login.php`  
  - Validação: `AuthController->validarLogin()`  
- **Relatórios**:  
  - Use a biblioteca **FPDF** para gerar PDFs.  

---

## **🔍 Checklist de Validação**  
| Item                   | Status (✅/❌)  
|------------------------|------------  
| CRUD de Livros         |  
| CRUD de Alunos         |  
| Controle de Empréstimos|  
| Login Funcional        |  
| Responsividade Mobile  |  

---

## **📌 Dicas Importantes**  
✔ **Segurança**:  
- Use `password_hash()` para senhas.  
- Previna SQL Injection com `PDO` ou `MySQLi`.  

✔ **Organização**:  
- Comente seu código (ex: `// Busca livros disponíveis`).  
- Documente funções complexas.  

✔ **Extras**:  
- Adicione um **dark mode** com CSS.  
- Implemente busca em tempo real com JavaScript.  

---

## **📚 Recursos Úteis**  
- [Documentação PHP](https://www.php.net/docs.php)  
- [Bootstrap (para UI)](https://getbootstrap.com)  
- [Chart.js (gráficos)](https://www.chartjs.org)  

---

## **🔄 Atualizações Futuras**  
- [ ] Sistema de reserva online  
- [ ] Notificações por e-mail  
- [ ] API REST para integração  

---

**📅 Cronograma Sugerido**  
1. Semana 1: Estrutura + CRUD Livros  
2. Semana 2: Autores e Alunos  
3. Semana 3: Empréstimos e Login  
4. Semana 4: Testes e Ajustes  

--- 

**✉️ Dúvidas?**  
Contate: [seu-email@exemplo.com]  

--- 

> Desenvolvido como projeto acadêmico - © [Ano] [Seu Nome]  

--- 

### **🎨 Exemplo de Wireframe (Opcional)**  
![Wireframe](docs/wireframe.png) *(Disponível em `/docs/wireframe.png`)*  

--- 

**👉 Comece agora executando:**  
```bash
php -S localhost:8000 -t public
```  
Acesse: `http://localhost:8000`  

--- 

