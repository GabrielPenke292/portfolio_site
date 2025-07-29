<!-- Menu Lateral de navegação-->
<template>
  <nav class="navbar">
    <div class="nav-container">
      <button class="nav-button active" @click="setActive('home')">
        <Home class="nav-icon" />
      </button>
      
      <button class="nav-button" @click="setActive('about')">
        <FileText class="nav-icon" />
      </button>
      
      <button class="nav-button" @click="setActive('projects')">
        <List class="nav-icon" />
      </button>
      
      <button class="nav-button" @click="setActive('skills')">
        <PenTool class="nav-icon" />
      </button>
      
      <button class="nav-button" @click="setActive('contact')">
        <MessageCircle class="nav-icon" />
      </button>
      
      <button class="nav-button" @click="setActive('testimonials')">
        <Quote class="nav-icon" />
      </button>
      
      <button class="nav-button" @click="setActive('resume')">
        <File class="nav-icon" />
      </button>
      
      <button class="nav-button" @click="setActive('profile')">
        <User class="nav-icon" />
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
  margin: 0; /* Remove margem */
}

.nav-container {
  display: flex;
  flex-direction: column;
  gap: 15px;
  align-items: center;
  margin: 0; /* Remove margem */
  padding: 0; /* Remove padding */
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
}
</style>