.PHONY: open

open: resume.html
	open $<

resume.html: resume.html.haml
	echo "<!-- WARNING: THIS FILE IS GENERATED -->" > $@
	echo "<!-- See $< on github.com/jlfwong/resume for source -->" >> $@
	haml < $< >> $@ || rm $@

publish: resume.html
	scp $< ubuntu@jamie-wong.com:/var/www/jamie-wong.com/resume/index.html
