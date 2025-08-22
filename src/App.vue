<script setup>
import ProfileCard from './components/ProfileCard.vue';
import Navbar from './components/Navbar.vue';
import HomeSection from './components/sections/HomeSection.vue';
import AboutSection from './components/sections/AboutSection.vue';
import ProjectsSection from './components/sections/ProjectsSection.vue';
import CoursesSection from './components/sections/CoursesSection.vue';
import ContactSection from './components/sections/ContactSection.vue';
import SkillsSection from './components/sections/SkillsSection.vue';
import ResumeSection from './components/sections/ResumeSection.vue';
import { ref, onMounted, onUnmounted } from 'vue';

const profile = {
  name: 'Gabriel Penke',
  title: 'Full Stack Developer',
  description: "Hi, I'm Gabriel and I'm a Full Stack Developer with +5 years of experience developing systems and delivering solutions to clients.",
  image: '/perfil.jpg',
};

const activeSection = ref('home');

// Função para detectar qual seção está visível
const detectActiveSection = () => {
  const sections = ['home', 'about', 'projects', 'courses', 'skills', 'contact', 'resume'];
  const scrollContainer = document.querySelector('.scrollable-content');
  
  if (!scrollContainer) return;
  
  const scrollPosition = scrollContainer.scrollTop + 150; // Offset para melhor detecção
  
  for (let i = sections.length - 1; i >= 0; i--) {
    const sectionId = sections[i];
    const element = document.getElementById(sectionId);
    
    if (element) {
      const elementTop = element.offsetTop;
      const elementHeight = element.offsetHeight;
      
      if (scrollPosition >= elementTop && scrollPosition < elementTop + elementHeight) {
        if (activeSection.value !== sectionId) {
          activeSection.value = sectionId;
        }
        break;
      }
    }
  }
};

// Listener de scroll
let scrollListener = null;

onMounted(() => {
  // Adiciona o listener de scroll no container específico
  const scrollContainer = document.querySelector('.scrollable-content');
  if (scrollContainer) {
    scrollListener = () => detectActiveSection();
    scrollContainer.addEventListener('scroll', scrollListener);
    
    // Detecta a seção inicial
    detectActiveSection();
  }
});

onUnmounted(() => {
  // Remove o listener de scroll
  if (scrollListener) {
    const scrollContainer = document.querySelector('.scrollable-content');
    if (scrollContainer) {
      scrollContainer.removeEventListener('scroll', scrollListener);
    }
  }
});

const scrollToSection = (sectionId) => {
  const element = document.getElementById(sectionId);
  if (element) {
    element.scrollIntoView({ 
      behavior: 'smooth',
      block: 'start'
    });
    // Não precisamos mais definir activeSection aqui, pois o listener de scroll cuidará disso
  }
};
</script>

<template>
  <div class="app-container">
    <!-- Vídeo de background -->
    <video class="background-video" autoplay muted loop playsinline>
      <source src="/video.mp4" type="video/mp4">
      Seu navegador não suporta vídeos.
    </video>
    
    <!-- Layout fixo: Navbar + Profile -->
    <div class="fixed-layout">
      <Navbar 
        :active-section="activeSection" 
        @section-change="scrollToSection" 
      />
      <ProfileCard :profile="profile" />
    </div>
    
    <!-- Área scrollável com conteúdo -->
    <div class="scrollable-content">
      <HomeSection />
      <AboutSection />
      <ProjectsSection />
      <CoursesSection />
      <SkillsSection />
      <ContactSection />
      <ResumeSection />
    </div>
  </div>
</template>

<style scoped>
.app-container {
  position: relative;
  width: 100vw;
  height: 100vh;
  overflow: hidden;
  display: flex;
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

/* Layout fixo: Navbar + Profile */
.fixed-layout {
  position: fixed;
  left: 0;
  top: 0;
  width: 400px;
  height: 100vh;
  z-index: 1000;
  display: flex;
  flex-direction: row; /* Mudado para row para ficar lado a lado */
  padding: 20px;
  gap: 20px;
}

/* Área scrollável */
.scrollable-content {
  margin-left: 400px;
  flex: 1;
  overflow-y: auto;
  scroll-behavior: smooth;
  height: 100vh;
}

/* Responsividade */
@media (max-width: 768px) {
  .app-container {
    flex-direction: column;
  }
  
  .fixed-layout {
    position: relative;
    width: 100%;
    height: auto;
    flex-direction: row;
    padding: 10px;
  }
  
  .scrollable-content {
    margin-left: 0;
    margin-top: 0;
  }
}
</style>
