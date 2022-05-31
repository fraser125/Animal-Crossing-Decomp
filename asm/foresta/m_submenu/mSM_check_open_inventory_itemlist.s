lbl_803F0320:
/* 803F0320  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803F0324  7C 08 02 A6 */	mflr r0
/* 803F0328  90 01 00 24 */	stw r0, 0x24(r1)
/* 803F032C  39 61 00 20 */	addi r11, r1, 0x20
/* 803F0330  4B CA AB 9D */	bl func_8009AECC
/* 803F0334  3C A0 80 66 */	lis r5, check_process@ha /* 0x8065DD38@ha */
/* 803F0338  54 60 10 3A */	slwi r0, r3, 2
/* 803F033C  38 65 DD 38 */	addi r3, r5, check_process@l /* 0x8065DD38@l */
/* 803F0340  7C 9B 23 78 */	mr r27, r4
/* 803F0344  7F C3 00 2E */	lwzx r30, r3, r0
/* 803F0348  3B 80 00 00 */	li r28, 0
/* 803F034C  28 1E 00 00 */	cmplwi r30, 0
/* 803F0350  40 82 00 10 */	bne lbl_803F0360
/* 803F0354  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 803F0358  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 803F035C  48 00 00 40 */	b lbl_803F039C
lbl_803F0360:
/* 803F0360  3B A0 00 00 */	li r29, 0
/* 803F0364  3B E0 00 01 */	li r31, 1
lbl_803F0368:
/* 803F0368  7F CC F3 78 */	mr r12, r30
/* 803F036C  7F A3 EB 78 */	mr r3, r29
/* 803F0370  7F 64 DB 78 */	mr r4, r27
/* 803F0374  7D 89 03 A6 */	mtctr r12
/* 803F0378  4E 80 04 21 */	bctrl 
/* 803F037C  2C 03 00 00 */	cmpwi r3, 0
/* 803F0380  41 82 00 0C */	beq lbl_803F038C
/* 803F0384  7F E0 E8 30 */	slw r0, r31, r29
/* 803F0388  7F 9C 03 78 */	or r28, r28, r0
lbl_803F038C:
/* 803F038C  3B BD 00 01 */	addi r29, r29, 1
/* 803F0390  2C 1D 00 0F */	cmpwi r29, 0xf
/* 803F0394  41 80 FF D4 */	blt lbl_803F0368
/* 803F0398  7F 83 E3 78 */	mr r3, r28
lbl_803F039C:
/* 803F039C  39 61 00 20 */	addi r11, r1, 0x20
/* 803F03A0  4B CA AB 79 */	bl func_8009AF18
/* 803F03A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803F03A8  7C 08 03 A6 */	mtlr r0
/* 803F03AC  38 21 00 20 */	addi r1, r1, 0x20
/* 803F03B0  4E 80 00 20 */	blr 
