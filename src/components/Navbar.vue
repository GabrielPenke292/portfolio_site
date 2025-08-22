<!-- Menu Lateral de navegação-->
<template>
  <nav class="navbar">
    <div class="nav-container">
      <button 
        v-for="item in navItems" 
        :key="item.id"
        :class="['nav-button', { active: activeSection === item.id }]"
        @click="handleSectionChange(item.id)"
        :title="item.label"
      >
        <component :is="item.icon" class="nav-icon" />
        <span class="tooltip">{{ item.label }}</span>
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
  File, 
  BookOpen
} from 'lucide-vue-next';

const props = defineProps({
  activeSection: {
    type: String,
    default: 'home'
  }
});

const emit = defineEmits(['section-change']);

const navItems = [
  { id: 'home', icon: Home, label: 'Home' },
  { id: 'about', icon: FileText, label: 'About' },
  { id: 'projects', icon: List, label: 'Projects' },
  { id: 'courses', icon: BookOpen, label: 'Courses' },
  { id: 'skills', icon: PenTool, label: 'Skills' },
  { id: 'contact', icon: MessageCircle, label: 'Contact' },
  { id: 'resume', icon: File, label: 'Resume' },
];

const handleSectionChange = (sectionId) => {
  emit('section-change', sectionId);
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
  z-index: 1000;
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
  z-index: 9999;
  backdrop-filter: blur(10px);
  pointer-events: none;
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
/* Tablets grandes */
@media (max-width: 1200px) {
  .navbar {
    width: 90px;
    padding: 18px 0;
  }
  
  .nav-button {
    width: 45px;
    height: 45px;
  }
  
  .nav-icon {
    width: 22px;
    height: 22px;
  }
}

/* Tablets */
@media (max-width: 1024px) {
  .navbar {
    width: 80px;
    padding: 15px 0;
  }
  
  .nav-button {
    width: 42px;
    height: 42px;
  }
  
  .nav-icon {
    width: 20px;
    height: 20px;
  }
}

/* Tablets pequenos */
@media (max-width: 900px) {
  .navbar {
    width: 70px;
    padding: 12px 0;
  }
  
  .nav-button {
    width: 38px;
    height: 38px;
  }
  
  .nav-icon {
    width: 18px;
    height: 18px;
  }
}

/* Tablets pequenos e mobile landscape */
@media (max-width: 768px) {
  .navbar {
    width: 100%;
    height: 80px;
    flex-direction: row;
    justify-content: center;
    padding: 0 15px;
    border-radius: 15px;
    margin-bottom: 0;
  }
  
  .nav-container {
    flex-direction: row;
    gap: 15px;
    width: 100%;
    justify-content: center;
  }
  
  .nav-button {
    width: 50px;
    height: 50px;
  }
  
  .nav-icon {
    width: 22px;
    height: 22px;
  }
  
  /* Tooltip para mobile */
  .tooltip {
    left: 50%;
    top: -50px;
    transform: translateX(-50%);
    font-size: 18px;
    padding: 6px 10px;
  }
  
  .tooltip::before {
    left: 50%;
    top: 100%;
    transform: translateX(-50%);
    border-left: 4px solid transparent;
    border-right: 4px solid transparent;
    border-top: 4px solid rgba(212, 84, 19, 0.9);
    border-bottom: none;
  }
  
  .nav-button:hover .tooltip {
    transform: translateX(-50%) translateY(-5px);
  }
}

/* Mobile grande */
@media (max-width: 480px) {
  .navbar {
    height: 60px;
    padding: 0 10px;
  }
  
  .nav-container {
    gap: 8px;
  }
  
  .nav-button {
    width: 40px;
    height: 40px;
  }
  
  .nav-icon {
    width: 18px;
    height: 18px;
  }
  
  .tooltip {
    font-size: 16px;
    padding: 5px 8px;
    top: -40px;
  }
}

/* Mobile pequeno */
@media (max-width: 360px) {
  .navbar {
    height: 55px;
    padding: 0 8px;
  }
  
  .nav-container {
    gap: 6px;
  }
  
  .nav-button {
    width: 35px;
    height: 35px;
  }
  
  .nav-icon {
    width: 16px;
    height: 16px;
  }
  
  .tooltip {
    font-size: 14px;
    padding: 4px 6px;
    top: -35px;
  }
}
</style>