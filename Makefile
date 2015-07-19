all : tm-en-us.com tm-pt-br.com

NASM = nasm

tm-en-us.com :
	$(NASM) -isrc/ -isrc/lib/ -dL10N_QDT_FILE=\"l10n/en-us.qdt\" \
    -fbin -otm-en-us.com src/tm.qdt

tm-pt-br.com :
	$(NASM) -isrc/ -isrc/lib/ -dL10N_QDT_FILE=\"l10n/pt-br.qdt\" \
    -fbin -otm-pt-br.com src/tm.qdt

clean :
	rm -f tm-en-us.com tm-pt-br.com

.PHONY : clean
