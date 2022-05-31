lbl_803EA710:
/* 803EA710  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803EA714  7C 08 02 A6 */	mflr r0
/* 803EA718  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EA71C  90 01 00 44 */	stw r0, 0x44(r1)
/* 803EA720  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EA724  3C 83 00 02 */	addis r4, r3, 2
/* 803EA728  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 803EA72C  80 64 61 20 */	lwz r3, 0x6120(r4)
/* 803EA730  80 04 61 24 */	lwz r0, 0x6124(r4)
/* 803EA734  90 61 00 28 */	stw r3, 0x28(r1)
/* 803EA738  90 01 00 2C */	stw r0, 0x2c(r1)
/* 803EA73C  4B FB 04 F9 */	bl mEv_CheckFirstJob
/* 803EA740  2C 03 00 00 */	cmpwi r3, 0
/* 803EA744  41 82 00 0C */	beq lbl_803EA750
/* 803EA748  38 60 00 02 */	li r3, 2
/* 803EA74C  48 00 01 94 */	b lbl_803EA8E0
lbl_803EA750:
/* 803EA750  38 60 00 00 */	li r3, 0
/* 803EA754  4B FB 02 C5 */	bl mEv_CheckEvent
/* 803EA758  2C 03 00 01 */	cmpwi r3, 1
/* 803EA75C  40 82 01 20 */	bne lbl_803EA87C
/* 803EA760  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EA764  88 01 00 2B */	lbz r0, 0x2b(r1)
/* 803EA768  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EA76C  3C 83 00 02 */	addis r4, r3, 2
/* 803EA770  80 E4 04 A4 */	lwz r7, 0x4a4(r4)
/* 803EA774  80 C4 04 A8 */	lwz r6, 0x4a8(r4)
/* 803EA778  90 E1 00 20 */	stw r7, 0x20(r1)
/* 803EA77C  88 61 00 23 */	lbz r3, 0x23(r1)
/* 803EA780  90 C1 00 24 */	stw r6, 0x24(r1)
/* 803EA784  7C 03 00 40 */	cmplw r3, r0
/* 803EA788  40 82 00 F4 */	bne lbl_803EA87C
/* 803EA78C  80 A4 04 AC */	lwz r5, 0x4ac(r4)
/* 803EA790  38 61 00 10 */	addi r3, r1, 0x10
/* 803EA794  80 04 04 B0 */	lwz r0, 0x4b0(r4)
/* 803EA798  38 80 00 01 */	li r4, 1
/* 803EA79C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 803EA7A0  8B E1 00 2A */	lbz r31, 0x2a(r1)
/* 803EA7A4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 803EA7A8  90 E1 00 10 */	stw r7, 0x10(r1)
/* 803EA7AC  90 C1 00 14 */	stw r6, 0x14(r1)
/* 803EA7B0  90 A1 00 08 */	stw r5, 8(r1)
/* 803EA7B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 803EA7B8  48 01 C8 9D */	bl lbRTC_Sub_hh
/* 803EA7BC  38 61 00 08 */	addi r3, r1, 8
/* 803EA7C0  38 80 00 01 */	li r4, 1
/* 803EA7C4  48 01 C5 C9 */	bl lbRTC_Add_hh
/* 803EA7C8  28 1F 00 06 */	cmplwi r31, 6
/* 803EA7CC  41 80 00 1C */	blt lbl_803EA7E8
/* 803EA7D0  4B FF FD DD */	bl mSP_GetShopOpenTime
/* 803EA7D4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803EA7D8  7C 1F 00 40 */	cmplw r31, r0
/* 803EA7DC  40 80 00 0C */	bge lbl_803EA7E8
/* 803EA7E0  38 60 00 00 */	li r3, 0
/* 803EA7E4  48 00 00 FC */	b lbl_803EA8E0
lbl_803EA7E8:
/* 803EA7E8  28 1F 00 06 */	cmplwi r31, 6
/* 803EA7EC  41 80 00 14 */	blt lbl_803EA800
/* 803EA7F0  4B FF FE 31 */	bl mSP_GetShopCloseTime
/* 803EA7F4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803EA7F8  7C 1F 00 40 */	cmplw r31, r0
/* 803EA7FC  41 80 00 0C */	blt lbl_803EA808
lbl_803EA800:
/* 803EA800  38 60 00 01 */	li r3, 1
/* 803EA804  48 00 00 DC */	b lbl_803EA8E0
lbl_803EA808:
/* 803EA808  38 61 00 10 */	addi r3, r1, 0x10
/* 803EA80C  38 81 00 28 */	addi r4, r1, 0x28
/* 803EA810  48 01 C1 05 */	bl lbRTC_IsOverTime
/* 803EA814  2C 03 FF FF */	cmpwi r3, -1
/* 803EA818  40 82 00 0C */	bne lbl_803EA824
/* 803EA81C  38 60 00 02 */	li r3, 2
/* 803EA820  48 00 00 C0 */	b lbl_803EA8E0
lbl_803EA824:
/* 803EA824  38 61 00 20 */	addi r3, r1, 0x20
/* 803EA828  38 81 00 28 */	addi r4, r1, 0x28
/* 803EA82C  48 01 C0 E9 */	bl lbRTC_IsOverTime
/* 803EA830  2C 03 FF FF */	cmpwi r3, -1
/* 803EA834  40 82 00 0C */	bne lbl_803EA840
/* 803EA838  38 60 00 04 */	li r3, 4
/* 803EA83C  48 00 00 A4 */	b lbl_803EA8E0
lbl_803EA840:
/* 803EA840  38 61 00 18 */	addi r3, r1, 0x18
/* 803EA844  38 81 00 28 */	addi r4, r1, 0x28
/* 803EA848  48 01 C0 CD */	bl lbRTC_IsOverTime
/* 803EA84C  2C 03 FF FF */	cmpwi r3, -1
/* 803EA850  40 82 00 0C */	bne lbl_803EA85C
/* 803EA854  38 60 00 06 */	li r3, 6
/* 803EA858  48 00 00 88 */	b lbl_803EA8E0
lbl_803EA85C:
/* 803EA85C  38 61 00 08 */	addi r3, r1, 8
/* 803EA860  38 81 00 28 */	addi r4, r1, 0x28
/* 803EA864  48 01 C0 B1 */	bl lbRTC_IsOverTime
/* 803EA868  2C 03 FF FF */	cmpwi r3, -1
/* 803EA86C  38 60 00 02 */	li r3, 2
/* 803EA870  40 82 00 70 */	bne lbl_803EA8E0
/* 803EA874  38 60 00 05 */	li r3, 5
/* 803EA878  48 00 00 68 */	b lbl_803EA8E0
lbl_803EA87C:
/* 803EA87C  8B E1 00 2A */	lbz r31, 0x2a(r1)
/* 803EA880  4B FF FD F9 */	bl mSP_InRenewal
/* 803EA884  2C 03 00 00 */	cmpwi r3, 0
/* 803EA888  41 82 00 0C */	beq lbl_803EA894
/* 803EA88C  38 60 00 03 */	li r3, 3
/* 803EA890  48 00 00 50 */	b lbl_803EA8E0
lbl_803EA894:
/* 803EA894  4B FF FD 19 */	bl mSP_GetShopOpenTime
/* 803EA898  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803EA89C  7C 1F 00 40 */	cmplw r31, r0
/* 803EA8A0  41 80 00 1C */	blt lbl_803EA8BC
/* 803EA8A4  4B FF FD 7D */	bl mSP_GetShopCloseTime
/* 803EA8A8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803EA8AC  7C 1F 00 40 */	cmplw r31, r0
/* 803EA8B0  40 80 00 0C */	bge lbl_803EA8BC
/* 803EA8B4  38 60 00 02 */	li r3, 2
/* 803EA8B8  48 00 00 28 */	b lbl_803EA8E0
lbl_803EA8BC:
/* 803EA8BC  28 1F 00 06 */	cmplwi r31, 6
/* 803EA8C0  41 80 00 1C */	blt lbl_803EA8DC
/* 803EA8C4  4B FF FC E9 */	bl mSP_GetShopOpenTime
/* 803EA8C8  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803EA8CC  7C 1F 00 40 */	cmplw r31, r0
/* 803EA8D0  40 80 00 0C */	bge lbl_803EA8DC
/* 803EA8D4  38 60 00 00 */	li r3, 0
/* 803EA8D8  48 00 00 08 */	b lbl_803EA8E0
lbl_803EA8DC:
/* 803EA8DC  38 60 00 01 */	li r3, 1
lbl_803EA8E0:
/* 803EA8E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803EA8E4  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 803EA8E8  7C 08 03 A6 */	mtlr r0
/* 803EA8EC  38 21 00 40 */	addi r1, r1, 0x40
/* 803EA8F0  4E 80 00 20 */	blr 
