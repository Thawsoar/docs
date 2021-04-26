module.exports = {
  base: '/docs/',
  title: '罗小黑的笔记',
  description: '罗小黑的笔记',
  head: [
    ['link', { rel: 'icon', href: '/favicon.ico'}]
  ],
  themeConfig: {
    logo: '/assets/img/logo.jpg',
    navbar: true,
    nav: [
      // { text: 'JavaScript', link: '/' },
      // { 
      //   text: 'Guide',
      //   link: '/guide/',
      //   items: [
      //     { text: 'Chinese', link: '/language/chinese/' },
      //     { text: 'Japanese', link: '/language/japanese/' }
      //   ]
      // },
      { text: 'javascript', link: '/javascript/base/base' },
      { text: 'Blog', link: 'https://happyfly.top' },
      { text: 'Github', link: 'https://github.com/thawsoar' },
    ],
    sidebar: 'auto'
  }
}