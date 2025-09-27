import React from 'react';
import { View, Text, TouchableOpacity, StyleSheet, ImageBackground, Image } from 'react-native';
import { useRouter } from 'expo-router';

export default function GerarAgenda() {
  const router = useRouter();

  return (
    <ImageBackground
      source={require('../../../assets/images/inicio.png')}
      style={styles.imagemFundo}
      resizeMode="cover"
    >
      <TouchableOpacity style={styles.backButton} onPress={() => router.back()}>
        <Text style={styles.backArrow}>←</Text>
      </TouchableOpacity>

      <View style={styles.header}>
        <Text style={styles.titulo}>Gerar sua Agenda</Text>
      </View>

      <View style={styles.center}>
        <TouchableOpacity style={styles.botao} onPress={() => router.push('/enem')}>
          <View style={styles.botaoContent}>
            <Text style={styles.textoBotao}>ENEM</Text>
            <Image source={require('../../../assets/images/assistente.png')} style={styles.iconeBotao} />
          </View>
        </TouchableOpacity>  

        <TouchableOpacity style={styles.botao} onPress={() => router.push('/ssa')}>
          <View style={styles.botaoContent}>
            <Text style={styles.textoBotao}>SSA</Text>
            <Image source={require('../../../assets/images/assistente.png')} style={styles.iconeBotao} />
          </View>
        </TouchableOpacity>  

        <TouchableOpacity style={styles.botao} onPress={() => router.push('/avaliacaoEscolar')}>
           <View style={styles.botaoContent}>
            <Text style={styles.textoBotao}>Avaliação Escolar</Text>
          </View>
        </TouchableOpacity>
        </View>
    </ImageBackground>
  );
}

const styles = StyleSheet.create({
  imagemFundo: {
    flex: 1,
    width: '100%',
    height: '100%',
  },
  backButton: {
    position: 'absolute',
    top: 40,
    left: 20,
    zIndex: 10,
  },
  backArrow: {
    fontSize: 28,
    color: '#FFF',
    fontWeight: 'bold',
  },
  header: {
    alignItems: 'center',
    marginTop: 200,
    marginBottom: -150,
  },
  titulo: {
    fontSize: 32,
    fontWeight: 'bold',
    color: '#FFF',
    textAlign: 'center',
  },
  center: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    paddingHorizontal: 40,
  },
  botao: {
    width: '100%',
    maxWidth: 300,
    backgroundColor: '#154C4C',
    borderRadius: 10,
    borderWidth: 1,
    borderColor: '#21A39B',
    paddingVertical: 20,
    paddingHorizontal: 20,
    marginBottom: 25,
  },
  botaoContent: {
    flexDirection: 'row',
    justifyContent: 'center',
    position: 'relative',
    alignItems: 'center',
  },
  textoBotao: {
    color: '#FFF',
    fontSize: 18,
    fontWeight: 'bold',
  },
  iconeBotao: {
    width: 30,
    height: 30,
    resizeMode: 'contain',
    position: 'absolute',
    right: 10,
  },
});
