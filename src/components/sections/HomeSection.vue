<template>
  <section id="home" class="home-section">
    <div class="content">
      <div class="hero-content">
        <h1 class="hero-title">Welcome to My Portfolio</h1>
        <p class="hero-subtitle">Full Stack Developer with +5 years of experience</p>
        <div class="hero-description">
          <p>Hi, I'm Gabriel and I'm a Full Stack Developer with +5 years of experience developing systems and delivering solutions to clients.</p>
        </div>
        <div class="hero-actions">
          <button class="btn-primary">View Projects</button>
          <button class="btn-secondary">Download CV</button>
        </div>
      </div>
    </div>
  </section>
</template>

<script setup>
// Componente Home - Seção inicial do portfólio
</script>

<style scoped>
.home-section {
  min-height: 100vh;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 40px;
  background: linear-gradient(135deg, rgba(255,255,255,0.1), rgba(255,255,255,0.05));
  backdrop-filter: blur(10px);
  border-radius: 20px;
  margin: 20px;
  border: 1px solid rgba(255,255,255,0.1);
}

.content {
  max-width: 800px;
  text-align: center;
}

.hero-content {
  color: white;
}

.hero-title {
  font-size: 3.5rem;
  font-weight: 700;
  margin-bottom: 20px;
  background: linear-gradient(45deg, #ff6b35, #68f128);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.hero-subtitle {
  font-size: 1.5rem;
  margin-bottom: 30px;
  color: rgba(255,255,255,0.9);
  font-weight: 500;
}

.hero-description {
  font-size: 1.2rem;
  line-height: 1.6;
  margin-bottom: 40px;
  color: rgba(255,255,255,0.8);
  max-width: 600px;
  margin-left: auto;
  margin-right: auto;
}

.hero-actions {
  display: flex;
  gap: 20px;
  justify-content: center;
  flex-wrap: wrap;
}

.btn-primary, .btn-secondary {
  padding: 15px 30px;
  border: none;
  border-radius: 10px;
  font-size: 1.1rem;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.3s ease;
  text-decoration: none;
  display: inline-block;
}

.btn-primary {
  background: linear-gradient(45deg, #ff6b35, #ff8c42);
  color: white;
  box-shadow: 0 4px 15px rgba(255, 107, 53, 0.4);
}

.btn-primary:hover {
  transform: translateY(-2px);
  box-shadow: 0 6px 20px rgba(255, 107, 53, 0.6);
}

.btn-secondary {
  background: rgba(255,255,255,0.1);
  color: white;
  border: 2px solid rgba(255,255,255,0.3);
  backdrop-filter: blur(10px);
}

.btn-secondary:hover {
  background: rgba(255,255,255,0.2);
  transform: translateY(-2px);
}

/* Responsividade */
@media (max-width: 768px) {
  .home-section {
    padding: 20px;
    margin: 10px;
  }
  
  .hero-title {
    font-size: 2.5rem;
  }
  
  .hero-subtitle {
    font-size: 1.2rem;
  }
  
  .hero-description {
    font-size: 1rem;
  }
  
  .hero-actions {
    flex-direction: column;
    align-items: center;
  }
  
  .btn-primary, .btn-secondary {
    width: 200px;
  }
}
</style> 