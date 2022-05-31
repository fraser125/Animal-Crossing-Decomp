lbl_8053B490:
/* 8053B490  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053B494  7C 08 02 A6 */	mflr r0
/* 8053B498  2C 04 00 15 */	cmpwi r4, 0x15
/* 8053B49C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053B4A0  41 82 00 4C */	beq lbl_8053B4EC
/* 8053B4A4  40 80 00 7C */	bge lbl_8053B520
/* 8053B4A8  2C 04 00 14 */	cmpwi r4, 0x14
/* 8053B4AC  40 80 00 08 */	bge lbl_8053B4B4
/* 8053B4B0  48 00 00 70 */	b lbl_8053B520
lbl_8053B4B4:
/* 8053B4B4  A8 83 09 76 */	lha r4, 0x976(r3)
/* 8053B4B8  2C 04 FF FF */	cmpwi r4, -1
/* 8053B4BC  41 82 00 08 */	beq lbl_8053B4C4
/* 8053B4C0  48 00 00 60 */	b lbl_8053B520
lbl_8053B4C4:
/* 8053B4C4  88 03 09 7C */	lbz r0, 0x97c(r3)
/* 8053B4C8  2C 00 00 FF */	cmpwi r0, 0xff
/* 8053B4CC  40 82 00 0C */	bne lbl_8053B4D8
/* 8053B4D0  4B FF FF 81 */	bl func_8053B450
/* 8053B4D4  7C 60 1B 78 */	mr r0, r3
lbl_8053B4D8:
/* 8053B4D8  3C 60 80 6A */	lis r3, talk_turn_def_anime@ha /* 0x806A3490@ha */
/* 8053B4DC  54 00 10 3A */	slwi r0, r0, 2
/* 8053B4E0  38 63 34 90 */	addi r3, r3, talk_turn_def_anime@l /* 0x806A3490@l */
/* 8053B4E4  7C 83 00 2E */	lwzx r4, r3, r0
/* 8053B4E8  48 00 00 38 */	b lbl_8053B520
lbl_8053B4EC:
/* 8053B4EC  A8 83 09 74 */	lha r4, 0x974(r3)
/* 8053B4F0  2C 04 FF FF */	cmpwi r4, -1
/* 8053B4F4  41 82 00 08 */	beq lbl_8053B4FC
/* 8053B4F8  48 00 00 28 */	b lbl_8053B520
lbl_8053B4FC:
/* 8053B4FC  88 03 09 7C */	lbz r0, 0x97c(r3)
/* 8053B500  2C 00 00 FF */	cmpwi r0, 0xff
/* 8053B504  40 82 00 0C */	bne lbl_8053B510
/* 8053B508  4B FF FF 49 */	bl func_8053B450
/* 8053B50C  7C 60 1B 78 */	mr r0, r3
lbl_8053B510:
/* 8053B510  3C 60 80 6A */	lis r3, talk_def_anime@ha /* 0x806A34B4@ha */
/* 8053B514  54 00 10 3A */	slwi r0, r0, 2
/* 8053B518  38 63 34 B4 */	addi r3, r3, talk_def_anime@l /* 0x806A34B4@l */
/* 8053B51C  7C 83 00 2E */	lwzx r4, r3, r0
lbl_8053B520:
/* 8053B520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053B524  7C 83 23 78 */	mr r3, r4
/* 8053B528  7C 08 03 A6 */	mtlr r0
/* 8053B52C  38 21 00 10 */	addi r1, r1, 0x10
/* 8053B530  4E 80 00 20 */	blr 
