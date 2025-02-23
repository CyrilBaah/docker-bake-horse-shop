// A simple script to call the backend API and display horse data
fetch('http://localhost:3001/api/horses')
  .then(response => response.json())
  .then(data => {
    const content = document.getElementById('content');
    content.innerHTML = `<ul>${data.map(horse => `<li>${horse.name} - ${horse.breed}</li>`).join('')}</ul>`;
  })
  .catch(err => console.error('Error fetching horses:', err));
