<template>
  <section id="about" class="about-section">
    <div class="content">
      <div class="about-header">
        <h1 class="section-title">About Me</h1>
        <p class="section-subtitle">My journey in technology and development</p>
      </div>
      
      <div class="about-intro">
        <p class="intro-text">
          My name is Gabriel Penke, and I'm a Full Stack Developer from Brazil with over 5 years of experience building systems, integrating APIs, and delivering high-impact solutions for businesses.
        </p>
      </div>

      <div class="timeline">
        <div class="timeline-item" v-for="(item, index) in timelineData" :key="index">
          <div class="timeline-marker">
            <div class="marker-icon">{{ item.icon }}</div>
          </div>
          <div class="timeline-content">
            <div class="timeline-header">
              <h3 class="timeline-title">{{ item.title }}</h3>
              <span class="timeline-year">{{ item.year }}</span>
            </div>
            <div class="timeline-description">
              <p v-for="(description, descIndex) in item.descriptions" :key="descIndex">
                {{ description }}
              </p>
            </div>
            <div class="timeline-tech" v-if="item.technologies">
              <span class="tech-tag" v-for="tech in item.technologies" :key="tech">{{ tech }}</span>
            </div>
          </div>
        </div>
      </div>

      <div class="freelance-section">
        <h2 class="freelance-title">🌐 Freelance Projects</h2>
        <p class="freelance-intro">I've built and deployed various freelance solutions:</p>
        <div class="freelance-grid">
          <div class="freelance-item" v-for="(project, index) in freelanceProjects" :key="index">
            <div class="project-icon">{{ project.icon }}</div>
            <h4 class="project-title">{{ project.title }}</h4>
            <p class="project-tech">{{ project.tech }}</p>
          </div>
        </div>
      </div>

      <div class="about-footer">
        <p class="footer-text">
          Today, I'm focused on contributing to international teams, building clean, scalable, and meaningful applications using PHP, JavaScript, Python, Node.js, and modern tools like Docker, GitHub Actions, and AI-powered integrations.
        </p>
        <div class="cta-section">
          <h3 class="cta-title">Let's build something great together.</h3>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
const timelineData = [
  {
    icon: '🛠️',
    year: '2021',
    title: 'The Beginning',
    descriptions: [
      'I started my journey as a programming intern at Grupo SN, where I quickly moved from maintenance tasks to delivering a full customer-facing platform: Siga SN, built with CodeIgniter and SQL Server.',
      'After just 4 months, I was promoted to Junior Developer.'
    ],
    technologies: ['CodeIgniter', 'SQL Server', 'PHP']
  },
  {
    icon: '🚀',
    year: '2022',
    title: 'Scalable Solutions',
    descriptions: [
      'I developed Calcário 360, a complete billing system using CodeIgniter 4, Bootstrap 5, jQuery, and SQL Server, integrating with internal APIs and Totvs RM.',
      'I also contributed to the Monitor Fiscal, a system that automates access to SEFAZ for downloading and managing fiscal documents.'
    ],
    technologies: ['CodeIgniter 4', 'Bootstrap 5', 'jQuery', 'SQL Server', 'Totvs RM']
  },
  {
    icon: '🛰️',
    year: '2022',
    title: 'Real-Time Innovation',
    descriptions: [
      'I created a vehicle tracking system using Node.js, Google Maps API, and MySQL, which collected GPS data from trucks and displayed their routes in real-time, resulting in significant fuel savings.'
    ],
    technologies: ['Node.js', 'Google Maps API', 'MySQL', 'GPS Tracking']
  },
  {
    icon: '👨‍💼',
    year: '2023',
    title: 'Growth & Leadership',
    descriptions: [
      'I joined Delta Global as a Mid-level Developer and quickly became a Tech Lead. I led multiple API integration projects with major clients like Hyundai and Randon, using PHP (CodeIgniter), React, and ElasticSearch for log optimization.',
      'I also built a WhatsApp chatbot integrated with ChatGPT, Azure AI, and later Gemini, fully containerized with Docker on a VPS.'
    ],
    technologies: ['PHP', 'React', 'ElasticSearch', 'ChatGPT', 'Azure AI', 'Docker']
  },
  {
    icon: '🏗️',
    year: '2024',
    title: 'Full Stack Expansion',
    descriptions: [
      'Back at Grupo SN, I created a Flutter mobile app for construction clients and developed an internal e-commerce platform in Laravel, including a gamified system for rewarding employees with virtual coins.',
      'I also built a Python-based camera system that takes automatic snapshots of trucks during weighing, enhancing audit processes.'
    ],
    technologies: ['Flutter', 'Laravel', 'Python', 'Docker', 'VPS']
  }
];

const freelanceProjects = [
  {
    icon: '📝',
    title: 'Digital Signature Platform',
    tech: 'Python'
  },
  {
    icon: '🚗',
    title: 'Parking Management System',
    tech: 'CodeIgniter 4'
  },
  {
    icon: '📊',
    title: 'AI Monitoring Dashboards',
    tech: 'Vue.js + CodeIgniter'
  },
  {
    icon: '📈',
    title: 'Performance Indicators Platform',
    tech: 'Vue.js'
  }
];
</script>

<style scoped>
.about-section {
  min-height: 100vh;
  padding: 40px;
  background: linear-gradient(135deg, rgba(255,255,255,0.1), rgba(255,255,255,0.05));
  backdrop-filter: blur(10px);
  border-radius: 20px;
  margin: 20px;
  border: 1px solid rgba(255,255,255,0.1);
}

.content {
  max-width: 1000px;
  margin: 0 auto;
}

.about-header {
  text-align: center;
  margin-bottom: 50px;
}

.section-title {
  font-size: 3rem;
  font-weight: 700;
  margin-bottom: 10px;
  background: linear-gradient(45deg, #ff6b35, #68f128);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.section-subtitle {
  font-size: 1.3rem;
  color: rgba(255,255,255,0.8);
  font-weight: 500;
}

.about-intro {
  margin-bottom: 60px;
  text-align: center;
}

.intro-text {
  font-size: 1.2rem;
  line-height: 1.6;
  color: rgba(255,255,255,0.9);
  max-width: 800px;
  margin: 0 auto;
}

/* Timeline Styles */
.timeline {
  position: relative;
  margin-bottom: 60px;
}

.timeline::before {
  content: '';
  position: absolute;
  left: 30px;
  top: 0;
  bottom: 0;
  width: 2px;
  background: linear-gradient(to bottom, #ff6b35, #68f128);
}

.timeline-item {
  position: relative;
  margin-bottom: 40px;
  padding-left: 80px;
}

.timeline-marker {
  position: absolute;
  left: 0;
  top: 0;
  width: 60px;
  height: 60px;
  background: rgba(255,255,255,0.1);
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  backdrop-filter: blur(10px);
  border: 2px solid rgba(255,255,255,0.2);
}

.marker-icon {
  font-size: 1.5rem;
}

.timeline-content {
  background: rgba(255,255,255,0.05);
  padding: 25px;
  border-radius: 15px;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255,255,255,0.1);
  transition: transform 0.3s ease;
}

.timeline-content:hover {
  transform: translateY(-5px);
}

.timeline-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 15px;
}

.timeline-title {
  font-size: 1.4rem;
  font-weight: 600;
  color: #ff6b35;
  margin: 0;
}

.timeline-year {
  background: linear-gradient(45deg, #ff6b35, #68f128);
  color: white;
  padding: 5px 15px;
  border-radius: 20px;
  font-size: 0.9rem;
  font-weight: 600;
}

.timeline-description {
  margin-bottom: 15px;
}

.timeline-description p {
  color: rgba(255,255,255,0.9);
  line-height: 1.6;
  margin-bottom: 10px;
}

.timeline-tech {
  display: flex;
  flex-wrap: wrap;
  gap: 8px;
}

.tech-tag {
  background: rgba(104, 241, 40, 0.2);
  color: #68f128;
  padding: 4px 12px;
  border-radius: 15px;
  font-size: 0.8rem;
  font-weight: 500;
  border: 1px solid rgba(104, 241, 40, 0.3);
}

/* Freelance Section */
.freelance-section {
  margin-bottom: 50px;
}

.freelance-title {
  font-size: 2rem;
  color: #68f128;
  margin-bottom: 20px;
  text-align: center;
}

.freelance-intro {
  text-align: center;
  color: rgba(255,255,255,0.8);
  margin-bottom: 30px;
  font-size: 1.1rem;
}

.freelance-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 20px;
}

.freelance-item {
  background: rgba(255,255,255,0.05);
  padding: 25px;
  border-radius: 15px;
  text-align: center;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255,255,255,0.1);
  transition: transform 0.3s ease;
}

.freelance-item:hover {
  transform: translateY(-5px);
}

.project-icon {
  font-size: 2.5rem;
  margin-bottom: 15px;
}

.project-title {
  color: #ff6b35;
  font-size: 1.2rem;
  font-weight: 600;
  margin-bottom: 10px;
}

.project-tech {
  color: rgba(255,255,255,0.7);
  font-size: 0.9rem;
}

/* Footer */
.about-footer {
  text-align: center;
}

.footer-text {
  font-size: 1.1rem;
  line-height: 1.6;
  color: rgba(255,255,255,0.9);
  margin-bottom: 30px;
  max-width: 800px;
  margin-left: auto;
  margin-right: auto;
}

.cta-section {
  margin-top: 40px;
}

.cta-title {
  font-size: 1.8rem;
  color: #68f128;
  font-weight: 600;
}

/* Responsividade */
@media (max-width: 768px) {
  .about-section {
    padding: 20px;
    margin: 10px;
  }
  
  .section-title {
    font-size: 2.5rem;
  }
  
  .timeline-item {
    padding-left: 60px;
  }
  
  .timeline-marker {
    width: 50px;
    height: 50px;
  }
  
  .timeline::before {
    left: 25px;
  }
  
  .timeline-header {
    flex-direction: column;
    align-items: flex-start;
    gap: 10px;
  }
  
  .freelance-grid {
    grid-template-columns: 1fr;
  }
}
</style> 