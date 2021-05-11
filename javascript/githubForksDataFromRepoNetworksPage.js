Array.from(document.querySelectorAll('#network > div')).map(node => {
  const userLink = node.querySelector('[data-hovercard-type="user"]:not(.d-inline-block)');
  if (userLink === null) {
    return null;
  }
  const user = userLink.textContent.trim();
  const userUrl = userLink.getAttribute('href');
  const repoLink = node.querySelector('a:last-child');
  const repo = repoLink.textContent.trim();
  const repoUrl = repoLink.getAttribute('href');
  return {
    user,
    userUrl,
    repo,
    repoUrl,
  };
}).filter(item => item);
