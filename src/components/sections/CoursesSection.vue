<template>
    <section id="courses" class="courses-section">
        <div class="courses-container">
            <div class="courses-header">
                <h2 class="courses-title">Courses</h2>
                <p class="courses-description">Here are some of the courses and certifications I've taken.</p>
            </div>
            <div class="courses-grid">  
                <div class="course-item" v-for="course in courses" :key="course.title">
                    <div class="course-image-container">
                        <img :src="course.image" :alt="course.title" class="course-image-img" />
                    </div>
                    <h3 class="course-title">{{ course.title }}</h3>
                    <p class="course-description">{{ course.description }}</p>
                    <a :href="course.certificate" class="course-link" target="_blank">View Certificate</a>
                </div>
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
                    title: 'Node JS',
                    platform: 'Danki Code',
                    description: 'Course of Node JS',
                    image: 'nodejs.png',
                    certificate: 'https://drive.google.com/file/d/1Hg08hityvgyaR5HDKtxx059B2k6HZ9jv/view?usp=drive_link'
                },
                {
                    title: 'Docker',
                    platform: 'Danki Code',
                    description: 'Course of Docker',
                    image: 'docker.jpeg',
                    certificate: 'https://drive.google.com/file/d/14knmXf7ylsgdoQmHzdwz9K7eAjGJBPbK/view?usp=drive_link'
                },
                {
                    title: 'Python',
                    platform: 'Danki Code',
                    description: 'Course of Python Web',
                    image: 'python.png',
                    certificate: 'https://drive.google.com/file/d/1M-ynd7ImCG7AeV4S6OnJUeCUFiNkmcD6/view?usp=sharing'
                },
                {
                    title: 'React',
                    platform: 'Danki Code',
                    description: 'Course of React',
                    image: 'react.png',
                    certificate: 'https://drive.google.com/file/d/12s8_WKqOZQqYi76ShIqQQSlfsAqGkwpZ/view?usp=sharing'
                },
                {
                    title: 'Java Web',
                    platform: 'Danki Code',
                    description: 'Course of Java Web',
                    image: 'java.jpg',
                    certificate: 'https://drive.google.com/file/d/1Q3fbn7_cfwJ7Uwq3VKygK2rj7bkgEauy/view?usp=sharing'
                },
                {
                    title: 'Web Design Express',
                    platform: 'Danki Code',
                    description: 'Course of Web Design Express',
                    image: 'web-design-express.png',
                    certificate: 'https://drive.google.com/file/d/1eQZ3VKjUOIqzCvkXrfbgUUyGwoccZaui/view?usp=sharing'
                },
                {
                    title: 'Firebase 8',
                    platform: 'Danki Code',
                    description: 'Course of Firebase 8',
                    image: 'firebase.png',
                    certificate: 'https://drive.google.com/file/d/1t3C02J6YzwoEYP8jh93aNO3wfN-4hnef/view?usp=sharing'
                },
                {
                    title: 'Docker',
                    platform: 'Udemy',
                    description: 'Learn Docker from zero to advanced',
                    image: 'docker2.png',
                    certificate: 'https://drive.google.com/file/d/1kg0S8OJnStEgz8zgdjb6oHiEJYXjv0Yb/view?usp=sharing'
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

.course-image-container {
    width: 100%;
    height: 200px;
    object-fit: cover;
}

.course-image-img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}
</style>