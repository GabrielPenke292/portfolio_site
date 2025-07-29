<script setup>
import ProfileCard from './components/ProfileCard.vue';
import Navbar from './components/Navbar.vue';
const profile = {
  name: 'Gabriel Penke',
  description: 'Full Stack Developer',
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
      <!-- Menu Lateral de navegação-->
      <Navbar />
      <ProfileCard :profile="profile" />
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

/* Ajuste para o conteúdo principal */
.content > :last-child {
  flex: 1;
  display: flex;
  justify-content: center;
  align-items: center;
  margin-left: 80px; /* Espaço para a navbar */
}

/* Responsividade */
@media (max-width: 768px) {
  .content > :last-child {
    margin-left: 0;
    margin-top: 60px; /* Espaço para navbar horizontal */
  }
}
</style>
