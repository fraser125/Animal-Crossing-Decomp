lbl_8049BD24:
/* 8049BD24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049BD28  7C 08 02 A6 */	mflr r0
/* 8049BD2C  7C A3 2B 78 */	mr r3, r5
/* 8049BD30  7C C4 33 78 */	mr r4, r6
/* 8049BD34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049BD38  7C E5 3B 78 */	mr r5, r7
/* 8049BD3C  7D 06 43 78 */	mr r6, r8
/* 8049BD40  4B FF F7 F9 */	bl aSOI_ins_field_fg_check_get
/* 8049BD44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049BD48  7C 08 03 A6 */	mtlr r0
/* 8049BD4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8049BD50  4E 80 00 20 */	blr 
