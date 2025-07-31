<!-- Menu Lateral de navegação-->
<template>
  <nav class="navbar">
    <div class="nav-container">
      <button class="nav-button active" @click="setActive('home')" title="Home">
        <Home class="nav-icon" />
        <span class="tooltip">Home</span>
      </button>
      
      <button class="nav-button" @click="setActive('about')" title="About">
        <FileText class="nav-icon" />
        <span class="tooltip">About</span>
      </button>
      
      <button class="nav-button" @click="setActive('projects')" title="Projects">
        <List class="nav-icon" />
        <span class="tooltip">Projects</span>
      </button>
      
      <button class="nav-button" @click="setActive('skills')" title="Skills">
        <PenTool class="nav-icon" />
        <span class="tooltip">Skills</span>
      </button>
      
      <button class="nav-button" @click="setActive('contact')" title="Contact">
        <MessageCircle class="nav-icon" />
        <span class="tooltip">Contact</span>
      </button>
      
      <button class="nav-button" @click="setActive('testimonials')" title="Testimonials">
        <Quote class="nav-icon" />
        <span class="tooltip">Testimonials</span>
      </button>
      
      <button class="nav-button" @click="setActive('resume')" title="Resume">
        <File class="nav-icon" />
        <span class="tooltip">Resume</span>
      </button>
      
      <button class="nav-button" @click="setActive('profile')" title="Profile">
        <User class="nav-icon" />
        <span class="tooltip">Profile</span>
      </button>
    </div>
  </nav>
</template>

<script setup>
import { ref } from 'vue';
import { 
  Home, 
  FileText, 
  List, 
  PenTool, 
  MessageCircle, 
  Quote, 
  File, 
  User 
} from 'lucide-vue-next';

const activeSection = ref('home');

const setActive = (section) => {
  activeSection.value = section;
};
</script>

<style scoped>
.navbar {
  position: relative;
  width: 100px;
  height: 100vh;
  background-color: rgba(0, 0, 0, 0.8);
  backdrop-filter: blur(10px);
  display: flex;
  flex-direction: column;
  align-items: center;
  padding: 20px 0;
  border-radius: 20px;
  margin: 0;
  z-index: 1000; /* Adicionado z-index para criar contexto */
}

.nav-container {
  display: flex;
  flex-direction: column;
  gap: 15px;
  align-items: center;
  margin: 0;
  padding: 0;
}

.nav-button {
  width: 50px;
  height: 50px;
  border: none;
  border-radius: 12px;
  background-color: rgba(255, 255, 255, 0.1);
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: all 0.3s ease;
  position: relative;
}

.nav-button:hover {
  background-color: rgba(255, 255, 255, 0.2);
  transform: translateY(-2px);
}

.nav-button.active {
  background-color: #ff6b35;
  box-shadow: 0 4px 15px rgba(255, 107, 53, 0.4);
}

.nav-icon {
  width: 24px;
  height: 24px;
  color: white;
  stroke-width: 2;
}

.nav-button.active .nav-icon {
  color: white;
}

.nav-button:not(.active) .nav-icon {
  color: rgba(255, 255, 255, 0.8);
}

/* Tooltip */
.tooltip {
  position: absolute;
  left: 60px;
  background-color: rgba(212, 84, 19, 0.9);
  color: black;
  padding: 8px 12px;
  border-radius: 6px;
  font-size: 22px;
  font-weight: 500;
  white-space: nowrap;
  opacity: 0;
  visibility: hidden;
  transition: all 0.3s ease;
  z-index: 9999; /* Aumentado significativamente */
  backdrop-filter: blur(10px);
  pointer-events: none; /* Evita interferência com outros elementos */
}

.tooltip::before {
  content: '';
  position: absolute;
  left: -4px;
  top: 50%;
  transform: translateY(-50%);
  width: 0;
  height: 0;
  border-top: 4px solid transparent;
  border-bottom: 4px solid transparent;
  border-right: 4px solid rgba(212, 84, 19, 0.9);
}

.nav-button:hover .tooltip {
  opacity: 1;
  visibility: visible;
  transform: translateX(5px);
}

/* Responsividade */
@media (max-width: 768px) {
  .navbar {
    width: 100%;
    height: 60px;
    flex-direction: row;
    justify-content: center;
    padding: 0 20px;
    border-radius: 15px;
  }
  
  .nav-container {
    flex-direction: row;
    gap: 10px;
  }
  
  .nav-button {
    width: 40px;
    height: 40px;
  }
  
  .nav-icon {
    width: 20px;
    height: 20px;
  }
  
  /* Tooltip para mobile */
  .tooltip {
    left: 50%;
    top: -40px;
    transform: translateX(-50%);
  }
  
  .tooltip::before {
    left: 50%;
    top: 100%;
    transform: translateX(-50%);
    border-left: 4px solid transparent;
    border-right: 4px solid transparent;
    border-top: 4px solid rgba(0, 0, 0, 0.9);
    border-bottom: none;
  }
  
  .nav-button:hover .tooltip {
    transform: translateX(-50%) translateY(-5px);
  }
}
</style>