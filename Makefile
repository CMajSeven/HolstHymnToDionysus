holst_dionysus_compressed.pdf : holst_dionysus.pdf holst_dionysus_2.pdf holst_dionysus_3.pdf
	pdftk A=holst_dionysus.pdf B=holst_dionysus_2.pdf C=holst_dionysus_3.pdf cat A1-30 B2-19 C2-16 output $@