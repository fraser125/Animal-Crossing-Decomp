lbl_803B1F34:
/* 803B1F34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B1F38  7C 08 02 A6 */	mflr r0
/* 803B1F3C  7C E8 3B 78 */	mr r8, r7
/* 803B1F40  38 E0 00 0F */	li r7, 0xf
/* 803B1F44  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B1F48  4B FF FC 01 */	bl mHandbill_Put_String_FREE
/* 803B1F4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B1F50  7C 08 03 A6 */	mtlr r0
/* 803B1F54  38 21 00 10 */	addi r1, r1, 0x10
/* 803B1F58  4E 80 00 20 */	blr 
