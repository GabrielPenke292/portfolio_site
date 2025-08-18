<template>
    <section id="contact" class="contact-section">
        <div class="contact-container">
            <div class="contact-header">
                <h2 class="contact-title">Contact</h2>
                <p class="contact-description">Send me a message.</p>
            </div>
        </div>
    </section>
</template>

<script>
export default {
    name: 'ContactSection',
    data() {
        return {
            
        }
    }
}
</script>

<style scoped>
.contact-section {
    min-height: 100vh;
    padding: 40px;
    background: linear-gradient(135deg, rgba(255, 255, 255, 0.1), rgba(255, 255, 255, 0.05));
    backdrop-filter: blur(10px);
    border-radius: 20px;
    margin: 20px;
    border: 1px solid rgba(255, 255, 255, 0.1);
}

.contact-container {
    max-width: 1200px;
}

.contact-header {
    text-align: center;
    margin-bottom: 50px;
}

.contact-title {
    font-size: 2rem;
    font-weight: 700;
    margin-bottom: 10px;
    color: #fff;
}

.contact-description {
    font-size: 1.2rem;
    color: #fff;
}

</style>