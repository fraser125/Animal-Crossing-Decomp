lbl_80571CFC:
/* 80571CFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80571D00  7C 08 02 A6 */	mflr r0
/* 80571D04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80571D08  4B FF FD 19 */	bl aNRG2_talk_start_wait
/* 80571D0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80571D10  7C 08 03 A6 */	mtlr r0
/* 80571D14  38 21 00 10 */	addi r1, r1, 0x10
/* 80571D18  4E 80 00 20 */	blr 
