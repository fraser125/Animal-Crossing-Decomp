lbl_803ED63C:
/* 803ED63C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803ED640  7C 08 02 A6 */	mflr r0
/* 803ED644  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803ED648  90 01 00 34 */	stw r0, 0x34(r1)
/* 803ED64C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 803ED650  7C 7F 1B 78 */	mr r31, r3
/* 803ED654  38 64 85 38 */	addi r3, r4, common_data@l /* 0x81138538@l */
/* 803ED658  3C 83 00 02 */	addis r4, r3, 2
/* 803ED65C  88 04 41 6F */	lbz r0, 0x416f(r4)
/* 803ED660  38 84 41 6C */	addi r4, r4, 0x416c
/* 803ED664  28 00 00 00 */	cmplwi r0, 0
/* 803ED668  40 82 00 0C */	bne lbl_803ED674
/* 803ED66C  38 60 00 03 */	li r3, 3
/* 803ED670  48 00 00 D0 */	b lbl_803ED740
lbl_803ED674:
/* 803ED674  38 61 00 18 */	addi r3, r1, 0x18
/* 803ED678  48 00 5E 05 */	bl mTM_ymd_2_time
/* 803ED67C  38 61 00 10 */	addi r3, r1, 0x10
/* 803ED680  38 81 00 18 */	addi r4, r1, 0x18
/* 803ED684  48 01 9B B1 */	bl lbRTC_TimeCopy
/* 803ED688  38 61 00 10 */	addi r3, r1, 0x10
/* 803ED68C  38 80 00 07 */	li r4, 7
/* 803ED690  48 01 96 95 */	bl lbRTC_Add_DD
/* 803ED694  38 61 00 08 */	addi r3, r1, 8
/* 803ED698  38 81 00 18 */	addi r4, r1, 0x18
/* 803ED69C  48 01 9B 99 */	bl lbRTC_TimeCopy
/* 803ED6A0  38 61 00 08 */	addi r3, r1, 8
/* 803ED6A4  38 80 00 11 */	li r4, 0x11
/* 803ED6A8  48 01 96 7D */	bl lbRTC_Add_DD
/* 803ED6AC  A0 61 00 1E */	lhz r3, 0x1e(r1)
/* 803ED6B0  88 81 00 1D */	lbz r4, 0x1d(r1)
/* 803ED6B4  88 A1 00 1B */	lbz r5, 0x1b(r1)
/* 803ED6B8  A0 DF 00 06 */	lhz r6, 6(r31)
/* 803ED6BC  88 FF 00 05 */	lbz r7, 5(r31)
/* 803ED6C0  89 1F 00 03 */	lbz r8, 3(r31)
/* 803ED6C4  48 01 91 29 */	bl lbRTC_IsEqualDate
/* 803ED6C8  2C 03 00 01 */	cmpwi r3, 1
/* 803ED6CC  40 82 00 0C */	bne lbl_803ED6D8
/* 803ED6D0  38 60 00 03 */	li r3, 3
/* 803ED6D4  48 00 00 6C */	b lbl_803ED740
lbl_803ED6D8:
/* 803ED6D8  2C 03 00 00 */	cmpwi r3, 0
/* 803ED6DC  40 82 00 0C */	bne lbl_803ED6E8
/* 803ED6E0  38 60 00 00 */	li r3, 0
/* 803ED6E4  48 00 00 5C */	b lbl_803ED740
lbl_803ED6E8:
/* 803ED6E8  A0 61 00 16 */	lhz r3, 0x16(r1)
/* 803ED6EC  88 81 00 15 */	lbz r4, 0x15(r1)
/* 803ED6F0  88 A1 00 13 */	lbz r5, 0x13(r1)
/* 803ED6F4  A0 DF 00 06 */	lhz r6, 6(r31)
/* 803ED6F8  88 FF 00 05 */	lbz r7, 5(r31)
/* 803ED6FC  89 1F 00 03 */	lbz r8, 3(r31)
/* 803ED700  48 01 90 ED */	bl lbRTC_IsEqualDate
/* 803ED704  2C 03 FF FF */	cmpwi r3, -1
/* 803ED708  41 82 00 0C */	beq lbl_803ED714
/* 803ED70C  38 60 00 01 */	li r3, 1
/* 803ED710  48 00 00 30 */	b lbl_803ED740
lbl_803ED714:
/* 803ED714  A0 61 00 0E */	lhz r3, 0xe(r1)
/* 803ED718  88 81 00 0D */	lbz r4, 0xd(r1)
/* 803ED71C  88 A1 00 0B */	lbz r5, 0xb(r1)
/* 803ED720  A0 DF 00 06 */	lhz r6, 6(r31)
/* 803ED724  88 FF 00 05 */	lbz r7, 5(r31)
/* 803ED728  89 1F 00 03 */	lbz r8, 3(r31)
/* 803ED72C  48 01 90 C1 */	bl lbRTC_IsEqualDate
/* 803ED730  38 03 00 01 */	addi r0, r3, 1
/* 803ED734  20 00 00 00 */	subfic r0, r0, 0
/* 803ED738  7C 60 01 10 */	subfe r3, r0, r0
/* 803ED73C  38 63 00 03 */	addi r3, r3, 3
lbl_803ED740:
/* 803ED740  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803ED744  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 803ED748  7C 08 03 A6 */	mtlr r0
/* 803ED74C  38 21 00 30 */	addi r1, r1, 0x30
/* 803ED750  4E 80 00 20 */	blr 
