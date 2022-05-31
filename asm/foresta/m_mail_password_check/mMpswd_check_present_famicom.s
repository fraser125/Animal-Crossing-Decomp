lbl_803BE320:
/* 803BE320  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BE324  7C 08 02 A6 */	mflr r0
/* 803BE328  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BE32C  39 61 00 20 */	addi r11, r1, 0x20
/* 803BE330  4B CD CB 99 */	bl func_8009AEC8
/* 803BE334  3C A0 80 98 */	lis r5, pswd_famicom_list@ha /* 0x80980E04@ha */
/* 803BE338  3C 80 80 98 */	lis r4, data_80980E00@ha /* 0x80980E00@ha */
/* 803BE33C  3B 85 0E 04 */	addi r28, r5, pswd_famicom_list@l /* 0x80980E04@l */
/* 803BE340  54 7D 04 3E */	clrlwi r29, r3, 0x10
/* 803BE344  3B C4 0E 00 */	addi r30, r4, data_80980E00@l /* 0x80980E00@l */
/* 803BE348  3B 40 00 00 */	li r26, 0
/* 803BE34C  3B 60 00 00 */	li r27, 0
/* 803BE350  3B E0 00 00 */	li r31, 0
/* 803BE354  48 00 00 2C */	b lbl_803BE380
lbl_803BE358:
/* 803BE358  7C 7C FA 2E */	lhzx r3, r28, r31
/* 803BE35C  38 80 00 00 */	li r4, 0
/* 803BE360  48 02 94 75 */	bl mRmTp_FtrIdx2FtrItemNo
/* 803BE364  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803BE368  7C 1D 00 40 */	cmplw r29, r0
/* 803BE36C  40 82 00 0C */	bne lbl_803BE378
/* 803BE370  3B 40 00 01 */	li r26, 1
/* 803BE374  48 00 00 18 */	b lbl_803BE38C
lbl_803BE378:
/* 803BE378  3B 7B 00 01 */	addi r27, r27, 1
/* 803BE37C  3B FF 00 02 */	addi r31, r31, 2
lbl_803BE380:
/* 803BE380  80 1E 00 00 */	lwz r0, 0(r30)
/* 803BE384  7C 1B 00 40 */	cmplw r27, r0
/* 803BE388  41 80 FF D0 */	blt lbl_803BE358
lbl_803BE38C:
/* 803BE38C  7F 43 D3 78 */	mr r3, r26
/* 803BE390  39 61 00 20 */	addi r11, r1, 0x20
/* 803BE394  4B CD CB 81 */	bl func_8009AF14
/* 803BE398  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BE39C  7C 08 03 A6 */	mtlr r0
/* 803BE3A0  38 21 00 20 */	addi r1, r1, 0x20
/* 803BE3A4  4E 80 00 20 */	blr 
