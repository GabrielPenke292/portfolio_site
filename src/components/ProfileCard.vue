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
  margin-top: 20px;
  box-shadow: 0 8px 32px rgba(104, 241, 40, 0.5);
  backdrop-filter: blur(10px);
  text-align: center;
  max-width: 400px;
  z-index: 1;
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
@media (max-width: 768px) {
  .profile-card {
    padding: 20px;
    max-width: 100%;
    margin-top: 0;
  }
}
</style>