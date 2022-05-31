lbl_803C4F44:
/* 803C4F44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C4F48  7C 08 02 A6 */	mflr r0
/* 803C4F4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C4F50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C4F54  7C 9F 23 78 */	mr r31, r4
/* 803C4F58  93 C1 00 08 */	stw r30, 8(r1)
/* 803C4F5C  7C 7E 1B 78 */	mr r30, r3
/* 803C4F60  80 84 00 00 */	lwz r4, 0(r4)
/* 803C4F64  4B FF B0 E5 */	bl func_803C0048
/* 803C4F68  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C4F6C  7C 00 1A 14 */	add r0, r0, r3
/* 803C4F70  7F C3 F3 78 */	mr r3, r30
/* 803C4F74  90 1F 00 00 */	stw r0, 0(r31)
/* 803C4F78  4B FF B0 B1 */	bl mMsg_set_cursol_just
/* 803C4F7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C4F80  38 60 00 00 */	li r3, 0
/* 803C4F84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C4F88  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C4F8C  7C 08 03 A6 */	mtlr r0
/* 803C4F90  38 21 00 10 */	addi r1, r1, 0x10
/* 803C4F94  4E 80 00 20 */	blr 
