lbl_8054A934:
/* 8054A934  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A938  7C 08 02 A6 */	mflr r0
/* 8054A93C  38 A0 00 00 */	li r5, 0
/* 8054A940  38 C0 00 00 */	li r6, 0
/* 8054A944  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A948  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054A94C  7C 7F 1B 78 */	mr r31, r3
/* 8054A950  38 64 1D EC */	addi r3, r4, 0x1dec
/* 8054A954  38 80 00 14 */	li r4, 0x14
/* 8054A958  4B EA 4D 85 */	bl mSM_open_submenu
/* 8054A95C  38 00 00 1C */	li r0, 0x1c
/* 8054A960  90 1F 09 98 */	stw r0, 0x998(r31)
/* 8054A964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A968  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054A96C  7C 08 03 A6 */	mtlr r0
/* 8054A970  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A974  4E 80 00 20 */	blr 
