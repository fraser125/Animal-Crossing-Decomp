lbl_803EF4E8:
/* 803EF4E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EF4EC  7C 08 02 A6 */	mflr r0
/* 803EF4F0  2C 06 00 00 */	cmpwi r6, 0
/* 803EF4F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EF4F8  41 82 00 0C */	beq lbl_803EF504
/* 803EF4FC  2C 06 00 01 */	cmpwi r6, 1
/* 803EF500  40 82 00 1C */	bne lbl_803EF51C
lbl_803EF504:
/* 803EF504  7C 83 23 78 */	mr r3, r4
/* 803EF508  7C A4 2B 78 */	mr r4, r5
/* 803EF50C  7C C5 33 78 */	mr r5, r6
/* 803EF510  4B FF FF 75 */	bl SubmenuArea_DoLink
/* 803EF514  38 60 00 01 */	li r3, 1
/* 803EF518  48 00 00 08 */	b lbl_803EF520
lbl_803EF51C:
/* 803EF51C  38 60 00 00 */	li r3, 0
lbl_803EF520:
/* 803EF520  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EF524  7C 08 03 A6 */	mtlr r0
/* 803EF528  38 21 00 10 */	addi r1, r1, 0x10
/* 803EF52C  4E 80 00 20 */	blr 
