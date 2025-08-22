<template>
  <section id="home" class="home-section">
    <div class="content">
      <div class="hero-content">
        <h1 class="hero-title">Welcome to My Portfolio</h1>
        <p class="hero-subtitle">Full Stack Developer with +5 years of experience</p>
        <div class="hero-description">
          <p>I really hope you like my portfolio and I'm looking forward to chat with you.</p>
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
/* Tablets grandes */
@media (max-width: 1200px) {
  .home-section {
    padding: 35px;
    margin: 18px;
  }
  
  .hero-title {
    font-size: 3rem;
  }
  
  .hero-subtitle {
    font-size: 1.4rem;
  }
  
  .hero-description {
    font-size: 1.1rem;
  }
}

/* Tablets */
@media (max-width: 1024px) {
  .home-section {
    padding: 30px;
    margin: 15px;
  }
  
  .hero-title {
    font-size: 2.8rem;
  }
  
  .hero-subtitle {
    font-size: 1.3rem;
  }
  
  .hero-description {
    font-size: 1.05rem;
  }
}

/* Tablets pequenos */
@media (max-width: 900px) {
  .home-section {
    padding: 25px;
    margin: 12px;
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
}

/* Tablets pequenos e mobile landscape */
@media (max-width: 768px) {
  .home-section {
    padding: 20px;
    margin: 10px;
    min-height: 80vh;
  }
  
  .hero-title {
    font-size: 2.2rem;
    margin-bottom: 15px;
  }
  
  .hero-subtitle {
    font-size: 1.1rem;
    margin-bottom: 20px;
  }
  
  .hero-description {
    font-size: 0.95rem;
    margin-bottom: 30px;
  }
  
  .hero-actions {
    flex-direction: column;
    align-items: center;
    gap: 15px;
  }
  
  .btn-primary, .btn-secondary {
    width: 200px;
    padding: 12px 25px;
    font-size: 1rem;
  }
}

/* Mobile grande */
@media (max-width: 480px) {
  .home-section {
    padding: 15px;
    margin: 8px;
    min-height: 70vh;
  }
  
  .hero-title {
    font-size: 1.8rem;
    margin-bottom: 12px;
  }
  
  .hero-subtitle {
    font-size: 1rem;
    margin-bottom: 15px;
  }
  
  .hero-description {
    font-size: 0.9rem;
    margin-bottom: 25px;
  }
  
  .hero-actions {
    gap: 12px;
  }
  
  .btn-primary, .btn-secondary {
    width: 180px;
    padding: 10px 20px;
    font-size: 0.95rem;
  }
}

/* Mobile pequeno */
@media (max-width: 360px) {
  .home-section {
    padding: 12px;
    margin: 6px;
    min-height: 65vh;
  }
  
  .hero-title {
    font-size: 1.6rem;
    margin-bottom: 10px;
  }
  
  .hero-subtitle {
    font-size: 0.9rem;
    margin-bottom: 12px;
  }
  
  .hero-description {
    font-size: 0.85rem;
    margin-bottom: 20px;
  }
  
  .btn-primary, .btn-secondary {
    width: 160px;
    padding: 8px 16px;
    font-size: 0.9rem;
  }
}
</style> 