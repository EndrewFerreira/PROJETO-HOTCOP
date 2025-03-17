from PyQt6 import uic,QtWidgets
from PyQt6.QtWidgets import QMessageBox
import mysql.connector

banco = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="",
  database="bd_teste_sandro"
)

def cadastrar_cliente():
    nome= cad_clientes.lineEdit_4.text()
    email= cad_clientes.lineEdit_2.text()
    cpf= cad_clientes.lineEdit_3.text()
    endereco= cad_clientes.lineEdit.text()
    telefone = cad_clientes.lineEdit_5.text()

    cursor = banco.cursor()
    comando_SQL= "INSERT INTO clientes (nome,email,endereco,cpf,telefone) VALUES (%s,%s,%s,%s,%s)"
    dados= (str(nome),str(email),str(endereco),str(cpf),str(telefone))
    cursor.execute(comando_SQL,dados)
    banco.commit()

    cad_clientes.lineEdit_4.setText("")  
    cad_clientes.lineEdit_2.setText("")
    cad_clientes.lineEdit_3.setText("")
    cad_clientes.lineEdit.setText("")
    cad_clientes.lineEdit_5.setText("")

    QMessageBox.warning(cad_clientes, "Status", "Cadastro realizado com sucesso")


app=QtWidgets.QApplication([])
cad_clientes= uic.loadUi("cadastro_clientes.ui")

cad_clientes.pushButton.clicked.connect(cadastrar_cliente)

cad_clientes.show()
app.exec()