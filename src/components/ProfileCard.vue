<template>
  <div class="profile-card">
    <div class="profile-image">
      <img :src="profile.image" :alt="profile.name" />
    </div>
    <div class="profile-info">
      <h2>{{ profile.name }}</h2>
      <h3>{{ profile.title }}</h3>
      <p>{{ profile.description }}</p>
    </div>
  </div>
</template>

<script setup>
const props = defineProps({
  profile: {
    type: Object,
    required: true,
  },
});
</script>

<style scoped>
.profile-card {
  background-color: rgba(255, 255, 255, 0.9);
  border-radius: 15px;
  padding: 30px;
  box-shadow: 0 8px 32px rgba(104, 241, 40, 0.5);
  backdrop-filter: blur(10px);
  text-align: center;
  flex: 1; /* Ocupa o espaço restante */
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center; /* Centraliza o conteúdo */
}

.profile-image {
  margin-bottom: 20px;
}

.profile-image img {
  width: 150px;
  height: 150px;
  border-radius: 50%;
  object-fit: cover;
  border: 4px solid rgba(255, 255, 255, 0.8);
  box-shadow: 0 4px 16px rgba(104, 241, 40, 0.3);
}

.profile-info h2 {
  color: #333;
  margin-bottom: 10px;
  font-size: 1.8rem;
  font-weight: 600;
  background-color: #333;
  color: #fff;
  padding: 15px;
  border-radius: 10px;
}

.profile-info h3 {
  color: #333;
  margin-bottom: 10px;
  font-size: 1.2rem;
  font-weight: 600;
  background-color: #333;
  color: #fff;
  padding: 15px;
  border-radius: 10px;
}

.profile-info p {
  color: #666;
  font-size: 1.1rem;
  margin: 0;
  background-color: #333;
  color: #fff;
  padding: 15px;
  border-radius: 10px;
}

/* Responsividade */
/* Tablets grandes */
@media (max-width: 1200px) {
  .profile-card {
    padding: 25px;
  }
  
  .profile-image img {
    width: 130px;
    height: 130px;
  }
  
  .profile-info h2 {
    font-size: 1.6rem;
    padding: 12px;
  }
  
  .profile-info h3 {
    font-size: 1.1rem;
    padding: 12px;
  }
  
  .profile-info p {
    font-size: 1rem;
    padding: 12px;
  }
}

/* Tablets */
@media (max-width: 1024px) {
  .profile-card {
    padding: 20px;
  }
  
  .profile-image img {
    width: 120px;
    height: 120px;
  }
  
  .profile-info h2 {
    font-size: 1.5rem;
    padding: 10px;
  }
  
  .profile-info h3 {
    font-size: 1rem;
    padding: 10px;
  }
  
  .profile-info p {
    font-size: 0.95rem;
    padding: 10px;
  }
}

/* Tablets pequenos */
@media (max-width: 900px) {
  .profile-card {
    padding: 18px;
  }
  
  .profile-image img {
    width: 110px;
    height: 110px;
  }
  
  .profile-info h2 {
    font-size: 1.4rem;
    padding: 8px;
  }
  
  .profile-info h3 {
    font-size: 0.95rem;
    padding: 8px;
  }
  
  .profile-info p {
    font-size: 0.9rem;
    padding: 8px;
  }
}

/* Tablets pequenos e mobile landscape */
@media (max-width: 768px) {
  .profile-card {
    padding: 20px;
    flex-direction: row;
    align-items: center;
    gap: 20px;
    text-align: left;
    width: 100%; /* Ocupa toda a largura disponível */
    min-height: 120px; /* Altura mínima para ocupar o espaço */
  }
  
  .profile-image {
    margin-bottom: 0;
    flex-shrink: 0; /* Evita que a imagem encolha */
  }
  
  .profile-image img {
    width: 80px;
    height: 80px;
  }
  
  .profile-info {
    flex: 1;
    display: flex;
    flex-direction: column;
    justify-content: center;
  }
  
  .profile-info h2 {
    font-size: 1.4rem;
    padding: 8px;
    margin-bottom: 8px;
  }
  
  .profile-info h3 {
    font-size: 1rem;
    padding: 6px;
    margin-bottom: 8px;
  }
  
  .profile-info p {
    font-size: 0.9rem;
    padding: 6px;
    margin: 0;
  }
}

/* Mobile grande */
@media (max-width: 480px) {
  .profile-card {
    padding: 15px;
    gap: 15px;
    min-height: 100px;
  }
  
  .profile-image img {
    width: 70px;
    height: 70px;
  }
  
  .profile-info h2 {
    font-size: 1.2rem;
    padding: 6px;
    margin-bottom: 6px;
  }
  
  .profile-info h3 {
    font-size: 0.9rem;
    padding: 5px;
    margin-bottom: 6px;
  }
  
  .profile-info p {
    font-size: 0.8rem;
    padding: 5px;
  }
}

/* Mobile pequeno */
@media (max-width: 360px) {
  .profile-card {
    padding: 12px;
    gap: 12px;
    min-height: 90px;
  }
  
  .profile-image img {
    width: 60px;
    height: 60px;
  }
  
  .profile-info h2 {
    font-size: 1.1rem;
    padding: 5px;
    margin-bottom: 5px;
  }
  
  .profile-info h3 {
    font-size: 0.8rem;
    padding: 4px;
    margin-bottom: 5px;
  }
  
  .profile-info p {
    font-size: 0.75rem;
    padding: 4px;
  }
}
</style>