lbl_8042D6B4:
/* 8042D6B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042D6B8  7C 08 02 A6 */	mflr r0
/* 8042D6BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042D6C0  80 03 03 0C */	lwz r0, 0x30c(r3)
/* 8042D6C4  2C 00 00 05 */	cmpwi r0, 5
/* 8042D6C8  41 82 00 4C */	beq lbl_8042D714
/* 8042D6CC  40 80 00 10 */	bge lbl_8042D6DC
/* 8042D6D0  2C 00 00 04 */	cmpwi r0, 4
/* 8042D6D4  40 80 00 14 */	bge lbl_8042D6E8
/* 8042D6D8  48 00 00 3C */	b lbl_8042D714
lbl_8042D6DC:
/* 8042D6DC  2C 00 00 07 */	cmpwi r0, 7
/* 8042D6E0  40 80 00 34 */	bge lbl_8042D714
/* 8042D6E4  48 00 00 1C */	b lbl_8042D700
lbl_8042D6E8:
/* 8042D6E8  3C A0 80 64 */	lis r5, lit_500@ha /* 0x8064410C@ha */
/* 8042D6EC  7C 64 1B 78 */	mr r4, r3
/* 8042D6F0  C0 25 41 0C */	lfs f1, lit_500@l(r5)  /* 0x8064410C@l */
/* 8042D6F4  38 60 04 33 */	li r3, 0x433
/* 8042D6F8  4B FF FF 6D */	bl aMBX_setup_flag_se_sub
/* 8042D6FC  48 00 00 18 */	b lbl_8042D714
lbl_8042D700:
/* 8042D700  3C A0 80 64 */	lis r5, lit_500@ha /* 0x8064410C@ha */
/* 8042D704  7C 64 1B 78 */	mr r4, r3
/* 8042D708  C0 25 41 0C */	lfs f1, lit_500@l(r5)  /* 0x8064410C@l */
/* 8042D70C  38 60 04 34 */	li r3, 0x434
/* 8042D710  4B FF FF 55 */	bl aMBX_setup_flag_se_sub
lbl_8042D714:
/* 8042D714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042D718  7C 08 03 A6 */	mtlr r0
/* 8042D71C  38 21 00 10 */	addi r1, r1, 0x10
/* 8042D720  4E 80 00 20 */	blr 
