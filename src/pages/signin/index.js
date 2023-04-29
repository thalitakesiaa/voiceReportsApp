import React, { useState } from 'react';
import Header from '../../components/Header';
import { 
  KeyboardView, 
  Title, 
  Container, 
  Input, 
  ButtonSubmit,
  TextButton
} from './styles';
import Api from '../../services/api';


function Signin({navigation}) {

  const [email, setEmail] = useState('')
  const [senha, setSenha] = useState('')

  //funcao para chamar a rota
  const login = () => {
    Api.post('/login', {
      "email": email,
      "password": senha
    })
    .then((response) => {
      navigation.navigate('Home')
    })
    .catch((error) => {
      console.log(error);
    });
  }

  return(
    <KeyboardView>
      <Header />
      <Container>
        <Title>Login</Title>
        <Input 
          placeholderTextColor="#fff"
          placeholder="E-mail"
          onChangeText={setEmail}
          value={email}
        />
        <Input 
          placeholderTextColor="#fff"
          placeholder="Senha"
          secureTextEntry
          onChangeText={setSenha}
          value={senha}
        />
        <ButtonSubmit onPress={login}>
          <TextButton>
            Entrar
          </TextButton>
        </ButtonSubmit>
      </Container>
    </KeyboardView>
  )
}

export default Signin;