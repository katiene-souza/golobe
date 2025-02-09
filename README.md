# README do Projeto Golobe: Agência de Viagens
<p align="center">
  <img src="https://github.com/user-attachments/assets/2f8eaf66-61aa-4da2-a498-751076745a8f" alt="Golobe" width="100%">
</p>
<br>
<p align="center">
  <img src="https://img.shields.io/badge/-Html5-0D1117?style=for-the-badge&logo=html5&labelColor=0D1117" alt="HTML badge"/>
  <img src="https://img.shields.io/badge/-Css-0D1117?style=for-the-badge&logo=css&labelColor=0D1117" alt="CSS badge"/>
  <img src="https://img.shields.io/badge/-Javascript-0D1117?style=for-the-badge&logo=javascript&labelColor=0D1117" alt="Javascript badge"/>
</p>

<p align="center">
  <a href="https://golobe-katienesouzas-projects.vercel.app/" target="_blank" rel="noopener noreferrer">Link para o site</a>
</p> 

Este README detalha o desenvolvimento do projeto Golobe, uma simulação do site inicial de uma agência de viagens, com foco na interface visual e no planejamento do banco de dados, conforme os requisitos da Primeira Entrega Individual.

## Sumário

1. [Visão Geral do Projeto](#visão-geral-do-projeto)
2. [Estrutura do Projeto](#estrutura-do-projeto)
3. [Interface Visual](#interface-visual)
4. [Modelagem do Banco de Dados](#modelagem-do-banco-de-dados)  
   - [Diagrama Conceitual](#diagrama-conceitual)  
   - [Diagrama Lógico](#diagrama-lógico)  
   - [Diagrama Físico](#diagrama-físico)
5. [Apresentação do Projeto (Vídeo)](#apresentação-do-projeto-vídeo)

## Visão Geral do Projeto

O projeto Golobe visa criar uma base sólida para uma agência de viagens fictícia, demonstrando a estrutura do site e o planejamento do banco de dados. Esta etapa inicial não inclui funcionalidades dinâmicas ou sistemas interativos, concentrando-se na apresentação visual e na organização dos dados.

## Estrutura do Projeto

O projeto está organizado da seguinte forma:

```
agencia_viagem
├─ css
│  ├─ reset.css
│  └─ styles.css
├─ database
│  ├─ agencia_viagem_um.sql
│  ├─ diagrama_conceitual.pdf
│  ├─ diagrama_fisico.pdf
│  └─ diagrama_logico.pdf
├─ images
│  ├─ bed-dark.svg
│  ├─ bed.svg
│  ├─ bolt-sea.png
│  ├─ facebook.svg
│  ├─ find.svg
│  ├─ insta.svg
│  ├─ instambul.png
│  ├─ logo-dark.png
│  ├─ logo.svg
│  ├─ midias.png
│  ├─ plane-dark.svg
│  ├─ plane.svg
│  ├─ planes.png
│  ├─ swap.svg
│  ├─ twitter.svg
│  └─ youtube.svg
├─ index.html
├─ js
│  ├─ anternacy.js
│  └─ date.js
└─ README.md

```

## Interface Visual

A página inicial da agência de viagens foi desenvolvida utilizando:

*   **HTML**: Estrutura o conteúdo da página, incluindo elementos como cabeçalho, seção de destaque, destinos, depoimentos e rodapé.
*   **CSS**: Estiliza a página, definindo cores, fontes, layout, responsividade e outros aspectos visuais.
*   **Javascript**: Para dar dinamicidade em alguns componentes da minha página

## Modelagem do Banco de Dados

Os diagramas do banco de dados foram criados utilizando o BRModelo, Lucid e outros, representando as entidades e seus relacionamentos em diferentes níveis de detalhe:

###  **Diagrama Conceitual:** 
![diagrama_conceitual](https://github.com/user-attachments/assets/7426485d-0017-4aae-a572-75f10927a773)
  
### **Diagrama Lógico:**
  ![Diagrama_logico](https://github.com/user-attachments/assets/95a9d0b8-e6da-4424-87ef-010d2f8d4454)

### **Diagrama Físico:** 
![fisico](https://github.com/user-attachments/assets/6de0997e-4f65-4b06-b297-54274540750e)

O script SQL para criação das tabelas foi gerado a partir do diagrama físico, permitindo a implementação do banco de dados.

## Apresentação do Projeto (Vídeo)
  ### [Link para o pitch](https://drive.google.com/file/d/1FyI3UkiALNEYk-ItL6BHa4KoShP9zW9_/view?usp=sharing)
Um vídeo de até 2 minutos foi gravado demonstrando o projeto Golobe, incluindo:

*   **Interface Criada:** Apresentação do design e conteúdo da página inicial, destacando a organização e os elementos visuais.
*   **Código Fonte:** Demonstração de trechos relevantes do código HTML, CSS e Bootstrap (se utilizado), explicando a estrutura e as escolhas de implementação.
*   **Diagramas do Banco de Dados:** Apresentação dos diagramas conceituais, lógicos e físicos, descrevendo as entidades, atributos e relacionamentos.
*   **Script SQL:** Exibição do script SQL gerado, mostrando a estrutura das tabelas e os tipos de dados utilizados.
*   **Planejamento:** Breve comentário sobre o planejamento do projeto, incluindo os desafios e as decisões tomadas.
