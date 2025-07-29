<script setup>
import ProfileCard from './components/ProfileCard.vue';

const profile = {
  name: 'Gabriel Penke',
  description: 'Desenvolvedor Full Stack',
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
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 100vh;
  color: white;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
}

h1 {
  font-size: 3rem;
  margin: 0;
}
</style>
