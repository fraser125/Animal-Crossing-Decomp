lbl_80517168:
/* 80517168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051716C  7C 08 02 A6 */	mflr r0
/* 80517170  90 01 00 14 */	stw r0, 0x14(r1)
/* 80517174  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80517178  7C 7F 1B 78 */	mr r31, r3
/* 8051717C  80 03 08 A0 */	lwz r0, 0x8a0(r3)
/* 80517180  28 00 00 00 */	cmplwi r0, 0
/* 80517184  40 82 00 44 */	bne lbl_805171C8
/* 80517188  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051718C  7F E5 FB 78 */	mr r5, r31
/* 80517190  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80517194  7C 86 23 78 */	mr r6, r4
/* 80517198  3C 83 00 02 */	addis r4, r3, 2
/* 8051719C  38 60 00 2B */	li r3, 0x2b
/* 805171A0  81 24 60 A0 */	lwz r9, 0x60a0(r4)
/* 805171A4  38 80 00 04 */	li r4, 4
/* 805171A8  38 E0 FF FF */	li r7, -1
/* 805171AC  39 00 00 00 */	li r8, 0
/* 805171B0  81 89 00 00 */	lwz r12, 0(r9)
/* 805171B4  7D 89 03 A6 */	mtctr r12
/* 805171B8  4E 80 04 21 */	bctrl 
/* 805171BC  28 03 00 00 */	cmplwi r3, 0
/* 805171C0  41 82 00 08 */	beq lbl_805171C8
/* 805171C4  90 7F 08 A0 */	stw r3, 0x8a0(r31)
lbl_805171C8:
/* 805171C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805171CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805171D0  7C 08 03 A6 */	mtlr r0
/* 805171D4  38 21 00 10 */	addi r1, r1, 0x10
/* 805171D8  4E 80 00 20 */	blr 