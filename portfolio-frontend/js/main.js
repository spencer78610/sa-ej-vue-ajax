const projectGallery = Vue.createApp({
    created() {
        fetch('http://localhost/sa-ej-vue-ajax/portfolio-api/public/projects')
        .then(res => res.json())
        .then(data => {
            console.log(data);
            this.projectsData = data;
        })
        .catch(error => {
            console.log(error);
        })
    },
    data() {
        return {
            projectsData: [],
            projectInfo: {},
            isLoading: false, 
            error: ""
        }
    },
    methods: {
        getProject(title) {
            this.isLoading = true;
            setTimeout(() => {
                const selectedProject = this.projectsData.find(project => project.title === title);
                if (selectedProject) {
                    this.projectInfo = {
                        description: selectedProject.description,
                        credit: selectedProject.credit,
                        problem_solution: selectedProject.problem_solution,
                        features: selectedProject.features
                    };
                    this.isLoading = false;

                    // const projectInfoCon = document.querySelector('#projectInfoCon');
                    // if (projectInfoCon) {
                    //     projectInfoCon.scrollIntoView({ behavior: 'smooth' });
                    // }
                } else {
                    this.error = "Project not found. Please try again later";
                    this.isLoading = false;
                }
            }, 1000);
        }
    }
});

projectGallery.mount("#app");