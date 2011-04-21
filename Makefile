all: resume.html

resume.html: resume.html.haml
	echo "<!-- WARNING: THIS FILE IS GENERATED -->" > $@
	echo "<!-- See $< on github.com/phleet/resume for source -->" >> $@
	cat $< | haml >> $@

publish: resume.html
	scp $< dreamhost:jamie-wong.com/ 
