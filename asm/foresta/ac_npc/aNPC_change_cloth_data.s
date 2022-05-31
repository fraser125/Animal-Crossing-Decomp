lbl_8052C728:
/* 8052C728  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052C72C  7C 08 02 A6 */	mflr r0
/* 8052C730  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052C734  39 61 00 20 */	addi r11, r1, 0x20
/* 8052C738  4B B6 E7 99 */	bl func_8009AED0
/* 8052C73C  7C 7C 1B 78 */	mr r28, r3
/* 8052C740  3C 60 81 1D */	lis r3, data_811D3978@ha /* 0x811D3978@ha */
/* 8052C744  A3 DC 07 48 */	lhz r30, 0x748(r28)
/* 8052C748  3B A0 00 00 */	li r29, 0
/* 8052C74C  83 E3 39 78 */	lwz r31, data_811D3978@l(r3)  /* 0x811D3978@l */
/* 8052C750  38 00 00 00 */	li r0, 0
/* 8052C754  28 1E FE 20 */	cmplwi r30, 0xfe20
/* 8052C758  41 82 00 14 */	beq lbl_8052C76C
/* 8052C75C  28 1E 24 00 */	cmplwi r30, 0x2400
/* 8052C760  41 80 00 10 */	blt lbl_8052C770
/* 8052C764  28 1E 24 FF */	cmplwi r30, 0x24ff
/* 8052C768  40 80 00 08 */	bge lbl_8052C770
lbl_8052C76C:
/* 8052C76C  38 00 00 01 */	li r0, 1
lbl_8052C770:
/* 8052C770  2C 00 00 00 */	cmpwi r0, 0
/* 8052C774  40 82 00 10 */	bne lbl_8052C784
/* 8052C778  38 00 24 00 */	li r0, 0x2400
/* 8052C77C  3B C0 24 00 */	li r30, 0x2400
/* 8052C780  B0 1C 07 48 */	sth r0, 0x748(r28)
lbl_8052C784:
/* 8052C784  57 C0 04 3E */	clrlwi r0, r30, 0x10
/* 8052C788  28 00 FE 20 */	cmplwi r0, 0xfe20
/* 8052C78C  40 82 00 14 */	bne lbl_8052C7A0
/* 8052C790  38 00 00 0B */	li r0, 0xb
/* 8052C794  3B A0 00 01 */	li r29, 1
/* 8052C798  98 1C 07 4C */	stb r0, 0x74c(r28)
/* 8052C79C  48 00 00 38 */	b lbl_8052C7D4
lbl_8052C7A0:
/* 8052C7A0  7F C3 F3 78 */	mr r3, r30
/* 8052C7A4  4B FF FD 45 */	bl aNPC_dma_regist_cloth_data
/* 8052C7A8  4B FF FA AD */	bl aNPC_dma_cloth_data_fg
/* 8052C7AC  7F C3 F3 78 */	mr r3, r30
/* 8052C7B0  4B FF FE 0D */	bl aNPC_dma_regist_check_cloth_data
/* 8052C7B4  2C 03 00 01 */	cmpwi r3, 1
/* 8052C7B8  40 82 00 1C */	bne lbl_8052C7D4
/* 8052C7BC  7F C4 F3 78 */	mr r4, r30
/* 8052C7C0  7F 85 E3 78 */	mr r5, r28
/* 8052C7C4  38 7F 01 74 */	addi r3, r31, 0x174
/* 8052C7C8  4B FF FB C5 */	bl aNPC_dma_cloth_data_check
/* 8052C7CC  98 7C 07 4C */	stb r3, 0x74c(r28)
/* 8052C7D0  3B A0 00 01 */	li r29, 1
lbl_8052C7D4:
/* 8052C7D4  88 1C 07 4C */	lbz r0, 0x74c(r28)
/* 8052C7D8  2C 00 00 0B */	cmpwi r0, 0xb
/* 8052C7DC  40 82 00 18 */	bne lbl_8052C7F4
/* 8052C7E0  80 1C 01 7C */	lwz r0, 0x17c(r28)
/* 8052C7E4  28 00 00 00 */	cmplwi r0, 0
/* 8052C7E8  40 82 00 0C */	bne lbl_8052C7F4
/* 8052C7EC  38 00 FF FF */	li r0, -1
/* 8052C7F0  98 1C 07 4C */	stb r0, 0x74c(r28)
lbl_8052C7F4:
/* 8052C7F4  7F A3 EB 78 */	mr r3, r29
/* 8052C7F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8052C7FC  4B B6 E7 21 */	bl func_8009AF1C
/* 8052C800  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052C804  7C 08 03 A6 */	mtlr r0
/* 8052C808  38 21 00 20 */	addi r1, r1, 0x20
/* 8052C80C  4E 80 00 20 */	blr 
