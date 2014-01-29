### What is this?

This is the third version of the ElasticBox website (Since Jan '13). Going forward, we will be using a static html site that does not rely on rails server. The signup functionality will talk directly to the ElasticBox web services. This site will be part of the code base, and maintained, alongside the ElasticBox Product.

==================

Built with Bootstrap. Adapted for ElasticBox.

This site is designed to be viewed / rendered with Jekyll. 

### Dependencies

This repo contains the precompiled html files. The site is complied using Grunt.js a javascript package manager that will compile 

To run the ElasticBox website, the following packages will have to be installed locally:

1) Node JS => http://nodejs.org/

2) Grunt => http://gruntjs.com/

3) Jekyll => http://jekyllrb.com/

### Website Structure

The ElasticBox website has the following structure:

```

ElasticBox/Developers
├── Features/
│   ├── New Cloud Applications
│   ├── Existing Cloud Applications
│   ├── Cloud-ready Applications
│   ├── Reusable Components
│   ├── Cross-cloud Capabilities
│   ├── Collaboration Features
│   └── Policy and Resource Management
├── Enterprise/
│   ├── Enterprise Developers
│   ├── It Ops
│   └── CIOs
├── Pricing/
│   ├── Developer
│   ├── Teams
│   └── Enterprise
├── Landing Pages/
│   ├── TBD
│   ├── TBD
│   └── TBD
├── ElasticBox Status/
└── About/
    ├── Company
    ├── Leadership
    ├── Team
    ├── VCs
    └── Careers

```

### Running ElasticBox Website Locally

1. If necessary, [install Jekyll](http://jekyllrb.com/docs/installation) (requires v1.x).
2. From the root `/website_v2` directory, run `jekyll serve` in the command line. To enable automatic updates, run 'jekyll serve -w' which stands for watch (for changes).
3. Open <http://localhost:9001> in your browser, and voilà.

Learn more about using Jekyll by reading its [documentation](http://jekyllrb.com/docs/home/).

