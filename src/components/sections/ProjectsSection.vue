<template>
  <section id="projects" class="projects-section">
    <div class="projects-container">
        <div class="projects-header">
            <h2 class="projects-title">Projects</h2>
            <p class="projects-description">Here are some of the projects I've worked on.</p>
        </div>
        <div class="projects-grid">
            <div class="project-item" v-for="project in projects" :key="project.title">
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
            </div>
        </div>
    </div>
  </section>
</template>

<script>
export default {
  name: 'ProjectsSection',
  data() {
    return {
      projects: [
        {
            id: 1,
            title: 'Project 1',
            description: 'Description of project 1',
            image: 'image1.jpg',
            technologies: ['PHP', 'MySQL', 'Bootstrap', 'jQuery'],
            link: 'https://www.google.com'
        },
        {
            id: 2,
            title: 'Project 2',
            description: 'Description of project 2',
            image: 'image2.jpg',
            technologies: ['PHP', 'MySQL', 'Bootstrap', 'jQuery'],
            link: 'https://www.google.com'
        },
        {
            id: 3,
            title: 'Project 3',
            description: 'Description of project 3',
            image: 'image3.jpg',
            technologies: ['PHP', 'MySQL', 'Bootstrap', 'jQuery'],
            link: 'https://www.google.com'
        },
        {
            id: 4,
            title: 'Project 4',
            description: 'Description of project 4',
            image: 'image4.jpg',
            technologies: ['PHP', 'MySQL', 'Bootstrap', 'jQuery'],
            link: 'https://www.google.com'
        },
        {
            id: 5,
            title: 'Project 5',
            description: 'Description of project 5',
            image: 'image5.jpg',
            technologies: ['PHP', 'MySQL', 'Bootstrap', 'jQuery'],
            link: 'https://www.google.com'
        }
      ]
    }
  }
}
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
  cursor: pointer;
}

.project-item:hover {
  transform: translateY(-5px);
}

.project-image {
  width: 100%;
  height: 200px;
  object-fit: cover;
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
</style>