<template>
  <section id="projects" class="projects-section">
    <div class="projects-container">
        <div class="projects-header">
            <h2 class="projects-title">Projects</h2>
            <p class="projects-description">Here are some of the personal projects I've worked on.</p>
        </div>
        <div class="projects-grid">
            <div class="project-item" v-for="project in projects" :key="project.id">
                <div class="project-image">
                    <img :src="project.image" :alt="project.title" />
                </div>
                <h3 class="project-title">{{ project.title }}</h3>
                <p class="project-description">{{ project.description }}</p>
                <div class="project-technologies">
                    <template v-for="tech in project.technologies" :key="tech">
                        <span class="tech-tag">
                            <span class="tech-tag-label">{{ tech }}</span>
                        </span>
                    </template>
                </div>
                <a :href="project.link" class="project-link">View Project</a>
                <button class="project-button" @click="showProjectDetails(project.id)">About Project</button>
            </div>
        </div>
    </div>

    <!-- Modal de detalhes do projeto -->
    <div v-if="isModalOpen" class="modal-overlay" @click="closeModal">
        <div class="modal-content" @click.stop>
            <button class="modal-close" @click="closeModal">&times;</button>
            
            <div v-if="selectedProject" class="modal-body">
                <div class="modal-header">
                    <h2 class="modal-title">{{ selectedProject.title }}</h2>
                    <div class="modal-subtitle">{{ selectedProject.subtitle }}</div>
                </div>
                
                <div class="modal-image">
                    <img :src="selectedProject.image" :alt="selectedProject.title" />
                </div>
                
                <div class="modal-description">
                    <h3>Description</h3>
                    <p>{{ selectedProject.fullDescription }}</p>
                </div>
                
                <div class="modal-features">
                    <h3>Key Features</h3>
                    <ul>
                        <li v-for="feature in selectedProject.features" :key="feature">{{ feature }}</li>
                    </ul>
                </div>
                
                <div class="modal-technologies">
                    <h3>Technologies Used</h3>
                    <div class="tech-tags">
                        <span v-for="tech in selectedProject.technologies" :key="tech" class="tech-tag-modal">
                            {{ tech }}
                        </span>
                    </div>
                </div>
                
                <div class="modal-links">
                    <a :href="selectedProject.link" class="modal-link" target="_blank">
                        <span>View Live Project</span>
                    </a>
                    <a :href="selectedProject.github" class="modal-link github" target="_blank" v-if="selectedProject.github">
                        <span>View on GitHub</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
  </section>
</template>

<script setup>
import { ref } from 'vue';

const isModalOpen = ref(false);
const selectedProject = ref(null);

const projects = ref([
    {
        id: 1,
        title: 'Mural da UFLA',
        subtitle: 'Platform to help students',
        description: 'A platform where students can find a housing offer',
        fullDescription: 'It’s a platform designed to help students from the city of Lavras, Minas Gerais, Brazil, find a spot in a student housing (“república”). Users can post ads completely free of charge, and the listings can also include private lessons. The system’s front end is built with Vue.js, and there’s a Laravel API that provides data for another platform I’m developing.',
        image: 'mural.png',
        technologies: ['Vue.js', 'Node.js', 'MySQL', 'Laravel', 'Docker', 'Redis'],
        features: [
            'User authentication and authorization',
            'Housing offer management',
            'Housing offer search',
            'Housing offer details',
            'Housing offer contact',
            'Housing offer photos',
            'Housing offer videos',
        ],
        link: 'https://muralufla.com.br',
    },
    {
        id: 2,
        title: 'Locaciona',
        subtitle: 'Platform to manage parking lots',
        description: 'A platform to manage parking lots',
        fullDescription: 'A platform to manage parking lots',
        image: 'locaciona.png',
        technologies: ['CodeIgniter 4', 'jQuery', 'JavaScript', 'Bootstrap 5'],
        features: [
            'Parking lot management',
            'charging station management',
            'user management',
            'payment management',
            'report management',
            'notification management',
            'user management',
            'payment management',
            'report management',
            'notification management',
        ],
        link: 'https://locaciona.com.br',
    },
    {
        id: 3,
        title: "Flag's Game",
        subtitle: 'A simple game to test your knowledge about flags',
        description: 'When a flag is shown, the user must guess the country it belongs to',
        fullDescription: 'A simple game to test your knowledge about flags',
        image: 'flags_game.png',
        technologies: ['Vue.js', 'CSS3', 'JavaScript', 'Vite', 'Flags API Integration'],
        features: [
            'Flags API Integration',
            'Score system',
            'Reset option',
            'Country recognition',
        ],
        link: 'https://flags-game.penke.dev',
    },
    {
        id: 4,
        title: 'Penke Theme',
        subtitle: 'My own theme for VSCode',
        description: 'My own theme for VSCode',
        fullDescription: 'A beautiful and modern dark theme for Visual Studio Code inspired by Git Bash Linux terminal aesthetics. Features a classic black background with vibrant green accents, providing excellent syntax highlighting and a comfortable coding experience.',
        image: 'penke-theme.png',
        technologies: ['VSCode', 'JSON', 'CSS'],
        features: [
            'My own theme for VSCode',
        ],
        link: 'https://marketplace.visualstudio.com/items?itemName=GabrielPenke.penke-theme&ssr=false#review-details',
    },
    // {
    //     id: 5,
    //     title: 'Social Media Dashboard',
    //     subtitle: 'Analytics and management platform',
    //     description: 'A comprehensive dashboard for managing and analyzing social media accounts.',
    //     fullDescription: 'A powerful social media management platform that allows users to schedule posts, analyze performance metrics, and manage multiple social media accounts from a single dashboard. The platform provides detailed analytics, content calendar, automated posting, and engagement tracking. It supports major social media platforms including Facebook, Twitter, Instagram, and LinkedIn.',
    //     image: 'image5.jpg',
    //     technologies: ['React', 'Python', 'PostgreSQL', 'Redis', 'Social APIs'],
    //     features: [
    //         'Multi-platform social media management',
    //         'Content scheduling and automation',
    //         'Performance analytics and reporting',
    //         'Content calendar and planning',
    //         'Engagement tracking and monitoring',
    //         'Team collaboration tools',
    //         'API integrations with major platforms'
    //     ],
    //     link: 'https://www.google.com',
    //     github: 'https://github.com/username/social-dashboard'
    // }
]);

const showProjectDetails = (projectId) => {
    selectedProject.value = projects.value.find(p => p.id === projectId);
    isModalOpen.value = true;
    document.body.style.overflow = 'hidden'; // Previne scroll do body
};

const closeModal = () => {
    isModalOpen.value = false;
    selectedProject.value = null;
    document.body.style.overflow = 'auto'; // Restaura scroll do body
};
</script>

<style scoped>
.projects-section {
  min-height: 100vh;
  padding: 40px;
  background: linear-gradient(135deg, rgba(255,255,255,0.1), rgba(255,255,255,0.05));
  backdrop-filter: blur(10px);
  border-radius: 20px;
  margin: 20px;
  border: 1px solid rgba(255,255,255,0.1);
}

.projects-container {
    max-width: 1200px;
}

.projects-header {
  text-align: center;
  margin-bottom: 50px;
}

.projects-title {
  font-size: 2rem;
  font-weight: 700;
  margin-bottom: 10px;
  color: #fff;
}

.projects-description {
  font-size: 1.2rem;
  color: #fff;
}

.projects-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 20px;
}

.project-item {
  background: rgba(255,255,255,0.05);
  padding: 25px;
  border-radius: 15px;
  text-align: center;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255,255,255,0.1);
  transition: transform 0.3s ease;
}

.project-item:hover {
  transform: translateY(-5px);
}

.project-image {
  width: 100%;
  height: 200px;
  object-fit: contain;
}
.project-image img {
  width: 100%;
  height: 100%;
  object-fit: contain;
  border-radius: 10px;
}

.project-title {
  font-size: 1.5rem;
  font-weight: 600;
  color: #fff;
}

.project-description {
  font-size: 1.2rem;
  color: #fff;
}

.project-link {
  font-size: 1.2rem;
  color: #fff;
}

.project-button {
  margin-left: 10px;
  padding: 10px 20px;
  border-radius: 5px;
  background-color: #1267e6;
  color: #fff;
  border: none;
  cursor: pointer;
  transition: all 0.3s ease;
}

.project-technologies {
  display: flex;
  flex-wrap: wrap;
  gap: 8px;
  margin: 15px 0 20px 0;
  justify-content: center;
}

.tech-tag {
    display: inline-block;
}

.tech-tag-label {
  background: rgba(104, 241, 40, 0.2);
  color: #68f128;
  padding: 4px 12px;
  border-radius: 15px;
  font-size: 0.8rem;
  font-weight: 500;
  border: 1px solid rgba(104, 241, 40, 0.3);
  display: inline-block;
}

/* Modal Styles */
.modal-overlay {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.7);
    display: flex;
    justify-content: center;
    align-items: center;
    z-index: 1000;
}

.modal-content {
    background: #1a1a1a;
    border-radius: 15px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
    width: 90%;
    max-width: 800px;
    max-height: 90vh;
    display: flex;
    flex-direction: column;
    position: relative;
    overflow: hidden;
}

.modal-close {
    position: absolute;
    top: 15px;
    right: 15px;
    background: none;
    border: none;
    font-size: 2rem;
    color: #fff;
    cursor: pointer;
    transition: color 0.3s ease;
}

.modal-close:hover {
    color: #ff6b6b;
}

.modal-body {
    padding: 20px;
    overflow-y: auto;
    flex-grow: 1;
}

.modal-header {
    text-align: center;
    margin-bottom: 20px;
}

.modal-title {
    font-size: 2.5rem;
    font-weight: 700;
    color: #fff;
    margin-bottom: 5px;
}

.modal-subtitle {
    font-size: 1.2rem;
    color: #ccc;
}

.modal-image {
    width: 100%;
    height: 300px;
    border-radius: 10px;
    margin-bottom: 20px;
    overflow: hidden;
}

.modal-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.modal-description h3,
.modal-features h3,
.modal-technologies h3 {
    font-size: 1.8rem;
    font-weight: 600;
    color: #fff;
    margin-bottom: 15px;
    border-bottom: 1px solid rgba(255,255,255,0.1);
    padding-bottom: 10px;
}

.modal-description p {
    font-size: 1.2rem;
    color: #fff;
    line-height: 1.8;
    margin-bottom: 20px;
}

.modal-features ul {
    list-style: none;
    padding: 0;
    margin: 0;
}

.modal-features li {
    font-size: 1.1rem;
    color: #ccc;
    margin-bottom: 10px;
    display: flex;
    align-items: center;
}

.modal-features li::before {
    content: "•";
    color: #68f128;
    margin-right: 10px;
}

.modal-technologies .tech-tags {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
}

.modal-technologies .tech-tag-modal {
    background: rgba(104, 241, 40, 0.2);
    color: #68f128;
    padding: 6px 15px;
    border-radius: 20px;
    font-size: 0.9rem;
    font-weight: 500;
    border: 1px solid rgba(104, 241, 40, 0.3);
    display: inline-block;
}

.modal-links {
    margin-top: 20px;
    display: flex;
    gap: 15px;
    justify-content: center;
}

.modal-link {
    background: #1267e6;
    color: #fff;
    padding: 12px 25px;
    border-radius: 8px;
    font-size: 1.1rem;
    font-weight: 600;
    text-decoration: none;
    display: flex;
    align-items: center;
    gap: 10px;
    transition: background 0.3s ease;
    text-decoration: none;
    cursor: pointer;
}

.modal-link:hover {
    background: #1055c2;
}

.modal-link.github {
    background: #333;
    color: #fff;
}

.modal-link.github:hover {
    background: #222;
}

/* Responsividade para o modal */
@media (max-width: 768px) {
  .modal-content {
    width: 95%;
    max-height: 95vh;
    margin: 10px;
  }
  
  .modal-body {
    padding: 15px;
  }
  
  .modal-title {
    font-size: 2rem;
  }
  
  .modal-subtitle {
    font-size: 1rem;
  }
  
  .modal-image {
    height: 200px;
  }
  
  .modal-description h3,
  .modal-features h3,
  .modal-technologies h3 {
    font-size: 1.5rem;
  }
  
  .modal-description p {
    font-size: 1rem;
  }
  
  .modal-features li {
    font-size: 1rem;
  }
  
  .modal-links {
    flex-direction: column;
    align-items: center;
  }
  
  .modal-link {
    width: 100%;
    max-width: 250px;
    justify-content: center;
  }
}

@media (max-width: 480px) {
  .modal-content {
    width: 98%;
    margin: 5px;
  }
  
  .modal-body {
    padding: 12px;
  }
  
  .modal-title {
    font-size: 1.8rem;
  }
  
  .modal-image {
    height: 150px;
  }
  
  .modal-description h3,
  .modal-features h3,
  .modal-technologies h3 {
    font-size: 1.3rem;
  }
  
  .modal-description p {
    font-size: 0.95rem;
  }
  
  .modal-features li {
    font-size: 0.95rem;
  }
  
  .modal-link {
    padding: 10px 20px;
    font-size: 1rem;
  }
}
</style>