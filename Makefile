all: resume.html

resume.html: resume.html.haml
	echo "<!-- WARNING: THIS FILE IS GENERATED -->" > $@
	echo "<!-- See $< for source -->" >> $@
	cat $< | haml >> $@

publish: resume.html
	scp $< dreamhost:jamie-wong.com/ 
