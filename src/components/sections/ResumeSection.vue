<template>
    <section id="resume" class="resume-section">
        <div class="resume-container">
            <div class="resume-header">
                <h2 class="resume-title">Resume</h2>
                <p class="resume-description">Here is my resume to download</p>
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
}

.resume-container {
    max-width: 1200px;
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


</style>