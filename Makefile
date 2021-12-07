.PHONY: build gen slow freq compare docs serve typing

BEST = best100
LAYOUTS = layouts

compare: freq
	kilo eval --score scripts/score.rb ${LAYOUTS}.txt -o ${LAYOUTS}.db 
	kilo compare ${LAYOUTS}.db 
	kilo export -mx maps/kilo45.yaml maps/kilo51.yaml -g maps/groups.yaml
	kilo export -mx maps/kilo*-s.yaml -g maps/groups-s.yaml

typing: compare
	kilo export -t maps/kilo45.yaml maps/kilo51.yaml

freq:
	install -d db 
	install -d .kilo
	install -d maps
	kilo freq -f data/bigrams.eng_web_2014_1M-sentences.txt.yml.zst

gen:
	kilo gen -f data/fast.eng_web_2014_1M-sentences.txt.yml
	kilo gen --best 100 > ${BEST}.txt
	kilo improve --layouts ${BEST}.txt --score scripts/score.rb \
		--limit 1 -o ${BEST}.pre.db sql/pre_slow_improve.sql 
	kilo query --sql sql/by_hand.sql ${BEST}.pre.db --limit 30 --layouts \
		> ${BEST}.impr.txt

slow:
	kilo improve --slow 2 --layouts ${BEST}.impr.txt --score scripts/score.rb \
		--limit 20 -o ${BEST}.slow.db sql/improve*
docs:
	mkdocs build
serve:
	mkdocs serve


