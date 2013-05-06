all: d3.v3.min.js flare.json

clean:
	rm -rf d3.v3.zip LICENSE
	rm -rf d3.v3.js d3.v3.min.js flare.json 

serve: all
	python -m SimpleHTTPServer 8080

d3.v3.min.js: d3.v3.zip
	unzip d3.v3.zip
	touch $@
d3.v3.zip:
	wget http://d3js.org/d3.v3.zip
flare.json:
	wget http://bl.ocks.org/mbostock/raw/4063550/flare.json