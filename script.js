document.querySelectorAll('[data-year]').forEach(e=>e.textContent=new Date().getFullYear());
const f=document.querySelector('[data-contact-form]');if(f){f.addEventListener('submit',e=>{e.preventDefault();const d=new FormData(f),name=(d.get('name')||'').trim(),email=(d.get('email')||'').trim(),msg=(d.get('message')||'').trim();if(!name||!email||!msg)return;const recipient=f.getAttribute('data-recipient');if(!recipient||recipient.includes('YOUR_EMAIL')){alert('This demo does not have an active contact inbox. Replace YOUR_EMAIL in the HTML and connect a suitable service before publishing for real customers.');return;}location.href='mailto:'+recipient+'?subject='+encodeURIComponent('Website enquiry from '+name)+'&body='+encodeURIComponent('Name: '+name+'\nEmail: '+email+'\n\n'+msg);});}

// Mobile navigation toggle
(function(){var t=document.querySelector('[data-nav-toggle]'),n=document.querySelector('[data-nav]');if(!t||!n)return;
function set(o){n.classList.toggle('open',o);t.setAttribute('aria-expanded',o?'true':'false');}
t.addEventListener('click',function(){set(!n.classList.contains('open'));});
n.addEventListener('click',function(e){if(e.target.closest('a'))set(false);});
document.addEventListener('keydown',function(e){if(e.key==='Escape')set(false);});})();

// Reveal sections on scroll
(function(){var els=document.querySelectorAll('.reveal');if(!els.length||!('IntersectionObserver' in window))return;
document.documentElement.classList.add('js');
var io=new IntersectionObserver(function(es){es.forEach(function(e){if(e.isIntersecting){e.target.classList.add('in');io.unobserve(e.target);}});},{rootMargin:'0px 0px -8% 0px'});
els.forEach(function(el){io.observe(el);});})();
