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
            title: 'Project 1',
            description: 'Description of project 1',
            image: 'image1.jpg',
            link: 'https://www.google.com'
        },
        {
            title: 'Project 2',
            description: 'Description of project 2',
            image: 'image2.jpg',
            link: 'https://www.google.com'
        },
        {
            title: 'Project 3',
            description: 'Description of project 3',
            image: 'image3.jpg',
            link: 'https://www.google.com'
        },
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

</style>