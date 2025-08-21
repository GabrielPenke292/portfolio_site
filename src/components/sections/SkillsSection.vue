<template>
    <section id="skills" class="skills-section">
        <div class="skills-container">
            <div class="skills-header">
                <h2 class="skills-title">Skills</h2>
                <p class="skills-description">Here are some of the skills I've worked on.</p>
            </div>
            
        </div>
    </section>
</template>

<script>
import { Linkedin, Github } from 'lucide-vue-next'

export default {
    name: 'ContactSection',
    components: {
        Linkedin,
        Github
    },
    data() {
        return {
            
        }
    }
}
</script>

<style scoped>
.skills-section {
    min-height: 100vh;
    padding: 40px;
    background: linear-gradient(135deg, rgba(255, 255, 255, 0.1), rgba(255, 255, 255, 0.05));
    backdrop-filter: blur(10px);
    border-radius: 20px;
    margin: 20px;
    border: 1px solid rgba(255, 255, 255, 0.1);
}

.skills-container {
    max-width: 1200px;
}

.skills-header {
    text-align: center;
    margin-bottom: 50px;
}

.skills-title {
    font-size: 2rem;
    font-weight: 700;
    margin-bottom: 10px;
    color: #fff;
}

.skills-description {
    font-size: 1.2rem;
    color: #fff;
}


</style>