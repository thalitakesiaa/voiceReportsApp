import React from 'react';
import Header from '../../components/Header';
import { 
  KeyboardView, 
  Title, 
  Container, 
  Input, 
  ButtonSubmit,
  TextButton
} from './styles';


function Signin() {
  return(
    <KeyboardView>
      <Header />
      <Container>
        <Title>Login</Title>
        <Input 
          placeholderTextColor="#fff"
          placeholder="E-mail"
        />
        <Input 
          placeholderTextColor="#fff"
          placeholder="Senha"
          secureTextEntry
        />
        <ButtonSubmit>
          <TextButton>
            Entrar
          </TextButton>
        </ButtonSubmit>
      </Container>
    </KeyboardView>
  )
}

export default Signin;