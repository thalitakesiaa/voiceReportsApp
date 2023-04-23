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


function Signin({navigation}) {
  return(
    <KeyboardView>
      <Container>
        <Title>HOME</Title>
        <ButtonSubmit onPress={() => navigation.navigate('Signin')}>
          <TextButton>
            Login
          </TextButton>
        </ButtonSubmit>
      </Container>
    </KeyboardView>
  )
}

export default Signin;