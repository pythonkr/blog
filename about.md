---
layout: page
title: About
permalink: /about/
page_class: about-page
---

<div class="about-intro">
  <p class="about-eyebrow">Python · Community · Together</p>
  <p class="about-lead">파이콘 한국은 파이썬을 사랑하는 사람들이 함께 만들고, 배우고, 연결되는 비영리 커뮤니티 컨퍼런스입니다.</p>
  <p>이곳은 파이콘 한국 준비위원회(PyCon Korea Organizing Team)의 블로그입니다. 파이콘 한국은 건강한 파이썬 생태계를 위해 파이썬의 저변 확대와 커뮤니티 활성화에 보탬이 되고자 노력합니다. 발표자와 튜토리얼 진행자, 자원봉사자와 준비위원회 등 모든 구성원이 금전적 이득 없이 커뮤니티 멤버들의 자발적인 참여로 행사를 만들어 갑니다.</p>
</div>

<section class="about-section" aria-labelledby="history-title">
  <div class="about-section__heading">
    <div>
      <p class="about-eyebrow">Since 2014</p>
      <h2 id="history-title">파이콘 한국의 발자취</h2>
    </div>
    <p>첫 행사부터 지금까지,<br>각 해의 공식 홈페이지를 만나보세요.</p>
  </div>

  <ol class="pycon-history">
    {% for event in site.data.pycon_years reversed %}
    <li{% if event.current %} class="is-current"{% endif %}>
      <a href="{{ event.url }}" target="_blank" rel="noopener noreferrer" aria-label="{{ event.year }} {{ event.name }}{% if event.slogan %}, {{ event.slogan }}{% endif %} 공식 홈페이지 (새 창)">
        <span class="pycon-history__year">{{ event.year }}</span>
        {% if event.slogan %}<span class="pycon-history__slogan">{{ event.slogan }}</span>{% endif %}
        {% if event.current %}<span class="pycon-history__badge">NOW</span>{% endif %}
        <span class="pycon-history__arrow" aria-hidden="true">↗</span>
      </a>
    </li>
    {% endfor %}
  </ol>
</section>

<script>
  (function () {
    var history = document.querySelector('.pycon-history');
    var mobile = window.matchMedia('(max-width: 760px)');
    var items = history ? Array.prototype.slice.call(history.querySelectorAll('li')) : [];
    var ticking = false;

    function updateNearbyMilestone() {
      ticking = false;

      items.forEach(function (item) {
        item.classList.remove('is-near');
      });

      if (!mobile.matches || !history) return;

      var historyRect = history.getBoundingClientRect();
      if (historyRect.bottom < 0 || historyRect.top > window.innerHeight) return;

      var viewportCenter = window.innerHeight / 2;
      var nearest = items.reduce(function (best, item) {
        var rect = item.getBoundingClientRect();
        var distance = Math.abs(rect.top + rect.height / 2 - viewportCenter);
        return !best || distance < best.distance ? { item: item, distance: distance } : best;
      }, null);

      if (nearest) nearest.item.classList.add('is-near');
    }

    function requestUpdate() {
      if (ticking) return;
      ticking = true;
      window.requestAnimationFrame(updateNearbyMilestone);
    }

    if (items.length) {
      window.addEventListener('scroll', requestUpdate, { passive: true });
      window.addEventListener('resize', requestUpdate);
      if (mobile.addEventListener) mobile.addEventListener('change', requestUpdate);
      requestUpdate();
    }
  }());
</script>

<section class="about-section" aria-labelledby="social-title">
  <div class="about-section__heading">
    <div>
      <p class="about-eyebrow">Stay connected</p>
      <h2 id="social-title">파이콘 한국과 연결하기</h2>
    </div>
    <p>소식과 이야기, 커뮤니티의 순간을<br>다양한 채널에서 전합니다.</p>
  </div>

  {% include social-links.html context="about" %}
</section>

<section class="about-section contact-section" aria-labelledby="contact-title">
  <div class="about-section__heading">
    <div>
      <p class="about-eyebrow">Contact</p>
      <h2 id="contact-title">문의하기</h2>
    </div>
    <p>문의 내용에 맞는 메일로 연락해 주세요.</p>
  </div>

  <ul class="contact-cards">
    <li><span>대표 문의</span><a href="mailto:pyconkr@pycon.kr">pyconkr@pycon.kr</a></li>
    <li><span>후원 문의</span><a href="mailto:sponsor@pycon.kr">sponsor@pycon.kr</a></li>
    <li><span>프로그램 문의</span><a href="mailto:program@pycon.kr">program@pycon.kr</a></li>
    <li><span>미디어 문의</span><a href="mailto:media@pycon.kr">media@pycon.kr</a></li>
  </ul>
</section>
