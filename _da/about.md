---
layout: page
title: ESG in Business
titleORIG: Om os
index: 9
lang: da
menu: header
permalink: /about/
ref: about
---

# Om os - ESG in Business

![ESG in Business v/Karin Hansen][1]

Fortiden kan man ikke løbe fra.....

**ESG in Business** er en udløber af **[FoodEfficiency](https://www.foodefficiency.eu){:target="_blank"}** der blev etableret i juli 2012 og som ejers af Karin Hansen.

Min viden fra globale forsyningskæder om gensidige afhængighed, sporbarhed, dokumentation, miljømæssigt og socialt ansvar stammer fra Arla Foods, SPX Technology samt min tid hos LEGO.

Det samme gælder min viden om LivsCyklusAnalyser fra da Arla præsenterede sin første af slagsen i år 2000 - mit fokus var ikke blot at se på energi og vandforbrug i produktionen men lige så meget at sikre optimal værdiudnyttelse af råvaren med fokus på kvalitet, emballage samt opbevarings- og forbrugsvaner ud til slutbruger.

Jeg har derfor valgt at samle mine erfaringer og kompetencer indenfor klima, bæredygtighed og ESG området under navnet "ESG in Business" og håber derved at kunne nå ud til flere sektorer.

Fødevareaktiviteterne bibeholdes i Food Efficiency hvor jeg fortsat er på FVST's liste over godkendte rådgivere samt varetager div kvalitets, miljø- og arbejdsmiljøopgaver for små og mellemstore fødevareproducenter. 

Tidligere ansættelsesforhold og opgaver [fremgår af CV][2] samt LinkedIn profil [https://www.linkedin.com/company/foodefficiency][3]

[1]: /assets/images/K_Hansen.png#pull-right#w360 "ESG in Business v/karin Hansen"
[2]: /assets/publications/KEH%20CV%20QEHS%20and%20CSR%20development.pdf "KEH CV QEHS and CSR Development "
[3]: https://www.linkedin.com/in/karin-hansen-a14446/ "https://www.linkedin.com/company/foodefficiency"



# Kontakt os

<div class="contact-inner">
<div class="pull-right w50">
  <h3 class="brand"><span>ESG in Business</span></h3>
  <p>v/Karin Hansen</p>
  <p>Jessensgade 1, 3. sal<br>DK-8700 Horsens</p>
  <p>Tel: +45 2987 8494</p>
  <p>CVR: 34428832</p>
  <p>Eller send en besked via formularen, og vi vil vende tilbage snarest muligt.</p>
</div>
<div class="inquiries pull-left">
  <form accept-charset="UTF-8" class="new_inquiry" id="new_inquiry" method="post" data-name="Contact form">
    <div style="margin:0;padding:0;display:inline">
      <input id="locale" name="locale" type="hidden" value="da">
      <input id="utf8" name="utf8" type="hidden" value="✓">
      <input id="authenticity_token" name="authenticity_token" type="hidden" value="8vr2lMQljUu/67VhB2GS5pXRZubfGknz0sIweGYatWU=">
    </div>
    <div class="field message_field">
      <label class="placeholder-fallback" for="inquiry_message">Besked *</label>
      <textarea cols="40" id="inquiry_message" name="message" placeholder="Skriv en besked til os" required="required" rows="8"></textarea>
    </div>
    <div class="field">
      <label class="placeholder-fallback" for="inquiry_name">Navn *</label>
      <input class="text" id="inquiry_name" name="name" placeholder="" required="required" size="30" type="text">
    </div>
    <input id="lastname" class="offscreen" name="lastname" tabindex="-1" type="text" value="">
    <div class="field">
      <label class="placeholder-fallback" for="inquiry_email">Email *</label>
      <input class="text email" id="inquiry_email" name="email" placeholder="" required="required" size="30" type="email">
    </div>
    <div class="field">
      <label class="placeholder-fallback" for="inquiry_phone">Telefon</label>
      <input class="text phone" id="inquiry_phone" name="phone" placeholder="" size="30" type="phone">
    </div>
    <div class="actions">
      <input class="btn btn-success" id="contact_submit" name="commit" type="submit" value="Send besked">
    </div>
  </form>
</div>
</div>
<script type="text/javascript">
function clearInquiryForm() {
  document.getElementById("inquiry_message").value = "";
  document.getElementById("inquiry_name").value = "";
  document.getElementById("inquiry_email").value = "";
  document.getElementById("inquiry_phone").value = "";
}

// ContactUs API
document.getElementById("contact_submit").addEventListener("click", function(event){
  event.preventDefault()

  const locale = document.getElementById("locale").value;
  const message = document.getElementById("inquiry_message").value;
  const name = document.getElementById("inquiry_name").value;
  const lastname = document.getElementById("lastname").value;
  const email = document.getElementById("inquiry_email").value; 
  const phone = document.getElementById("inquiry_phone").value; 
  const data = { locale, message, name, lastname, email, phone }
  const url = 'https://fb65cne4o6.execute-api.eu-central-1.amazonaws.com/send';
  const headers = {
    'Access-Control-Allow-Origin': '*',
    'Access-Control-Allow-Credentials': true,
  }
  axios.post(url, data, headers).then(res => {
    alert('Mange tak for din henvendelse.  Vi vil vende tilbage snarest muligt.');
    clearInquiryForm();
  }).catch(err => {
    console.log(err)
    alert("Der skete en fejl. Check om du har udfyldt felterne: besked, navn, email og telefon");
  })
  return true;
});
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.18.0/axios.min.js"></script>
