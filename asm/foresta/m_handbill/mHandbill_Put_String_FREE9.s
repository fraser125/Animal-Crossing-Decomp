lbl_803B1E44:
/* 803B1E44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B1E48  7C 08 02 A6 */	mflr r0
/* 803B1E4C  7C E8 3B 78 */	mr r8, r7
/* 803B1E50  38 E0 00 09 */	li r7, 9
/* 803B1E54  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B1E58  4B FF FC F1 */	bl mHandbill_Put_String_FREE
/* 803B1E5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B1E60  7C 08 03 A6 */	mtlr r0
/* 803B1E64  38 21 00 10 */	addi r1, r1, 0x10
/* 803B1E68  4E 80 00 20 */	blr 
