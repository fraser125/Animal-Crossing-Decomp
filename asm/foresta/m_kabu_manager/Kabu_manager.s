lbl_803B60D0:
/* 803B60D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B60D4  7C 08 02 A6 */	mflr r0
/* 803B60D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803B60DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B60E0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803B60E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B60E8  3F E3 00 02 */	addis r31, r3, 2
/* 803B60EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803B60F0  3B DF 04 90 */	addi r30, r31, 0x490
/* 803B60F4  A0 7F 61 26 */	lhz r3, 0x6126(r31)
/* 803B60F8  88 9F 61 25 */	lbz r4, 0x6125(r31)
/* 803B60FC  88 BF 61 23 */	lbz r5, 0x6123(r31)
/* 803B6100  A0 DF 04 96 */	lhz r6, 0x496(r31)
/* 803B6104  88 FF 04 95 */	lbz r7, 0x495(r31)
/* 803B6108  89 1F 04 93 */	lbz r8, 0x493(r31)
/* 803B610C  3B FF 61 20 */	addi r31, r31, 0x6120
/* 803B6110  48 05 06 DD */	bl lbRTC_IsEqualDate
/* 803B6114  2C 03 00 00 */	cmpwi r3, 0
/* 803B6118  40 82 00 0C */	bne lbl_803B6124
/* 803B611C  4B FF FF 49 */	bl Kabu_decide_price_schedule_without_sunday
/* 803B6120  48 00 00 60 */	b lbl_803B6180
lbl_803B6124:
/* 803B6124  7F C4 F3 78 */	mr r4, r30
/* 803B6128  38 61 00 10 */	addi r3, r1, 0x10
/* 803B612C  48 05 11 09 */	bl lbRTC_TimeCopy
/* 803B6130  38 61 00 10 */	addi r3, r1, 0x10
/* 803B6134  38 80 00 07 */	li r4, 7
/* 803B6138  48 05 0B ED */	bl lbRTC_Add_DD
/* 803B613C  7F C4 F3 78 */	mr r4, r30
/* 803B6140  38 61 00 08 */	addi r3, r1, 8
/* 803B6144  48 05 10 F1 */	bl lbRTC_TimeCopy
/* 803B6148  38 61 00 08 */	addi r3, r1, 8
/* 803B614C  38 80 00 07 */	li r4, 7
/* 803B6150  48 05 0E 6D */	bl lbRTC_Sub_DD
/* 803B6154  7F E4 FB 78 */	mr r4, r31
/* 803B6158  38 61 00 10 */	addi r3, r1, 0x10
/* 803B615C  48 05 07 B9 */	bl lbRTC_IsOverTime
/* 803B6160  2C 03 00 01 */	cmpwi r3, 1
/* 803B6164  41 82 00 18 */	beq lbl_803B617C
/* 803B6168  7F E4 FB 78 */	mr r4, r31
/* 803B616C  38 61 00 08 */	addi r3, r1, 8
/* 803B6170  48 05 07 A5 */	bl lbRTC_IsOverTime
/* 803B6174  2C 03 FF FF */	cmpwi r3, -1
/* 803B6178  40 82 00 08 */	bne lbl_803B6180
lbl_803B617C:
/* 803B617C  4B FF FF 11 */	bl Kabu_decide_price_schedule
lbl_803B6180:
/* 803B6180  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B6184  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B6188  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803B618C  7C 08 03 A6 */	mtlr r0
/* 803B6190  38 21 00 20 */	addi r1, r1, 0x20
/* 803B6194  4E 80 00 20 */	blr 
