Boa, Genivaldo!  
Assim o README já fica 100% completo para quem quiser começar do zero. 🚀  
Vou adicionar uma seção específica sobre **Instalação do AWS CLI** antes da configuração das credenciais.

Aqui está a nova versão atualizada:

---

# Projeto Terraform - Criação de VPC na AWS

Este projeto cria uma Virtual Private Cloud (VPC) simples na AWS utilizando o Terraform.

## Pré-requisitos

Antes de começar, você precisa ter:

- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- Uma conta ativa na [AWS](https://aws.amazon.com/)

## Instalação do Terraform

Para instalar o Terraform:

```bash
# No Ubuntu/Linux
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt-get update && sudo apt-get install terraform
```

Para outras plataformas, veja o [guia oficial de instalação](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).

## Instalação do AWS CLI

A AWS CLI é útil para configurar suas credenciais e interagir diretamente com a AWS.

### No Linux:

```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

### No Windows:

- Baixe o instalador oficial: [AWS CLI para Windows](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

### No MacOS:

```bash
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /
```

### Verificar se a instalação foi concluída:

```bash
aws --version
```

Você deverá ver uma saída similar a:

```
aws-cli/2.x.x Python/3.x.x Linux/x86_64 source
```

## Configuração de credenciais AWS

O Terraform precisa ter acesso às suas credenciais da AWS para criar recursos. Existem duas formas principais:

### 1. Usando o AWS CLI

Configure suas credenciais rapidamente:

```bash
aws configure
```

Será solicitado:

- **AWS Access Key ID**
- **AWS Secret Access Key**
- **Região padrão** (exemplo: `us-east-1`)
- **Formato de saída** (pode deixar em branco)

Essas credenciais serão armazenadas no arquivo `~/.aws/credentials`.

### 2. Usando variáveis de ambiente

Você também pode exportar diretamente no terminal:

```bash
export AWS_ACCESS_KEY_ID="sua_access_key"
export AWS_SECRET_ACCESS_KEY="sua_secret_key"
export AWS_DEFAULT_REGION="sua_regiao"
```

> **Importante:** Nunca versionar ou expor suas credenciais!

## Inicializando o projeto

Clone este repositório e entre na pasta:

```bash
git clone https://github.com/seu-usuario/seu-repo.git
cd seu-repo
```

Inicialize o Terraform:

```bash
terraform init
```

Este comando prepara o ambiente para uso.

## Formatando os arquivos

Formate os arquivos Terraform:

```bash
terraform fmt
```

## Planejando a infraestrutura

Visualize o plano de execução:

```bash
terraform plan
```

Sem aplicar alterações.

## Aplicando a infraestrutura

Crie a infraestrutura:

```bash
terraform apply
```

Confirme com `yes`.

## Destruindo a infraestrutura

Remova todos os recursos criados:

```bash
terraform destroy
```

Confirme com `yes`.

## Estrutura de Arquivos

```
.
├── main.tf          # Código principal para criação da VPC
├── variables.tf     # Definição de variáveis
├── outputs.tf       # Outputs da infraestrutura
├── terraform.tfvars # Valores atribuídos às variáveis (opcional)
└── README.md        # Este documento
```

---