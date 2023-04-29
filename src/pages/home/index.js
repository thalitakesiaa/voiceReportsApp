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


function Home({navigation}) {
  const [ home, setHome ] = useState('');

  const homePage = () => {
    Api.get('/')
    .then(response => {})
    .catch((error) => {
      console(error);
    })
  }


  return(
    <KeyboardView>
      <Container>
        <Title>HOME</Title>
      </Container>
    </KeyboardView>
  )
}

export default Home;