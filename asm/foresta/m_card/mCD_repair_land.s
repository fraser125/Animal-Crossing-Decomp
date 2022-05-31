lbl_803FC91C:
/* 803FC91C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FC920  7C 08 02 A6 */	mflr r0
/* 803FC924  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FC928  80 A3 00 00 */	lwz r5, 0(r3)
/* 803FC92C  80 03 00 0C */	lwz r0, 0xc(r3)
/* 803FC930  2C 05 FF FF */	cmpwi r5, -1
/* 803FC934  80 83 01 A4 */	lwz r4, 0x1a4(r3)
/* 803FC938  41 82 00 28 */	beq lbl_803FC960
/* 803FC93C  28 00 00 00 */	cmplwi r0, 0
/* 803FC940  41 82 00 20 */	beq lbl_803FC960
/* 803FC944  2C 04 FF FF */	cmpwi r4, -1
/* 803FC948  41 82 00 18 */	beq lbl_803FC960
/* 803FC94C  7C 03 03 78 */	mr r3, r0
/* 803FC950  38 84 00 01 */	addi r4, r4, 1
/* 803FC954  38 C1 00 08 */	addi r6, r1, 8
/* 803FC958  4B FF DF E1 */	bl mCD_save_file
/* 803FC95C  48 00 00 08 */	b lbl_803FC964
lbl_803FC960:
/* 803FC960  38 60 FF FF */	li r3, -1
lbl_803FC964:
/* 803FC964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FC968  7C 08 03 A6 */	mtlr r0
/* 803FC96C  38 21 00 10 */	addi r1, r1, 0x10
/* 803FC970  4E 80 00 20 */	blr 
