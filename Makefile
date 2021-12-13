.PHONY: build gen slow freq compare docs serve typing

BEST = best100
LAYOUTS = layouts

compare: freq
	kilo eval ${LAYOUTS}.txt -o ${LAYOUTS}.db 
	kilo compare ${LAYOUTS}.db 
	kilo export -imx maps/kilo[0-9]*.yaml -g maps/groups.yaml
	kilo export -imx maps/kilo*-s.yaml -g maps/groups-s.yaml

typing: compare
	kilo export -t maps/kilo[0-9]*.yaml

freq:
	install -d db 
	install -d .kilo
	install -d maps
	kilo freq -f data/bigrams.eng_web_2014_1M-sentences.txt.yml.zst

gen:
	kilo gen -f data/fast.eng_web_2014_1M-sentences.txt.yml
	kilo gen --best 100 > ${BEST}.txt
	kilo improve --layouts ${BEST}.txt \
		--limit 5 -o ${BEST}.db sql/improve*sql

docs:
	mkdocs build
serve:
	mkdocs serve

