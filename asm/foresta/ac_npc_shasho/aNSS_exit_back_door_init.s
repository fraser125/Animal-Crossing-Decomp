lbl_80576A3C:
/* 80576A3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80576A40  7C 08 02 A6 */	mflr r0
/* 80576A44  90 01 00 14 */	stw r0, 0x14(r1)
/* 80576A48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80576A4C  7C 7F 1B 78 */	mr r31, r3
/* 80576A50  4B FF FB 85 */	bl aNSS_set_stop_spd
/* 80576A54  38 00 00 08 */	li r0, 8
/* 80576A58  90 1F 09 98 */	stw r0, 0x998(r31)
/* 80576A5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80576A60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80576A64  7C 08 03 A6 */	mtlr r0
/* 80576A68  38 21 00 10 */	addi r1, r1, 0x10
/* 80576A6C  4E 80 00 20 */	blr 