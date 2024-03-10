// script.js
document.addEventListener("DOMContentLoaded", function() {
    const searchInput = document.getElementById('search');
    const faqItems = document.querySelectorAll('.faq-item');
  
    searchInput.addEventListener('input', function() {
        const searchTerm = this.value.toLowerCase();
  
        faqItems.forEach(item => {
            const question = item.querySelector('.faq-question').innerText.toLowerCase();
            const answer = item.querySelector('.faq-answer').innerText.toLowerCase();
  
            if (question.includes(searchTerm) || answer.includes(searchTerm)) {
                item.style.display = 'block';
            } else {
                item.style.display = 'none';
            }
        });
    });
  });