lbl_8062B9D4:
/* 8062B9D4  3C A3 00 02 */	addis r5, r3, 2
/* 8062B9D8  88 05 5A 66 */	lbz r0, 0x5a66(r5)
/* 8062B9DC  28 00 00 02 */	cmplwi r0, 2
/* 8062B9E0  40 82 00 34 */	bne lbl_8062BA14
/* 8062B9E4  A0 C5 5A 5E */	lhz r6, 0x5a5e(r5)
/* 8062B9E8  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FF00@ha */
/* 8062B9EC  38 84 FF 00 */	addi r4, r4, 0xFF00 /* 0x0000FF00@l */
/* 8062B9F0  38 C6 08 80 */	addi r6, r6, 0x880
/* 8062B9F4  7C 06 20 00 */	cmpw r6, r4
/* 8062B9F8  41 80 00 10 */	blt lbl_8062BA08
/* 8062B9FC  38 00 00 04 */	li r0, 4
/* 8062BA00  7C 86 23 78 */	mr r6, r4
/* 8062BA04  98 05 5A 66 */	stb r0, 0x5a66(r5)
lbl_8062BA08:
/* 8062BA08  3C 63 00 02 */	addis r3, r3, 2
/* 8062BA0C  B0 C3 5A 5E */	sth r6, 0x5a5e(r3)
/* 8062BA10  4E 80 00 20 */	blr 
lbl_8062BA14:
/* 8062BA14  28 00 00 04 */	cmplwi r0, 4
/* 8062BA18  4C 82 00 20 */	bnelr 
/* 8062BA1C  A8 85 5A 5C */	lha r4, 0x5a5c(r5)
/* 8062BA20  2C 04 00 00 */	cmpwi r4, 0
/* 8062BA24  40 82 00 0C */	bne lbl_8062BA30
/* 8062BA28  38 00 00 00 */	li r0, 0
/* 8062BA2C  48 00 00 10 */	b lbl_8062BA3C
lbl_8062BA30:
/* 8062BA30  38 04 FF FF */	addi r0, r4, -1
/* 8062BA34  B0 05 5A 5C */	sth r0, 0x5a5c(r5)
/* 8062BA38  7C 00 07 34 */	extsh r0, r0
lbl_8062BA3C:
/* 8062BA3C  2C 00 00 00 */	cmpwi r0, 0
/* 8062BA40  4C 82 00 20 */	bnelr 
/* 8062BA44  3C 63 00 02 */	addis r3, r3, 2
/* 8062BA48  38 00 00 03 */	li r0, 3
/* 8062BA4C  98 03 5A 66 */	stb r0, 0x5a66(r3)
/* 8062BA50  4E 80 00 20 */	blr 
