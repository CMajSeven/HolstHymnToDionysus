all: holst_dionysus_compressed.pdf Holst\ -\ Hymn\ to\ Dionysus.pdf

holst_dionysus_compressed.pdf : holst_dionysus.pdf holst_dionysus_2.pdf holst_dionysus_3.pdf
	pdftk A=holst_dionysus.pdf B=holst_dionysus_2.pdf C=holst_dionysus_3.pdf cat A1-30 B2-19 C2-16 output $@

Holst\ -\ Hymn\ to\ Dionysus.pdf : holst_dionysus_cover.pdf holst_dionysus_full.pdf holst_dionysus_full_2.pdf holst_dionysus_full_3.pdf
	pdftk D=holst_dionysus_cover.pdf A=holst_dionysus_full.pdf B=holst_dionysus_full_2.pdf C=holst_dionysus_full_3.pdf cat D1-2 A1-24 B2-19 C2-16 output temp.pdf
	cat temp.pdf label_end.bin > "Holst - Hymn to Dionysus.pdf"
	rm temp.pdf