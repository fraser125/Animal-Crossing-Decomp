lbl_80383F50:
/* 80383F50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383F54  7C 08 02 A6 */	mflr r0
/* 80383F58  38 E0 00 09 */	li r7, 9
/* 80383F5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383F60  4B FF FE 51 */	bl mChoice_Put_String_FREE
/* 80383F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383F68  7C 08 03 A6 */	mtlr r0
/* 80383F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80383F70  4E 80 00 20 */	blr 
