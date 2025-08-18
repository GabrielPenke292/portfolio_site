<template>
    <section id="courses" class="courses-section">
        <div class="courses-container">
            <div class="courses-header">
                <h2 class="courses-title">Courses</h2>
                <p class="courses-description">Here are some of the courses I've taken.</p>
            </div>

        </div>
    </section>
</template>

<script>
export default {
    name: 'CoursesSection',
    data() {
        return {
            courses: [
                {
                    title: 'Course 1',
                    description: 'Description of course 1',
                    image: 'image1.jpg',
                    technologies: ['PHP', 'MySQL', 'Bootstrap', 'jQuery'],
                    link: 'https://www.google.com'
                },
                {
                    title: 'Course 2',
                    description: 'Description of course 2',
                    image: 'image2.jpg',
                    technologies: ['PHP', 'MySQL', 'Bootstrap', 'jQuery'],
                    link: 'https://www.google.com'
                },
                {
                    title: 'Course 3',
                    description: 'Description of course 3',
                    image: 'image3.jpg',
                    technologies: ['PHP', 'MySQL', 'Bootstrap', 'jQuery'],
                    link: 'https://www.google.com'
                },
                {
                    title: 'Course 4',
                    description: 'Description of course 4',
                    image: 'image4.jpg',
                    technologies: ['PHP', 'MySQL', 'Bootstrap', 'jQuery'],
                    link: 'https://www.google.com'
                }
            ]
        }
    }
}
</script>

<style scoped>
.courses-section {
    min-height: 100vh;
    padding: 40px;
    background: linear-gradient(135deg, rgba(255, 255, 255, 0.1), rgba(255, 255, 255, 0.05));
    backdrop-filter: blur(10px);
    border-radius: 20px;
    margin: 20px;
    border: 1px solid rgba(255, 255, 255, 0.1);
}

.courses-container {
    max-width: 1200px;
}

.courses-header {
    text-align: center;
    margin-bottom: 50px;
}

.courses-title {
    font-size: 2rem;
    font-weight: 700;
    margin-bottom: 10px;
    color: #fff;
}

.courses-description {
    font-size: 1.2rem;
    color: #fff;
}

.courses-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 20px;
}

.course-item {
    background: rgba(255, 255, 255, 0.05);
    padding: 25px;
    border-radius: 15px;
    text-align: center;
    backdrop-filter: blur(10px);
    border: 1px solid rgba(255, 255, 255, 0.1);
    transition: transform 0.3s ease;
}

.course-item:hover {
    transform: translateY(-5px);
}

.course-image {
    width: 100%;
    height: 200px;
    object-fit: cover;
}

.course-title {
    font-size: 1.5rem;
    font-weight: 600;
    color: #fff;
}

.course-description {
    font-size: 1.2rem;
    color: #fff;
}

.course-link {
    font-size: 1.2rem;
    color: #fff;
}

.course-technologies {
    display: flex;
    flex-wrap: wrap;
    gap: 8px;
    margin: 15px 0 20px 0;
    justify-content: center;
}

.tech-tag {
    display: inline-block;
}


</style>