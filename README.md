# Personal Website

A modern, responsive personal website built with [Astro](https://astro.build) and hosted on GitHub Pages.

## 🚀 Features

- **Modern Design**: Clean, responsive design with smooth animations
- **Fast Performance**: Built with Astro for optimal loading speeds
- **Mobile Friendly**: Fully responsive across all devices
- **SEO Optimized**: Proper meta tags and semantic HTML
- **GitHub Pages Ready**: Automatic deployment via GitHub Actions

## 🛠️ Tech Stack

- **Framework**: [Astro](https://astro.build)
- **Styling**: Custom CSS with modern design patterns
- **Deployment**: GitHub Pages with GitHub Actions
- **Hosting**: GitHub Pages

## 📋 Sections

- **Hero Section**: Eye-catching introduction with call-to-action
- **About**: Personal information and skills showcase
- **Projects**: Featured projects with technology tags
- **Contact**: Multiple ways to get in touch

## 🚀 Getting Started

### Prerequisites

- Node.js (version 18 or higher)
- npm or yarn

### Installation

1. Clone the repository:
```bash
git clone https://github.com/kuryaki/kuryaki.github.io.git
cd kuryaki.github.io
```

2. Install dependencies:
```bash
npm install
```

3. Start the development server:
```bash
npm run dev
```

4. Open your browser and navigate to `http://localhost:4321`

### Building for Production

```bash
npm run build
```

The built files will be in the `dist/` directory.

## 🚀 Deployment

This website is automatically deployed to GitHub Pages using GitHub Actions. The deployment workflow:

1. Triggers on pushes to the `main` branch
2. Installs dependencies
3. Builds the project
4. Deploys to GitHub Pages

### Manual Deployment

If you need to deploy manually:

1. Build the project: `npm run build`
2. The `dist/` folder contains the static files ready for deployment

## 🎨 Customization

### Personal Information

Update the following in `src/pages/index.astro`:

- Name and title in the hero section
- About section content
- Skills and technologies
- Project descriptions
- Contact links

### Styling

The website uses custom CSS embedded in the HTML file. You can modify:

- Colors and gradients
- Typography
- Layout and spacing
- Animations and transitions

### Adding Pages

To add new pages:

1. Create a new `.astro` file in `src/pages/`
2. Add navigation links in the header
3. Update the routing as needed

## 📱 Responsive Design

The website is fully responsive and includes:

- Mobile-first design approach
- Flexible grid layouts
- Responsive typography
- Touch-friendly navigation

## 🔧 Configuration

### Astro Configuration

The `astro.config.mjs` file is configured for:

- Static site generation
- GitHub Pages base path
- Asset optimization

### GitHub Pages Settings

Ensure your repository settings include:

- GitHub Pages enabled
- Source set to "GitHub Actions"
- Proper permissions for the workflow

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

## 🤝 Contributing

Feel free to fork this project and customize it for your own personal website!

## 📞 Contact

- **Email**: your.email@example.com
- **GitHub**: [@kuryaki](https://github.com/kuryaki)
- **LinkedIn**: [Your Profile](https://linkedin.com/in/yourprofile)

---

Built with ❤️ using [Astro](https://astro.build)
