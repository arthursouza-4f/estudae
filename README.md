# Estudaê 📘

**Estudaê** é uma aplicação mobile desenvolvida em Flutter com o propósito de auxiliar estudantes na organização de sua vida acadêmica. A plataforma permite o registro de notas, provas e preferências de estudo, promovendo uma gestão mais eficiente do desempenho escolar.

## 🎯 Propósito

O Estudaê foi idealizado para oferecer ao estudante uma ferramenta prática, intuitiva e confiável para planejar seus estudos e acompanhar sua evolução acadêmica ao longo do tempo.

## 📦 Estrutura do Projeto

O projeto segue uma arquitetura modular baseada em pastas funcionais. Abaixo, uma visão geral da estrutura principal:

```
lib/
├── app/
│   ├── components/                  # Componentes reutilizáveis
│   ├── presentation/                
│   │   └── screens/                 # Telas principais que não podem ser modularizadas
│   ├── providers/                   # Providers globais
│   └── themes/                      # Temas e extensões visuais
├── modulo/                          # Modulo criado, ex: Proves, Task...
│   ├── data/                        # Consultas para API ou SQLLite devem ser feitas aqui
│   ├── domain/                      # Regra de negocio
│   └── presentation/                # Telas do modulo
├── main.dart                        
```

## 🧪 Dependências

As dependências principais do projeto estão listadas abaixo junto com suas versões:

```yaml
provider: ^6.1.1
shared_preferences: ^2.2.2
intl: ^0.19.0
```

## 🚀 Como Executar

Para executar o Estudaê em ambiente local:

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/seu-usuario/estudae_app.git
   cd estudae
   ```

2. **Instale as dependências:**
   ```bash
   flutter pub get
   ```

3. **Execute o aplicativo:**
   ```bash
   flutter run
   ```

> É necessário ter o Flutter devidamente instalado e configurado. Consulte a [documentação oficial](https://docs.flutter.dev/get-started/install) para instruções detalhadas.

## 🤝 Contribuições

Contribuições são bem-vindas! Caso queira colaborar com o projeto:

Realize um fork do repositório.
Crie uma branch com sua funcionalidade ou correção:

Padrão esperado

Correções: Fix/Descricao-curta-correcao

Funcionalidade nova: Feature/Descricao-curta-funcionalidade-nova

   ```bash
   git checkout -b minha-contribuicao
   ```

Após concluir, envie um Pull Request descrevendo as alterações realizadas.

Pedimos que mantenha um padrão de código limpo, com comentários claros e compatibilidade com as funcionalidades existentes.

## 📄 Licença

Este projeto está licenciado sob a [Licença MIT](LICENSE). Você pode utilizá-lo, modificá-lo e distribuí-lo livremente, conforme os termos estabelecidos.

