REBAR ?= rebar3

.PHONY: compile
compile:
	$(REBAR) compile

.PHONY: dialyze
dialyze:
	$(REBAR) dialyzer

.PHONY: clean
clean:
	$(REBAR) clean

.PHONY: eunit
eunit:
	$(REBAR) eunit -v -m erlazure,erlazure_xml_tests,erlazure_utils_tests,erlazure_queue_tests,erlazure_blob_tests

.PHONY: ct
ct:
	$(REBAR) ct -v --readable=true
