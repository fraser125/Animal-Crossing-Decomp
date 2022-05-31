lbl_80629D48:
/* 80629D48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80629D4C  7C 08 02 A6 */	mflr r0
/* 80629D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80629D54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80629D58  7C 7F 1B 78 */	mr r31, r3
/* 80629D5C  4B D5 53 F5 */	bl Camera2_ClearActorTalking_Cull
/* 80629D60  7F E3 FB 78 */	mr r3, r31
/* 80629D64  4B D5 95 95 */	bl Camera2_process
/* 80629D68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80629D6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80629D70  7C 08 03 A6 */	mtlr r0
/* 80629D74  38 21 00 10 */	addi r1, r1, 0x10
/* 80629D78  4E 80 00 20 */	blr 
