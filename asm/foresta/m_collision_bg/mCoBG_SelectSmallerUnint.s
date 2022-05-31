lbl_8038B1A8:
/* 8038B1A8  7C 03 20 40 */	cmplw r3, r4
/* 8038B1AC  40 80 00 08 */	bge lbl_8038B1B4
/* 8038B1B0  7C 64 1B 78 */	mr r4, r3
lbl_8038B1B4:
/* 8038B1B4  7C 83 23 78 */	mr r3, r4
/* 8038B1B8  4E 80 00 20 */	blr 
