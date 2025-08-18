<template>
    <section id="contact" class="contact-section">
        <div class="contact-container">
            <div class="contact-header">
                <h2 class="contact-title">Contact</h2>
                <p class="contact-description">Send me a message.</p>
            </div>
            <div class="contact-form">  
                <form action="">
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" id="name" name="name" placeholder="Enter your name" />
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" id="email" name="email" placeholder="Enter your email" />
                    </div>
                    <div class="form-group">
                        <label for="message">Message</label>
                        <textarea id="message" name="message" placeholder="Enter your message"></textarea>
                    </div>
                    <div class="form-group form-actions">
                        <button type="submit" class="btn-primary">Send Message</button>

                    </div>
                </form>
                <hr class="contact-divider">
            </div>
            <div class="contact-links">
                <div class="contact-link">
                    <a href="https://www.linkedin.com/in/gabriel-penke-953771206/" target="_blank">
                        <Linkedin class="contact-icon" />
                    </a>
                </div>
                <div class="contact-link">
                    <a href="https://github.com/GabrielPenke292" target="_blank">
                        <Github class="contact-icon" />
                    </a>
                </div>
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

.contact-form {
    max-width: 600px;
    margin: 0 auto;
}

.form-group {
    margin-bottom: 20px;
}

.form-group label {
    display: block;
    margin-bottom: 5px;
    color: #fff;
}

.form-group input, .form-group textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #fff;
    border-radius: 5px;
    background: rgba(255, 255, 255, 0.1);
    color: #fff;
    font-size: 1rem;
    resize: vertical;
    margin-bottom: 10px;
}

.form-actions {
    text-align: center;
}

.btn-primary {
    background: linear-gradient(45deg, #f34304, #f34304);
    color: white;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    font-size: 1rem;
    font-weight: 600;
    transition: all 0.3s ease;
}

.btn-primary:hover {
    background: linear-gradient(45deg, #34f304, #34f304);
}

.form-group input:focus, .form-group textarea:focus {
    outline: none;
    border-color: #ff6b35;
    box-shadow: 0 0 10px rgba(255, 107, 53, 0.5);
}

.contact-links {
    display: flex;
    justify-content: center;
    gap: 20px;
    margin-top: 20px;
}

.contact-link {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 40px;
    height: 40px;
}

.contact-link a {
    color: #fff;
    font-size: 1.5rem;
    transition: all 0.3s ease;
}

.contact-link a:hover {
    color: #ff6b35;
}

.contact-icon {
    width: 2rem;
    height: 2rem;
    color: #fff;
    transition: all 0.3s ease;
}

.contact-link a:hover .contact-icon {
    transform: scale(1.2);
    color: #ff6b35;
}

</style>