import React from 'react';
import { View, Text, TextInput, TouchableOpacity, StyleSheet, Image, Alert, ActivityIndicator} from 'react-native';
import { useRouter } from 'expo-router';
import { createUserWithEmailAndPassword, updateProfile } from 'firebase/auth';
import { auth } from '../config/firebaseConfig';

export default function CriarConta() {
  const router = useRouter();
  const [nome, setNome] = React.useState('');
  const [email, setEmail] = React.useState('');
  const [senha, setSenha] = React.useState('');
  const [loading, setLoading] = React.useState(false); 

  const criarConta = async () => {
    if (!nome || !email || !senha) {
      Alert.alert('Atenção', 'Preencha todos os campos');
      return;
    }

    setLoading(true); 

    try {
      const userCredential = await createUserWithEmailAndPassword(auth, email, senha);
      const user = userCredential.user;

      await updateProfile(user, { displayName: nome });

      Alert.alert('✅ Sucesso', 'Conta criada com sucesso!');
      router.push('/login');
    } catch (error: any) {
      console.error('❌ Erro ao criar conta:', error.message);
      Alert.alert('Erro', 'Não foi possível criar a conta');
    } finally {
      setLoading(false);
    }
  };

  return (
    <View style={estilos.tela}>
      <Image
        source={require('../assets/images/logo2.png')}
        style={estilos.logo}
      />

      <Text style={estilos.titulo}>Criação de Conta</Text>

      <TextInput
        placeholder="Nome"
        placeholderTextColor="#000"
        style={[estilos.caixa, { color: '#000' }]}
        onChangeText={setNome}
        value={nome}
      />

      <TextInput
        placeholder="E-mail"
        placeholderTextColor="#000"
        style={[estilos.caixa, { color: '#000' }]}
        onChangeText={setEmail}
        autoCapitalize="none"
        keyboardType="email-address"
        value={email}
      />

      <TextInput
        placeholder="Senha"
        placeholderTextColor="#000"
        style={[estilos.caixa, { color: '#000' }]}
        onChangeText={setSenha}
        secureTextEntry
        value={senha}
      />

      {loading ? (
        <ActivityIndicator size="large" color="#154C4C" style={{ marginTop: 20 }} />
      ) : (
        <TouchableOpacity style={estilos.botaoVerde} onPress={criarConta}>
          <Text style={estilos.textoBotao}>Criar Conta</Text>
        </TouchableOpacity>
      )}
    </View>
  );
}

const estilos = StyleSheet.create({
  tela: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 20,
    backgroundColor: '#e5e4e2',
  },
  logo: {
    width: 150,
    height: 150,
    resizeMode: 'contain',
    marginBottom: 10,
    marginTop: -150,
  },
  titulo: {
    fontSize: 24,
    marginBottom: 20,
    color: '#154C4C',
    fontWeight: 'bold',
  },
  caixa: {
    width: '100%',
    padding: 10,
    marginBottom: 10,
    backgroundColor: '#fff',
    borderWidth: 1,
    borderColor: '#000000ff',
    borderRadius: 10,
    color: '#999',
    textAlign: 'left',
  },
  botaoVerde: {
    backgroundColor: '#154C4C',
    padding: 15,
    marginTop: 30,
    borderRadius: 10,
    width: '100%',
  },
  textoBotao: {
    color: '#fff',
    fontWeight: 'bold',
    textAlign: 'center',
    fontSize: 20,
  },
});
