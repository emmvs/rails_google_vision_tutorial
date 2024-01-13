# Google Cloud Vision API Integration

This guide will walk you through the process of integrating the Google Cloud Vision API with this Rails application

## Prerequisites

Before you begin, ensure you have the following:

- Ruby and Rails installed on your system.
- A Google Cloud account with billing enabled.
- Access to the Google Cloud Console.

## Getting Started

### Step 1: Clone this Repository

Clone the rails_google_vision_tutorial repository to your local machine:

```bash
git clone git@github.com:emmvs/rails_google_vision_tutorial.git
cd rails_google_vision_tutorial
```

### Step 2: Set Up Google Cloud Vision API
- Create a Google Cloud Project: Go to the Google Cloud Console and create a new project
- Enable the Vision API: Navigate to "APIs & Services" > "Dashboard" and enable the Vision API for your project
- Create API Key: Go to "Credentials" and create an API key for accessing the Vision API

### Step 3: Configure the Application
## Environment Variables:
- Create a .env file in the root of the project
- Add the Google API key to the .env file:
- Copy this code and put your API key:
```bash
GOOGLE_API_KEY=your_api_key_here
```

- Ensure the .env file is added to .gitignore
- Install Dependencies:
- Run bundle install to install required gems

### Step 4: Running the Application
- Start the Rails Server
- Use the command rails server to start the application
- Open a web browser and navigate to http://localhost:3000 to access the application.

### Usage
- How to send an image URL to the API
- Interpreting the response from the API
- Any application-specific features or functionalities

### Additional Resources
- [Google Cloud Vision API Documentation]([url](https://cloud.google.com/vision/docs)https://cloud.google.com/vision/docs)
- [Rails Documentation]([url](https://guides.rubyonrails.org/)https://guides.rubyonrails.org/)
