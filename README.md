
## Building a React.js Jenkins Pipeline for Dockerized Deployment and Monitoring
![image](https://github.com/Sivaprakash-pk/React-js_Project/assets/118121843/2536cbe7-d83d-4111-abbd-b01f176e89b6)

  ## From Code to Container Deployment

### Git Code Push and Jenkins Job Trigger :
The journey begins with developers pushing their React.js code to a Git repository hosted on GitHub. Upon code push, a Jenkins job is automatically triggered, thanks to the integration between Jenkins and Git. This ensures seamless integration between code changes and the CI/CD pipeline.

### Docker Image Build and Push :
Within the Jenkins pipeline, the first step is building the Docker image from a Dockerfile. Depending on the branch, different Docker images are built. For the dev branch, the image is pushed to the dev-repo-react repository on DockerHub, while for the master branch, the image is pushed to the prod-repo-react repository. This separation ensures proper segregation between development and production environments.

### Docker Image Tag update on docker-compose :
Once the Docker images are available on DockerHub, the Jenkins pipeline proceeds to update the Docker image tag on the docker-compose.yml file. This file defines the container configuration, including environment variables, port mapping, and container dependencies. Running the container ensures the application is up and accessible.

### Local Image Cleanup :
To free up disk space and maintain a clean development environment, the Jenkins pipeline includes a step to remove the built Docker images from the local machine. This helps prevent clutter and minimizes storage usage.

### Post-Build Actions: Deploying Docker Containers on React.JS Web Application(EC2 Instance) Server :
In the post-build actions section of the Jenkins pipeline, an SSH connection is established to another EC2 instance server. The Docker image is built and a container is launched on this server using the SSH connection. This enables seamless deployment of the application to a separate environment or server.

### Monitoring with CloudWatch and Prometheus :
To ensure the application's health and performance, monitoring tools like CloudWatch and Prometheus come into play. The deployed EC2 instance is monitored using CloudWatch, which provides metrics for CPU utilization, system failures, and more. Prometheus is also configured to collect and analyze metrics from the running Docker containers. This allows for in-depth monitoring and analysis of the application's performance.

### Email Notifications for System Failure or CPU Utilization :
As part of the monitoring setup, email notifications are configured to alert the team in case of system failures or high CPU utilization using Amazon SNS. This helps ensure prompt attention to critical issues and enables proactive troubleshooting.

### Conclusion:
By implementing this React.js Jenkins pipeline, we have established a robust CI/CD process that automates code builds, Docker image creation, deployment, and monitoring. Integrating Git, Jenkins, Docker, and monitoring tools like CloudWatch and Prometheus streamlines the development and deployment workflow, ensuring faster time to market and improved application quality.


In the project directory, you can run:

### `npm start`

Runs the app in the development mode.<br />
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.<br />
You will also see any lint errors in the console.

### `npm test`

Launches the test runner in the interactive watch mode.<br />
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `npm run build`

Builds the app for production to the `build` folder.<br />
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.<br />
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `npm run eject`

**Note: this is a one-way operation. Once you `eject`, you can’t go back!**


Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you’re on your own.

You don’t have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn’t feel obligated to use this feature. However we understand that this tool wouldn’t be useful if you couldn’t customize it when you are ready for it.
