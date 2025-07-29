<script setup>
import ProfileCard from './components/ProfileCard.vue';
import Navbar from './components/Navbar.vue';

const profile = {
  name: 'Gabriel Penke',
  title: 'Full Stack Developer',
  description: "Hi, I'm Gabriel and I'm a Full Stack Developer with +5 years of experience developing systems and delivering solutions to clients.",
  image: '/perfil.jpg',
};
</script>

<template>
  <div class="app-container">
    <!-- Vídeo de background -->
    <video class="background-video" autoplay muted loop playsinline>
      <source src="/video.mp4" type="video/mp4">
      Seu navegador não suporta vídeos.
    </video>
    
    <!-- Conteúdo principal -->
    <div class="content">
      <div class="main-container">
        <!-- Área da navbar com espaçamento -->
        <div class="navbar-area">
          <Navbar />
        </div>
        
        <!-- Área do conteúdo principal -->
        <div class="content-area">
          <ProfileCard :profile="profile" />
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.app-container {
  position: relative;
  width: 100vw;
  height: 100vh;
  overflow: hidden;
}

.background-video {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
  z-index: -1;
}

.content {
  position: relative;
  z-index: 1;
  display: flex;
  height: 100vh;
  color: white;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
}

.main-container {
  display: flex;
  width: 100%;
  max-width: 1400px;
  margin: 0 auto;
  padding: 0 20px;
  gap: 0;
}

.navbar-area {
  flex-shrink: 0;
  padding-top: 40px;
  margin-right: 0;
}

.content-area {
  flex: 1;
  display: flex;
  justify-content: flex-start; /* Alinha à esquerda */
  align-items: flex-start; /* Alinha ao topo para ficar ao lado do primeiro ícone */
  padding-top: 40px;
  padding-left: 0;
  margin-left: 0;
  position: relative;
}

/* Responsividade */
@media (max-width: 768px) {
  .main-container {
    flex-direction: column;
    padding: 0 20px;
    gap: 20px;
  }
  
  .navbar-area {
    padding-top: 20px;
    margin-right: 0;
  }
  
  .content-area {
    padding-top: 0;
    justify-content: center; /* Centraliza apenas no mobile */
    align-items: center; /* Centraliza no mobile */
    margin-left: 0;
  }
}
</style>
