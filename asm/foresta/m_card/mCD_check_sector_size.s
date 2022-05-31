lbl_803F792C:
/* 803F792C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803F7930  7C 08 02 A6 */	mflr r0
/* 803F7934  90 01 00 34 */	stw r0, 0x34(r1)
/* 803F7938  39 61 00 30 */	addi r11, r1, 0x30
/* 803F793C  4B CA 35 91 */	bl func_8009AECC
/* 803F7940  38 00 00 00 */	li r0, 0
/* 803F7944  7C 7B 1B 78 */	mr r27, r3
/* 803F7948  90 01 00 0C */	stw r0, 0xc(r1)
/* 803F794C  7C 9F 23 78 */	mr r31, r4
/* 803F7950  3B C0 00 00 */	li r30, 0
/* 803F7954  3B A0 FF FF */	li r29, -1
/* 803F7958  90 01 00 08 */	stw r0, 8(r1)
/* 803F795C  3B 80 FF FF */	li r28, -1
/* 803F7960  48 00 00 2C */	b lbl_803F798C
lbl_803F7964:
/* 803F7964  7F E3 FB 78 */	mr r3, r31
/* 803F7968  38 81 00 0C */	addi r4, r1, 0xc
/* 803F796C  38 A1 00 08 */	addi r5, r1, 8
/* 803F7970  4B C9 85 29 */	bl CARDProbeEx
/* 803F7974  7C 7D 1B 78 */	mr r29, r3
/* 803F7978  2C 1D FF FF */	cmpwi r29, -1
/* 803F797C  40 82 00 10 */	bne lbl_803F798C
/* 803F7980  38 60 00 01 */	li r3, 1
/* 803F7984  4B C6 54 55 */	bl msleep
/* 803F7988  3B DE 00 01 */	addi r30, r30, 1
lbl_803F798C:
/* 803F798C  2C 1D FF FF */	cmpwi r29, -1
/* 803F7990  40 82 00 0C */	bne lbl_803F799C
/* 803F7994  2C 1E 01 F4 */	cmpwi r30, 0x1f4
/* 803F7998  41 80 FF CC */	blt lbl_803F7964
lbl_803F799C:
/* 803F799C  2C 1D 00 00 */	cmpwi r29, 0
/* 803F79A0  40 82 00 1C */	bne lbl_803F79BC
/* 803F79A4  80 01 00 08 */	lwz r0, 8(r1)
/* 803F79A8  7C 1B 00 40 */	cmplw r27, r0
/* 803F79AC  40 82 00 0C */	bne lbl_803F79B8
/* 803F79B0  3B 80 00 01 */	li r28, 1
/* 803F79B4  48 00 00 08 */	b lbl_803F79BC
lbl_803F79B8:
/* 803F79B8  3B 80 00 00 */	li r28, 0
lbl_803F79BC:
/* 803F79BC  7F 83 E3 78 */	mr r3, r28
/* 803F79C0  39 61 00 30 */	addi r11, r1, 0x30
/* 803F79C4  4B CA 35 55 */	bl func_8009AF18
/* 803F79C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803F79CC  7C 08 03 A6 */	mtlr r0
/* 803F79D0  38 21 00 30 */	addi r1, r1, 0x30
/* 803F79D4  4E 80 00 20 */	blr 
