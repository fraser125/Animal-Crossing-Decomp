lbl_8059A2B4:
/* 8059A2B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059A2B8  7C 08 02 A6 */	mflr r0
/* 8059A2BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059A2C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059A2C4  7C 7F 1B 78 */	mr r31, r3
/* 8059A2C8  93 C1 00 08 */	stw r30, 8(r1)
/* 8059A2CC  7C 9E 23 78 */	mr r30, r4
/* 8059A2D0  4B FF FA FD */	bl aIGK_check_patience
/* 8059A2D4  2C 03 00 01 */	cmpwi r3, 1
/* 8059A2D8  40 82 00 18 */	bne lbl_8059A2F0
/* 8059A2DC  7F E3 FB 78 */	mr r3, r31
/* 8059A2E0  7F C5 F3 78 */	mr r5, r30
/* 8059A2E4  38 80 00 00 */	li r4, 0
/* 8059A2E8  48 00 04 39 */	bl aIGK_setupAction
/* 8059A2EC  48 00 00 30 */	b lbl_8059A31C
lbl_8059A2F0:
/* 8059A2F0  80 7F 02 28 */	lwz r3, 0x228(r31)
/* 8059A2F4  38 03 FF FF */	addi r0, r3, -1
/* 8059A2F8  90 1F 02 28 */	stw r0, 0x228(r31)
/* 8059A2FC  80 1F 02 28 */	lwz r0, 0x228(r31)
/* 8059A300  2C 00 00 00 */	cmpwi r0, 0
/* 8059A304  41 81 00 18 */	bgt lbl_8059A31C
/* 8059A308  80 9F 01 D8 */	lwz r4, 0x1d8(r31)
/* 8059A30C  7F E3 FB 78 */	mr r3, r31
/* 8059A310  7F C5 F3 78 */	mr r5, r30
/* 8059A314  38 84 00 01 */	addi r4, r4, 1
/* 8059A318  48 00 04 09 */	bl aIGK_setupAction
lbl_8059A31C:
/* 8059A31C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059A320  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059A324  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059A328  7C 08 03 A6 */	mtlr r0
/* 8059A32C  38 21 00 10 */	addi r1, r1, 0x10
/* 8059A330  4E 80 00 20 */	blr 
