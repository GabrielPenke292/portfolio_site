<template>
  <section id="projects" class="projects-section">
    <div class="projects-container">
        <div class="projects-header">
            <h2 class="projects-title">Projects</h2>
            <p class="projects-description">Here are some of the projects I've worked on.</p>
        </div>
    </div>
  </section>
</template>

<script>
  const projects = [
    {
        title: 'Project 1',
        description: 'Description of project 1',
        image: 'image1.jpg',
        link: 'https://www.google.com'
    },
    {
        title: 'Project 2',
        description: 'Description of project 1',
        image: 'image1.jpg',
        link: 'https://www.google.com'
    },
    {
        title: 'Project 3',
        description: 'Description of project 2',
        image: 'image2.jpg',
        link: 'https://www.google.com'
    },
  ]

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

</style>