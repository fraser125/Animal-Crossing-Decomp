lbl_803BCBF8:
/* 803BCBF8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BCBFC  7C 08 02 A6 */	mflr r0
/* 803BCC00  7C 89 23 78 */	mr r9, r4
/* 803BCC04  3C C0 81 17 */	lis r6, data_81169E08@ha /* 0x81169E08@ha */
/* 803BCC08  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BCC0C  3C A0 81 17 */	lis r5, footer@ha /* 0x81169E30@ha */
/* 803BCC10  38 80 00 28 */	li r4, 0x28
/* 803BCC14  38 E0 00 30 */	li r7, 0x30
/* 803BCC18  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BCC1C  7C 7F 1B 78 */	mr r31, r3
/* 803BCC20  38 66 9E 08 */	addi r3, r6, data_81169E08@l /* 0x81169E08@l */
/* 803BCC24  38 C5 9E 30 */	addi r6, r5, footer@l /* 0x81169E30@l */
/* 803BCC28  38 A1 00 08 */	addi r5, r1, 8
/* 803BCC2C  39 1F 00 4A */	addi r8, r31, 0x4a
/* 803BCC30  4B FF 5B 79 */	bl mHandbill_Load_HandbillFromRom2
/* 803BCC34  3C 60 81 17 */	lis r3, data_81169E08@ha /* 0x81169E08@ha */
/* 803BCC38  38 9F 00 32 */	addi r4, r31, 0x32
/* 803BCC3C  38 63 9E 08 */	addi r3, r3, data_81169E08@l /* 0x81169E08@l */
/* 803BCC40  38 A0 00 18 */	li r5, 0x18
/* 803BCC44  4B CA 03 D9 */	bl func_8005D01C
/* 803BCC48  3C 60 81 17 */	lis r3, footer@ha /* 0x81169E30@ha */
/* 803BCC4C  38 9F 01 0A */	addi r4, r31, 0x10a
/* 803BCC50  38 63 9E 30 */	addi r3, r3, footer@l /* 0x81169E30@l */
/* 803BCC54  38 A0 00 20 */	li r5, 0x20
/* 803BCC58  4B CA 03 C5 */	bl func_8005D01C
/* 803BCC5C  80 01 00 08 */	lwz r0, 8(r1)
/* 803BCC60  98 1F 00 2F */	stb r0, 0x2f(r31)
/* 803BCC64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BCC68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BCC6C  7C 08 03 A6 */	mtlr r0
/* 803BCC70  38 21 00 20 */	addi r1, r1, 0x20
/* 803BCC74  4E 80 00 20 */	blr 
