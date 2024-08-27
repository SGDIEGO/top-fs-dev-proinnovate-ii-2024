
# Introduction to SCRUM

## What is SCRUM?

SCRUM is an Agile framework that helps teams work together to develop, deliver, and sustain complex products. It emphasizes collaboration, accountability, and iterative progress toward a well-defined goal. SCRUM is designed to promote flexible and rapid responses to change while delivering high-quality products.

### SCRUM Roles:
1. **Product Owner**:
   - The Product Owner is responsible for maximizing the value of the product and managing the Product Backlog. They represent the stakeholders and ensure that the development team is working on the right tasks to meet the product goals.

2. **SCRUM Master**:
   - The SCRUM Master serves as a facilitator for the team and ensures that the SCRUM process is being followed. They help remove any impediments that may hinder the team’s progress and promote an environment where the team can self-organize and focus on the work.

3. **Development Team**:
   - The Development Team consists of professionals who work together to deliver the product increment. They are responsible for organizing their own work, ensuring high quality, and delivering functional increments at the end of each sprint.

### SCRUM Events:
1. **Sprint Planning**:
   - A meeting where the team defines what work will be completed during the upcoming sprint. The team selects items from the Product Backlog and plans how to accomplish them.

2. **Daily Stand-Up**:
   - A short daily meeting where the team discusses their progress and any impediments that might be blocking their work. The goal is to synchronize the team and ensure that everyone is aligned with the sprint goal.

3. **Sprint Review**:
   - A meeting held at the end of the sprint where the team presents the completed work to stakeholders. The team demonstrates the product increment and gathers feedback to improve future sprints.

4. **Sprint Retrospective**:
   - A meeting held after the Sprint Review to reflect on the sprint and discuss what went well, what could be improved, and how the team can be more effective in the next sprint.

## SCRUM Artifacts

1. **Product Backlog**:
   - The Product Backlog is an ordered list of everything that might be needed in the product. It is a dynamic list that evolves as the product and its environment change. The Product Owner manages the backlog and ensures that it reflects the current priorities.

2. **Sprint Backlog**:
   - The Sprint Backlog is a set of Product Backlog items selected for the sprint, plus a plan for delivering the product increment and achieving the sprint goal. It is owned by the Development Team and represents their commitment to completing the work within the sprint.

3. **The Increment and Definition of Done**:
   - The Increment is the sum of all the Product Backlog items completed during a sprint, plus the value of increments from all previous sprints. The Definition of Done is a shared understanding of what it means for work to be considered complete. This ensures that the increment is releasable at the end of each sprint.

4. **Tracking Progress with Burndown Charts**:
   - A Burndown Chart is a graphical representation of the amount of work left to do versus the time remaining. It helps teams track their progress throughout the sprint and predict whether they will complete the work on time.

## User Stories and Story Points

In SCRUM, work is typically broken down into **user stories**. A user story is a simple description of a feature or functionality written from the perspective of the end user. It helps the team understand the value and purpose of the work.

### Example of a User Story:
- "As a user, I want to create tasks so that I can track my to-do items."
- "As an admin, I want to manage user accounts so that I can ensure the right permissions are assigned."

User stories are often assigned **story points**, which represent the effort required to complete the story. Story points are not tied to time estimates but are instead a measure of complexity, risk, and uncertainty.

### Example of Story Points:
- **1 point**: A small, straightforward task with little complexity (e.g., adding a button to a page).
- **3 points**: A task with moderate complexity (e.g., implementing form validation).
- **5 points**: A larger task that involves multiple steps or potential challenges (e.g., integrating with an external API).

### Estimating Story Points:
During Sprint Planning, the Development Team discusses each user story and estimates the effort required using story points. The team typically uses relative estimation, comparing one story to another to determine the point value.

For example:
- If "Creating a task" is estimated as a 2-point story, and "Implementing user login" is more complex, it might be estimated as a 5-point story.

### Velocity:
Velocity is a measure of the amount of work a team can complete during a sprint. It is calculated by summing the story points of all the completed user stories in the sprint. Over time, velocity helps the team predict how much work they can handle in future sprints.

## Activity: Task Manager App Project

Review the subject [SCRUM](https://www.youtube.com/watch?v=SWDhGSZNF9M)

To practice using SCRUM, follow the [SCRUM with JIRA tutorial](https://www.atlassian.com/agile/tutorials/how-to-do-scrum-with-jira) and create a demo project in JIRA. You will be building a **Task Manager App** using only **HTML, CSS, and JavaScript**. Use **localStorage** to manage data, and apply the SCRUM framework as you work on the project. Track your progress through JIRA and follow SCRUM events such as Sprint Planning, Daily Stand-Up, Sprint Review, and Sprint Retrospective.

# Project Description: Task Manager App

## Overview:
The **Task Manager App** is a web-based application that allows users to create, manage, and organize their tasks. This project is designed to help you practice core web development skills using only **HTML, CSS, and JavaScript**. Additionally, it will provide hands-on experience with the SCRUM framework, guiding you through project management, planning, and tracking progress using tools like JIRA.

## Project Goals:
- **Task Management**: Users will be able to create, update, delete, and mark tasks as completed.
- **Task Categorization**: Users can organize tasks into different categories (e.g., Personal, Work).
- **Task Filters**: Users can filter tasks by category or by their status (e.g., To Do, In Progress, Done).
- **Responsive Design**: The app will be accessible on both desktop and mobile devices.

## Requirements:
### HTML/CSS/JavaScript Only:
- No frameworks or libraries are allowed. The project should be built using core web technologies.
- All data should be stored in the browser using **localStorage**. There will be no use of external APIs or backend servers.

### Task Data:
- Tasks should include a title, description, due date, and status.
- Tasks should be stored in localStorage, allowing them to persist across page refreshes.

### User Interface:
- The interface should be user-friendly and responsive, with a focus on simplicity and accessibility.

### SCRUM Implementation:
- Manage the project using the SCRUM framework. Break down the project into **user stories** and assign them to sprints.
- Use tools like JIRA to track progress and manage tasks.

## Example User Stories:
1. **Create a Task**:
   - "As a user, I want to create a new task so that I can track my to-do items."
2. **Update a Task**:
   - "As a user, I want to edit an existing task so that I can update the details if necessary."
3. **Delete a Task**:
   - "As a user, I want to delete a task so that I can remove tasks that are no longer relevant."
4. **Filter Tasks**:
   - "As a user, I want to filter tasks by category so that I can easily view related tasks."

## SCRUM Process:
### Sprint Planning:
- Break the project into user stories and assign them story points based on complexity. Plan out which stories will be completed in each sprint.

### Daily Stand-Up:
- Hold daily check-ins to discuss progress and any blockers.

### Sprint Review:
- At the end of each sprint, review the completed work and gather feedback.

### Sprint Retrospective:
- Reflect on the sprint, discussing what went well and what could be improved for the next sprint.

## Sprints:
- **Sprint 1**: Set up the project structure and implement task creation and localStorage functionality.
- **Sprint 2**: Implement task updating, deleting, and filtering features.
- **Sprint 3**: Focus on UI/UX improvements, making the app responsive and user-friendly.

## Deliverables:
- A fully functional **Task Manager App** with all core features.
- **JIRA Board**: Documented user stories, sprints, and tasks with clear progress tracking.
- **Final Review**: A demonstration of the app, along with a retrospective discussion on the SCRUM process followed.

This project will help you gain practical experience in both web development and Agile project management, giving you a strong foundation to build on.
