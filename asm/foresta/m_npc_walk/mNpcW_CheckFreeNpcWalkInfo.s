lbl_803D78D8:
/* 803D78D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D78DC  7C 08 02 A6 */	mflr r0
/* 803D78E0  28 03 00 00 */	cmplwi r3, 0
/* 803D78E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D78E8  38 00 00 00 */	li r0, 0
/* 803D78EC  41 82 00 0C */	beq lbl_803D78F8
/* 803D78F0  4B FF 3A ED */	bl mNpc_CheckFreeAnimalPersonalID
/* 803D78F4  7C 60 1B 78 */	mr r0, r3
lbl_803D78F8:
/* 803D78F8  7C 03 03 78 */	mr r3, r0
/* 803D78FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D7900  7C 08 03 A6 */	mtlr r0
/* 803D7904  38 21 00 10 */	addi r1, r1, 0x10
/* 803D7908  4E 80 00 20 */	blr 
