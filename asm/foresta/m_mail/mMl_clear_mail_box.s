lbl_803BC750:
/* 803BC750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC754  7C 08 02 A6 */	mflr r0
/* 803BC758  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC75C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BC760  7C 9F 23 78 */	mr r31, r4
/* 803BC764  93 C1 00 08 */	stw r30, 8(r1)
/* 803BC768  7C 7E 1B 78 */	mr r30, r3
/* 803BC76C  48 00 00 14 */	b lbl_803BC780
lbl_803BC770:
/* 803BC770  7F C3 F3 78 */	mr r3, r30
/* 803BC774  3B FF FF FF */	addi r31, r31, -1
/* 803BC778  4B FF FF 89 */	bl mMl_clear_mail
/* 803BC77C  3B DE 01 2A */	addi r30, r30, 0x12a
lbl_803BC780:
/* 803BC780  2C 1F 00 00 */	cmpwi r31, 0
/* 803BC784  40 82 FF EC */	bne lbl_803BC770
/* 803BC788  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC78C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BC790  83 C1 00 08 */	lwz r30, 8(r1)
/* 803BC794  7C 08 03 A6 */	mtlr r0
/* 803BC798  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC79C  4E 80 00 20 */	blr 
