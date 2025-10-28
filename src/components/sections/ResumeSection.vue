<template>
    <section id="resume" class="resume-section">
        <div class="resume-container">
            <div class="resume-header">
                <h2 class="resume-title">Resume</h2>
                <p class="resume-description">Here is my resume to download</p>
            </div>
            <!-- Link to download the resume (centralized vertically and horizontally) -->
            <div class="resume-download">
                <a href="/resume.pdf" download class="btn-primary">Download Resume</a>
            </div>
        </div>
    </section>
</template>

<script>

</script>

<style scoped>
.resume-section {
    min-height: 100vh;
    padding: 40px;
    background: linear-gradient(135deg, rgba(255, 255, 255, 0.1), rgba(255, 255, 255, 0.05));
    backdrop-filter: blur(10px);
    border-radius: 20px;
    margin: 20px;
    border: 1px solid rgba(255, 255, 255, 0.1);
    display: flex;
    align-items: center;
    justify-content: center;
}

.resume-container {
    max-width: 1200px;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
}

.resume-header {
    text-align: center;
    margin-bottom: 50px;
}

.resume-title {
    font-size: 2rem;
    font-weight: 700;
    margin-bottom: 10px;
    color: #fff;
}

.resume-description {
    font-size: 1.2rem;
    color: #fff;
}

.resume-download {
    display: flex;
    justify-content: center;
    align-items: center;
    margin-top: 20px;
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

</style>