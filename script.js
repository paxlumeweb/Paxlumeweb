document.querySelectorAll('[data-year]').forEach(e=>e.textContent=new Date().getFullYear());
const f=document.querySelector('[data-contact-form]');if(f){f.addEventListener('submit',e=>{e.preventDefault();const d=new FormData(f),name=(d.get('name')||'').trim(),email=(d.get('email')||'').trim(),msg=(d.get('message')||'').trim();if(!name||!email||!msg)return;const recipient=f.getAttribute('data-recipient');if(!recipient||recipient.includes('YOUR_EMAIL')){alert('This demo does not have an active contact inbox. Replace YOUR_EMAIL in the HTML and connect a suitable service before publishing for real customers.');return;}location.href='mailto:'+recipient+'?subject='+encodeURIComponent('Website enquiry from '+name)+'&body='+encodeURIComponent('Name: '+name+'\nEmail: '+email+'\n\n'+msg);});}

// Mobile navigation toggle
(function(){var t=document.querySelector('[data-nav-toggle]'),n=document.querySelector('[data-nav]');if(!t||!n)return;
function set(o){n.classList.toggle('open',o);t.setAttribute('aria-expanded',o?'true':'false');}
t.addEventListener('click',function(){set(!n.classList.contains('open'));});
n.addEventListener('click',function(e){if(e.target.closest('a'))set(false);});
document.addEventListener('keydown',function(e){if(e.key==='Escape')set(false);});})();


// Quote form: accessible validation and sending (works as a normal form post without JS)
(function(){var f=document.querySelector('[data-quote-form]');if(!f)return;
var status=f.querySelector('.form-status'),btn=f.querySelector('button[type="submit"]'),label=btn.textContent;
var EMAIL='paxlumeweb@gmail.com',mail='<a href="mailto:'+EMAIL+'?subject=Paxlume%20website%20enquiry">'+EMAIL+'</a>';
function show(kind,html){status.className='form-status '+kind;status.innerHTML=html;status.hidden=false;status.focus();}
function check(el){var err=document.getElementById(el.id+'-err');if(!err)return true;
  var v=el.value.trim(),ok=v!==''&&(el.type!=='email'||/^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/.test(v));
  el.setAttribute('aria-invalid',ok?'false':'true');err.hidden=ok;return ok;}
var req=[].slice.call(f.querySelectorAll('[required]')),loaded=Date.now();
req.forEach(function(el){el.addEventListener('blur',function(){if(el.value.trim()!==''||el.getAttribute('aria-invalid'))check(el);});
  el.addEventListener('input',function(){if(el.getAttribute('aria-invalid')==='true')check(el);});});
f.addEventListener('submit',function(e){e.preventDefault();
  var bad=req.filter(function(el){return !check(el);});
  if(bad.length){show('err','Please fix the '+(bad.length===1?'highlighted field':bad.length+' highlighted fields')+' and try again.');bad[0].focus();return;}
  if(f.querySelector('[name="_honey"]').value)return; // bot
  if(loaded&&Date.now()-loaded<3000){loaded=0;show('err','That was very quick. Please check your details and press send again.');return;} // likely bot; a second press always goes through
  if(f.getAttribute('data-form-active')!=='true'){show('err','Sorry, the online form isn\'t switched on yet. Please email your enquiry to '+mail+' instead.');return;}
  btn.disabled=true;btn.textContent='Sending…';status.hidden=true;
  var data=new FormData(f),body={};data.forEach(function(v,k){body[k]=v;});
  fetch(f.action.replace('formsubmit.co/','formsubmit.co/ajax/'),{method:'POST',headers:{'Content-Type':'application/json','Accept':'application/json'},body:JSON.stringify(body)})
  .then(function(r){return r.json().catch(function(){return {};}).then(function(j){return {ok:r.ok,j:j};});})
  .then(function(res){if(res.ok&&(res.j.success===true||res.j.success==='true')){f.reset();
      show('ok','Thanks! Your enquiry has been sent. We\'ll reply by email within 2 business days. If you don\'t hear back, please email '+mail+'.');}
    else{var e=new Error('rejected');e.info=(res.j&&res.j.message)||('HTTP '+(res.ok?'OK, no success flag':'error'));throw e;}})
  .catch(function(err){show('err','Sorry, your enquiry wasn\'t sent. Please try again, or email '+mail+' directly.');
    // Show the form service's own reason (as plain text) so a setup problem, e.g. "needs activation", is visible.
    var why=(err&&err.info)||(err&&err.message==='Failed to fetch'?'could not reach the form service':'');
    if(why){var s=document.createElement('small');s.className='form-why';s.textContent=' Reason: '+String(why).slice(0,200);status.appendChild(s);}
    if(window.console)console.warn('Quote form not sent:',err&&err.info||err);})
  .then(function(){btn.disabled=false;btn.textContent=label;});
});})();
