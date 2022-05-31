lbl_803AB660:
/* 803AB660  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AB664  7C 08 02 A6 */	mflr r0
/* 803AB668  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AB66C  39 61 00 20 */	addi r11, r1, 0x20
/* 803AB670  4B CE F8 5D */	bl func_8009AECC
/* 803AB674  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803AB678  7C 7B 1B 78 */	mr r27, r3
/* 803AB67C  3B C4 85 38 */	addi r30, r4, common_data@l /* 0x81138538@l */
/* 803AB680  3B A0 00 00 */	li r29, 0
/* 803AB684  3B E0 00 00 */	li r31, 0
lbl_803AB688:
/* 803AB688  7C 7E FA 14 */	add r3, r30, r31
/* 803AB68C  3F 83 00 02 */	addis r28, r3, 2
/* 803AB690  80 1C 3E 84 */	lwz r0, 0x3e84(r28)
/* 803AB694  3B 9C 3E 68 */	addi r28, r28, 0x3e68
/* 803AB698  2C 00 00 00 */	cmpwi r0, 0
/* 803AB69C  41 82 00 48 */	beq lbl_803AB6E4
/* 803AB6A0  28 1B 00 00 */	cmplwi r27, 0
/* 803AB6A4  41 82 00 28 */	beq lbl_803AB6CC
/* 803AB6A8  A0 7B 00 00 */	lhz r3, 0(r27)
/* 803AB6AC  88 9B 00 02 */	lbz r4, 2(r27)
/* 803AB6B0  88 BB 00 03 */	lbz r5, 3(r27)
/* 803AB6B4  A0 DC 00 1A */	lhz r6, 0x1a(r28)
/* 803AB6B8  88 FC 00 19 */	lbz r7, 0x19(r28)
/* 803AB6BC  89 1C 00 17 */	lbz r8, 0x17(r28)
/* 803AB6C0  48 05 B1 2D */	bl lbRTC_IsEqualDate
/* 803AB6C4  2C 03 00 00 */	cmpwi r3, 0
/* 803AB6C8  41 82 00 1C */	beq lbl_803AB6E4
lbl_803AB6CC:
/* 803AB6CC  7F 83 E3 78 */	mr r3, r28
/* 803AB6D0  48 03 4F D9 */	bl mPr_GetPrivateIdx
/* 803AB6D4  2C 03 FF FF */	cmpwi r3, -1
/* 803AB6D8  40 82 00 0C */	bne lbl_803AB6E4
/* 803AB6DC  7F 83 E3 78 */	mr r3, r28
/* 803AB6E0  4B FF FE D1 */	bl func_803AB5B0
lbl_803AB6E4:
/* 803AB6E4  3B BD 00 01 */	addi r29, r29, 1
/* 803AB6E8  3B FF 00 20 */	addi r31, r31, 0x20
/* 803AB6EC  2C 1D 00 05 */	cmpwi r29, 5
/* 803AB6F0  41 80 FF 98 */	blt lbl_803AB688
/* 803AB6F4  39 61 00 20 */	addi r11, r1, 0x20
/* 803AB6F8  4B CE F8 21 */	bl func_8009AF18
/* 803AB6FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AB700  7C 08 03 A6 */	mtlr r0
/* 803AB704  38 21 00 20 */	addi r1, r1, 0x20
/* 803AB708  4E 80 00 20 */	blr 
