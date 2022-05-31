lbl_805B9DD4:
/* 805B9DD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B9DD8  7C 08 02 A6 */	mflr r0
/* 805B9DDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B9DE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B9DE4  7C 7F 1B 78 */	mr r31, r3
/* 805B9DE8  80 03 01 74 */	lwz r0, 0x174(r3)
/* 805B9DEC  2C 00 00 01 */	cmpwi r0, 1
/* 805B9DF0  40 82 00 1C */	bne lbl_805B9E0C
/* 805B9DF4  38 9F 00 28 */	addi r4, r31, 0x28
/* 805B9DF8  38 60 00 09 */	li r3, 9
/* 805B9DFC  48 07 41 AD */	bl sAdo_OngenTrgStart
/* 805B9E00  7F E3 FB 78 */	mr r3, r31
/* 805B9E04  38 80 00 00 */	li r4, 0
/* 805B9E08  48 00 00 C5 */	bl aSHOP_setup_action
lbl_805B9E0C:
/* 805B9E0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B9E10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B9E14  7C 08 03 A6 */	mtlr r0
/* 805B9E18  38 21 00 10 */	addi r1, r1, 0x10
/* 805B9E1C  4E 80 00 20 */	blr 
