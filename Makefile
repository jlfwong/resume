.PHONY: open

open: resume.html
	open $<

resume.html: resume.html.haml
	echo "<!-- WARNING: THIS FILE IS GENERATED -->" > $@
	echo "<!-- See $< on github.com/phleet/resume for source -->" >> $@
	bundle exec haml < $< >> $@ || rm $@

publish: resume.html
	scp $< ec2:/var/www/jamie-wong.com/resume/index.html
