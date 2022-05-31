lbl_80493054:
/* 80493054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80493058  7C 08 02 A6 */	mflr r0
/* 8049305C  7C 64 1B 78 */	mr r4, r3
/* 80493060  2C 04 FF FF */	cmpwi r4, -1
/* 80493064  90 01 00 14 */	stw r0, 0x14(r1)
/* 80493068  41 82 00 40 */	beq lbl_804930A8
/* 8049306C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80493070  3C 60 81 1D */	lis r3, l_normal_info@ha /* 0x811CECA4@ha */
/* 80493074  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 80493078  54 86 08 3C */	slwi r6, r4, 1
/* 8049307C  3C E5 00 02 */	addis r7, r5, 2
/* 80493080  38 A3 EC A4 */	addi r5, r3, l_normal_info@l /* 0x811CECA4@l */
/* 80493084  80 67 61 3C */	lwz r3, 0x613c(r7)
/* 80493088  A0 05 00 14 */	lhz r0, 0x14(r5)
/* 8049308C  7C A3 32 14 */	add r5, r3, r6
/* 80493090  A0 A5 00 68 */	lhz r5, 0x68(r5)
/* 80493094  7C 05 00 40 */	cmplw r5, r0
/* 80493098  40 82 00 10 */	bne lbl_804930A8
/* 8049309C  38 A0 00 00 */	li r5, 0
/* 804930A0  38 C0 00 00 */	li r6, 0
/* 804930A4  4B F4 DD 85 */	bl mPr_SetPossessionItem
lbl_804930A8:
/* 804930A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804930AC  7C 08 03 A6 */	mtlr r0
/* 804930B0  38 21 00 10 */	addi r1, r1, 0x10
/* 804930B4  4E 80 00 20 */	blr 
