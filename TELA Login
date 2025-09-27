import React from 'react';
import { View, Text, TextInput, TouchableOpacity, StyleSheet, Image, Alert, ActivityIndicator} from 'react-native';
import { useRouter } from 'expo-router';
import { signInWithEmailAndPassword } from 'firebase/auth';
import { auth } from '../config/firebaseConfig';

export default function Login() {
  const router = useRouter();
  const [email, setEmail] = React.useState('');
  const [senha, setSenha] = React.useState('');
  const [loading, setLoading] = React.useState(false);

  const login = async () => {
    if (!email || !senha) {
      Alert.alert('Atenção', 'Preencha todos os campos');
      return;
    }

    setLoading(true);

    try {
      const userCredential = await signInWithEmailAndPassword(auth, email, senha);
      const user = userCredential.user;
      console.log('✅ Usuário logado:', user.email);
      router.replace('/(tabs)/funcoes');
    } catch (error: unknown) {
      const mensagem = error instanceof Error ? error.message : 'Erro desconhecido';
      console.error('❌ Erro no login:', mensagem);
      Alert.alert('Erro ao logar', 'E-mail ou senha inválidos');
    } finally {
      setLoading(false);
    }
  };

  return (
    <View style={estilos.tela}>
      <Image
        source={require('../assets/images/logo.png')}
        style={estilos.logo}
      />

      <Text style={estilos.titulo}>Iniciar sessão</Text>

      <TextInput
        placeholder="Seu e-mail"
        placeholderTextColor="#000"
        style={[estilos.caixa, { color: '#000' }]}
        onChangeText={setEmail}
        autoCapitalize="none"
        keyboardType="email-address"
        value={email}
      />

      <TextInput
        placeholder="Sua senha"
        placeholderTextColor="#000"
        style={[estilos.caixa, { color: '#000' }]}
        onChangeText={setSenha}
        secureTextEntry
        value={senha}
      />

      {loading ? (
        <ActivityIndicator size="large" color="#154C4C" style={{ marginTop: 20 }} />
      ) : (
        <TouchableOpacity style={estilos.botaoVerde} onPress={login}>
          <Text style={estilos.textoBotao}>Entrar</Text>
        </TouchableOpacity>
      )}
      <TouchableOpacity onPress={() => router.push('/resetSenha')}>
        <Text style={estilos.textoSimples}>Esqueceu a senha?</Text>
      </TouchableOpacity>

      <TouchableOpacity
        style={estilos.textoSimples}
        onPress={() => router.push('/criarConta')}
      >
        <Text style={{ color: '#171717ff', fontSize: 12, fontWeight: 'bold' }}>
          Criar conta
        </Text>
      </TouchableOpacity>
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
    width: 200,
    height: 200,
    resizeMode: 'contain',
    marginBottom: 10,
    marginTop: -200,
  },
  titulo: {
    fontSize: 24,
    marginBottom: 50,
    fontWeight: 'bold',
    color: '#154C4C',
  },
  caixa: {
    width: '100%',
    padding: 10,
    marginBottom: 20,
    backgroundColor: '#fff',
    borderWidth: 1,
    borderColor: '#000000ff',
    borderRadius: 10,
    color: '#999',
  },
  botaoVerde: {
    backgroundColor: '#154C4C',
    padding: 10,
    marginTop: 10,
    borderRadius: 10,
    width: '100%',
    alignItems: 'center',
  },
  textoBotao: {
    color: '#fff',
    fontWeight: 'bold',
    fontSize: 23,
  },
  textoSimples: {
    marginTop: 10,
    fontSize: 12,
    color: '#171717ff',
    fontWeight: 'bold',
  },
});
