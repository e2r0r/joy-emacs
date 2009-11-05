<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  
  

  


  

  <head>
    <title>
      /hacks/trunk/django-mode.el –
      ⓤ Unicoders – Trac
    </title><link rel="search" href="/search" /><link rel="help" href="/wiki/TracGuide" /><link rel="alternate" href="/browser/hacks/trunk/django-mode.el?format=txt" type="text/plain" title="Plain Text" /><link rel="alternate" href="/export/117/hacks/trunk/django-mode.el" type="text/x-elisp; charset=utf-8" title="Original Format" /><link rel="up" href="/browser/hacks/trunk" title="Parent directory" /><link rel="start" href="/wiki" /><link rel="stylesheet" href="/chrome/common/css/trac.css" type="text/css" /><link rel="stylesheet" href="/chrome/common/css/code.css" type="text/css" /><link rel="stylesheet" href="/chrome/common/css/browser.css" type="text/css" /><link type="application/opensearchdescription+xml" rel="search" href="/search/opensearch" title="Search ⓤ Unicoders" /><script type="text/javascript" src="/chrome/common/js/jquery.js"></script><script type="text/javascript" src="/chrome/common/js/trac.js"></script><script type="text/javascript" src="/chrome/common/js/search.js"></script><script type="text/javascript" src="/chrome/common/js/ie_pre7_hacks.js"></script><script type="text/javascript">
      jQuery(document).ready(function($) {
        $("#jumploc input").hide();
        $("#jumploc select").change(function () {
          this.parentNode.parentNode.submit();
        })
      });
    </script>
    <link rel="stylesheet" type="text/css" href="/chrome/site/style.css" />
  </head>
  <body>
    <div id="siteheader">
    </div>
    <div id="banner">
      <div id="header">
        <h1><a href="http://code.unicoders.org/">ⓤ Unicoders</a></h1>
      </div>
      <form id="search" action="/search" method="get">
        <div>
          <label for="proj-search">Search:</label>
          <input type="text" id="proj-search" name="q" size="18" value="" />
          <input type="submit" value="Search" />
        </div>
      </form>
      <div id="metanav" class="nav">
    <ul>
      <li class="first"><a href="/login">Login</a></li><li><a href="/wiki/TracGuide">Help/Guide</a></li><li><a href="/about">About Trac</a></li><li class="last"><a href="/prefs">Preferences</a></li>
    </ul>
  </div>
    </div>
    <div id="mainnav" class="nav">
    <ul>
      <li class="first"><a href="/wiki">Wiki</a></li><li><a href="/timeline">Timeline</a></li><li><a href="/roadmap">Roadmap</a></li><li class="active"><a href="/browser">Browse Source</a></li><li><a href="/report/3">View Tickets</a></li><li><a href="/newticket">New Ticket</a></li><li class="last"><a href="/search">Search</a></li>
    </ul>
  </div>
    <div id="main">
      <div id="ctxtnav" class="nav">
        <h2>Context Navigation</h2>
          <ul>
            <li class="first "><a href="/changeset/113/hacks/trunk/django-mode.el">Last Change</a></li><li><a href="/browser/hacks/trunk/django-mode.el?annotate=blame&amp;rev=113" title="Annotate each line with the last changed revision (this can be time consuming...)">Annotate</a></li><li class="last"><a href="/log/hacks/trunk/django-mode.el">Revision Log</a></li>
          </ul>
        <hr />
      </div>
    <div id="content" class="browser">
      <h1>
    <a class="pathentry first" title="Go to root directory" href="/browser">root</a><span class="pathentry sep">/</span><a class="pathentry" title="View hacks" href="/browser/hacks">hacks</a><span class="pathentry sep">/</span><a class="pathentry" title="View trunk" href="/browser/hacks/trunk">trunk</a><span class="pathentry sep">/</span><a class="pathentry" title="View django-mode.el" href="/browser/hacks/trunk/django-mode.el">django-mode.el</a>
    <br style="clear: both" />
  </h1>
      <div id="jumprev">
        <form action="" method="get">
          <div>
            <label for="rev">
              View revision:</label>
            <input type="text" id="rev" name="rev" size="6" />
          </div>
        </form>
      </div>
      <table id="info" summary="Revision info">
        <tr>
          <th scope="col">
            Revision <a href="/changeset/113">113</a>, <span title="1997 bytes">2.0 kB</span>
            (checked in by verbosus, <a class="timeline" href="/timeline?from=2008-08-24T20%3A06%3A01Z%2B0000&amp;precision=second" title="2008-08-24T20:06:01Z+0000 in Timeline">11 months</a> ago)
          </th>
        </tr>
        <tr>
          <td class="message searchable">
              <p>
Added Michael Demmer patch to django-mode.el <br />
</p>
          </td>
        </tr>
      </table>
      <div id="preview" class="searchable">
    <table class="code"><thead><tr><th class="lineno" title="Line numbers">Line</th><th class="content"> </th></tr></thead><tbody><tr><th id="L1"><a href="#L1">1</a></th><td>; A (rather minimal) major mode for Emacs to edit Django templates</td></tr><tr><th id="L2"><a href="#L2">2</a></th><td>; by Antonio Cavedoni &lt;http://cavedoni.com/&gt;</td></tr><tr><th id="L3"><a href="#L3">3</a></th><td>;</td></tr><tr><th id="L4"><a href="#L4">4</a></th><td>; Hacked together following instructions from the awesome: </td></tr><tr><th id="L5"><a href="#L5">5</a></th><td>; http://two-wugs.net/emacs/mode-tutorial.html</td></tr><tr><th id="L6"><a href="#L6">6</a></th><td>; </td></tr><tr><th id="L7"><a href="#L7">7</a></th><td>; Acknowledgements:</td></tr><tr><th id="L8"><a href="#L8">8</a></th><td>; </td></tr><tr><th id="L9"><a href="#L9">9</a></th><td>;   - Patrick Quinn &lt;http://www.patrickquinn.net/&gt;</td></tr><tr><th id="L10"><a href="#L10">10</a></th><td>;     for the font-locking patch for HTML syntax</td></tr><tr><th id="L11"><a href="#L11">11</a></th><td>;</td></tr><tr><th id="L12"><a href="#L12">12</a></th><td>;   - Alessandro Guido</td></tr><tr><th id="L13"><a href="#L13">13</a></th><td>;     for the sgml-mode include patch</td></tr><tr><th id="L14"><a href="#L14">14</a></th><td>; </td></tr><tr><th id="L15"><a href="#L15">15</a></th><td>;   - Michael Demmer</td></tr><tr><th id="L16"><a href="#L16">16</a></th><td>;     for the regexp order issue </td></tr><tr><th id="L17"><a href="#L17">17</a></th><td></td></tr><tr><th id="L18"><a href="#L18">18</a></th><td>(require 'sgml-mode)</td></tr><tr><th id="L19"><a href="#L19">19</a></th><td></td></tr><tr><th id="L20"><a href="#L20">20</a></th><td>(defvar django-mode-hook nil)</td></tr><tr><th id="L21"><a href="#L21">21</a></th><td></td></tr><tr><th id="L22"><a href="#L22">22</a></th><td>(defvar django-mode-map</td></tr><tr><th id="L23"><a href="#L23">23</a></th><td>  (let ((django-mode-map (make-keymap)))</td></tr><tr><th id="L24"><a href="#L24">24</a></th><td>    (define-key django-mode-map "\C-j" 'newline-and-indent)</td></tr><tr><th id="L25"><a href="#L25">25</a></th><td>    django-mode-map)</td></tr><tr><th id="L26"><a href="#L26">26</a></th><td>  "Keymap for Django major mode")</td></tr><tr><th id="L27"><a href="#L27">27</a></th><td></td></tr><tr><th id="L28"><a href="#L28">28</a></th><td>(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . django-mode))</td></tr><tr><th id="L29"><a href="#L29">29</a></th><td></td></tr><tr><th id="L30"><a href="#L30">30</a></th><td>(defconst django-font-lock-keywords-1</td></tr><tr><th id="L31"><a href="#L31">31</a></th><td>  (list</td></tr><tr><th id="L32"><a href="#L32">32</a></th><td>   '("{% ?comment ?%}\\(\n?.*?\\)+?{% ?endcomment ?%}" . font-lock-comment-face)</td></tr><tr><th id="L33"><a href="#L33">33</a></th><td>   '("{% ?\\(\\(end\\)?\\(extends\\|for\\|cycle\\|filter\\|firstof\\|debug\\|if\\(changed\\|equal\\|notequal\\|\\)\\|include\\|load\\|now\\|regroup\\|spaceless\\|ssi\\|templatetag\\|widthratio\\|block\\)\\) ?.*? ?%}" . 1)</td></tr><tr><th id="L34"><a href="#L34">34</a></th><td>   '("{{ ?\\(.*?\\) ?}}" . (1 font-lock-variable-name-face))</td></tr><tr><th id="L35"><a href="#L35">35</a></th><td>   '("{%\\|\\%}\\|{{\\|}}" . font-lock-builtin-face)</td></tr><tr><th id="L36"><a href="#L36">36</a></th><td>   "Minimal highlighting expressions for Django mode"))</td></tr><tr><th id="L37"><a href="#L37">37</a></th><td></td></tr><tr><th id="L38"><a href="#L38">38</a></th><td>(defvar django-font-lock-keywords </td></tr><tr><th id="L39"><a href="#L39">39</a></th><td>  (append sgml-font-lock-keywords django-font-lock-keywords-1) </td></tr><tr><th id="L40"><a href="#L40">40</a></th><td>  "Default highlighting expressions for Django mode")</td></tr><tr><th id="L41"><a href="#L41">41</a></th><td></td></tr><tr><th id="L42"><a href="#L42">42</a></th><td>(defvar django-mode-syntax-table</td></tr><tr><th id="L43"><a href="#L43">43</a></th><td>  (let ((django-mode-syntax-table (make-syntax-table)))</td></tr><tr><th id="L44"><a href="#L44">44</a></th><td>    django-mode-syntax-table)</td></tr><tr><th id="L45"><a href="#L45">45</a></th><td>  "Syntax table for django-mode")</td></tr><tr><th id="L46"><a href="#L46">46</a></th><td></td></tr><tr><th id="L47"><a href="#L47">47</a></th><td>(defun django-mode ()</td></tr><tr><th id="L48"><a href="#L48">48</a></th><td>  "Major mode for editing Django templates"</td></tr><tr><th id="L49"><a href="#L49">49</a></th><td>  (interactive)</td></tr><tr><th id="L50"><a href="#L50">50</a></th><td>  (kill-all-local-variables)</td></tr><tr><th id="L51"><a href="#L51">51</a></th><td>  (set-syntax-table django-mode-syntax-table)</td></tr><tr><th id="L52"><a href="#L52">52</a></th><td>  (use-local-map django-mode-map)</td></tr><tr><th id="L53"><a href="#L53">53</a></th><td>  (html-mode)</td></tr><tr><th id="L54"><a href="#L54">54</a></th><td>  (set (make-local-variable 'font-lock-defaults) '(django-font-lock-keywords))</td></tr><tr><th id="L55"><a href="#L55">55</a></th><td>  (setq major-mode 'django-mode)</td></tr><tr><th id="L56"><a href="#L56">56</a></th><td>  (setq mode-name "Django")</td></tr><tr><th id="L57"><a href="#L57">57</a></th><td>  (run-hooks 'django-mode-hook))</td></tr><tr><th id="L58"><a href="#L58">58</a></th><td></td></tr><tr><th id="L59"><a href="#L59">59</a></th><td>(provide 'django-mode)</td></tr></tbody></table>
      </div>
      <div id="help">
        <strong>Note:</strong> See <a href="/wiki/TracBrowser">TracBrowser</a>
        for help on using the browser.
      </div>
      <div id="anydiff">
        <form action="/diff" method="get">
          <div class="buttons">
            <input type="hidden" name="new_path" value="/hacks/trunk/django-mode.el" />
            <input type="hidden" name="old_path" value="/hacks/trunk/django-mode.el" />
            <input type="hidden" name="new_rev" value="113" />
            <input type="hidden" name="old_rev" value="113" />
            <input type="submit" value="View changes..." title="Select paths and revs for Diff" />
          </div>
        </form>
      </div>
    </div>
    <div id="altlinks">
      <h3>Download in other formats:</h3>
      <ul>
        <li class="first">
          <a rel="nofollow" href="/browser/hacks/trunk/django-mode.el?format=txt">Plain Text</a>
        </li><li class="last">
          <a rel="nofollow" href="/export/117/hacks/trunk/django-mode.el">Original Format</a>
        </li>
      </ul>
    </div>
    </div>
    <div id="footer" lang="en" xml:lang="en"><hr />
      <a id="tracpowered" href="http://trac.edgewall.org/"><img src="/chrome/common/trac_logo_mini.png" height="30" width="107" alt="Trac Powered" /></a>
      <p class="left">
        Powered by <a href="/about"><strong>Trac 0.11</strong></a><br />
        By <a href="http://www.edgewall.org/">Edgewall Software</a>.
      </p>
      <p class="right">The Unicoders SVN repository is available at svn://unicoders.org/unicoders/.</p>
    </div>
    <div id="sitefooter">
    </div>
  </body>
</html>