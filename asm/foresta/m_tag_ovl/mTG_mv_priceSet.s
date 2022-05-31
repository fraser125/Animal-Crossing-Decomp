lbl_805F85B4:
/* 805F85B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F85B8  7C 08 02 A6 */	mflr r0
/* 805F85BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F85C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F85C4  93 C1 00 08 */	stw r30, 8(r1)
/* 805F85C8  7C 7E 1B 78 */	mr r30, r3
/* 805F85CC  80 E3 00 2C */	lwz r7, 0x2c(r3)
/* 805F85D0  81 07 09 28 */	lwz r8, 0x928(r7)
/* 805F85D4  80 C7 09 9C */	lwz r6, 0x99c(r7)
/* 805F85D8  71 00 50 80 */	andi. r0, r8, 0x5080
/* 805F85DC  83 E6 00 1C */	lwz r31, 0x1c(r6)
/* 805F85E0  41 82 00 30 */	beq lbl_805F8610
/* 805F85E4  80 C7 09 7C */	lwz r6, 0x97c(r7)
/* 805F85E8  38 A0 00 01 */	li r5, 1
/* 805F85EC  80 86 00 00 */	lwz r4, 0(r6)
/* 805F85F0  38 04 FF FF */	addi r0, r4, -1
/* 805F85F4  1C 80 00 B4 */	mulli r4, r0, 0xb4
/* 805F85F8  38 04 00 08 */	addi r0, r4, 8
/* 805F85FC  7C 86 00 AE */	lbzx r4, r6, r0
/* 805F8600  4B FF 71 B5 */	bl mTG_return_tag_init
/* 805F8604  38 60 10 03 */	li r3, 0x1003
/* 805F8608  48 03 56 FD */	bl sAdo_SysTrgStart
/* 805F860C  48 00 01 08 */	b lbl_805F8714
lbl_805F8610:
/* 805F8610  55 00 04 21 */	rlwinm. r0, r8, 0, 0x10, 0x10
/* 805F8614  41 82 00 2C */	beq lbl_805F8640
/* 805F8618  2C 1F 00 00 */	cmpwi r31, 0
/* 805F861C  40 82 00 14 */	bne lbl_805F8630
/* 805F8620  38 A0 00 00 */	li r5, 0
/* 805F8624  38 C0 00 00 */	li r6, 0
/* 805F8628  4B FF B1 F5 */	bl mTG_set_trade_cond
/* 805F862C  48 00 00 E8 */	b lbl_805F8714
lbl_805F8630:
/* 805F8630  7F E6 FB 78 */	mr r6, r31
/* 805F8634  38 A0 00 02 */	li r5, 2
/* 805F8638  4B FF B1 E5 */	bl mTG_set_trade_cond
/* 805F863C  48 00 00 D8 */	b lbl_805F8714
lbl_805F8640:
/* 805F8640  55 00 07 3B */	rlwinm. r0, r8, 0, 0x1c, 0x1d
/* 805F8644  41 82 00 84 */	beq lbl_805F86C8
/* 805F8648  55 00 07 7B */	rlwinm. r0, r8, 0, 0x1d, 0x1d
/* 805F864C  41 82 00 34 */	beq lbl_805F8680
/* 805F8650  80 05 00 3C */	lwz r0, 0x3c(r5)
/* 805F8654  3C 60 80 6D */	lis r3, add_data@ha /* 0x806D0CBC@ha */
/* 805F8658  38 63 0C BC */	addi r3, r3, add_data@l /* 0x806D0CBC@l */
/* 805F865C  54 00 10 3A */	slwi r0, r0, 2
/* 805F8660  7C 03 00 2E */	lwzx r0, r3, r0
/* 805F8664  7F E0 F8 51 */	subf. r31, r0, r31
/* 805F8668  40 80 00 0C */	bge lbl_805F8674
/* 805F866C  3B E0 00 00 */	li r31, 0
/* 805F8670  48 00 00 48 */	b lbl_805F86B8
lbl_805F8674:
/* 805F8674  38 60 04 26 */	li r3, 0x426
/* 805F8678  48 03 56 8D */	bl sAdo_SysTrgStart
/* 805F867C  48 00 00 3C */	b lbl_805F86B8
lbl_805F8680:
/* 805F8680  80 05 00 3C */	lwz r0, 0x3c(r5)
/* 805F8684  3C 80 80 6D */	lis r4, add_data@ha /* 0x806D0CBC@ha */
/* 805F8688  3C 60 00 02 */	lis r3, 0x0002 /* 0x0001869F@ha */
/* 805F868C  54 00 10 3A */	slwi r0, r0, 2
/* 805F8690  38 84 0C BC */	addi r4, r4, add_data@l /* 0x806D0CBC@l */
/* 805F8694  7C 84 00 2E */	lwzx r4, r4, r0
/* 805F8698  38 03 86 9F */	addi r0, r3, 0x869F /* 0x0001869F@l */
/* 805F869C  7F FF 22 14 */	add r31, r31, r4
/* 805F86A0  7C 1F 00 00 */	cmpw r31, r0
/* 805F86A4  40 81 00 0C */	ble lbl_805F86B0
/* 805F86A8  7C 1F 03 78 */	mr r31, r0
/* 805F86AC  48 00 00 0C */	b lbl_805F86B8
lbl_805F86B0:
/* 805F86B0  38 60 04 26 */	li r3, 0x426
/* 805F86B4  48 03 56 51 */	bl sAdo_SysTrgStart
lbl_805F86B8:
/* 805F86B8  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 805F86BC  80 63 09 9C */	lwz r3, 0x99c(r3)
/* 805F86C0  93 E3 00 1C */	stw r31, 0x1c(r3)
/* 805F86C4  48 00 00 50 */	b lbl_805F8714
lbl_805F86C8:
/* 805F86C8  55 00 07 BF */	clrlwi. r0, r8, 0x1e
/* 805F86CC  41 82 00 48 */	beq lbl_805F8714
/* 805F86D0  55 00 07 BD */	rlwinm. r0, r8, 0, 0x1e, 0x1e
/* 805F86D4  41 82 00 24 */	beq lbl_805F86F8
/* 805F86D8  80 65 00 3C */	lwz r3, 0x3c(r5)
/* 805F86DC  2C 03 00 00 */	cmpwi r3, 0
/* 805F86E0  40 81 00 34 */	ble lbl_805F8714
/* 805F86E4  38 03 FF FF */	addi r0, r3, -1
/* 805F86E8  38 60 00 01 */	li r3, 1
/* 805F86EC  90 05 00 3C */	stw r0, 0x3c(r5)
/* 805F86F0  48 03 56 15 */	bl sAdo_SysTrgStart
/* 805F86F4  48 00 00 20 */	b lbl_805F8714
lbl_805F86F8:
/* 805F86F8  80 65 00 3C */	lwz r3, 0x3c(r5)
/* 805F86FC  2C 03 00 04 */	cmpwi r3, 4
/* 805F8700  40 80 00 14 */	bge lbl_805F8714
/* 805F8704  38 03 00 01 */	addi r0, r3, 1
/* 805F8708  38 60 00 01 */	li r3, 1
/* 805F870C  90 05 00 3C */	stw r0, 0x3c(r5)
/* 805F8710  48 03 55 F5 */	bl sAdo_SysTrgStart
lbl_805F8714:
/* 805F8714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F8718  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F871C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F8720  7C 08 03 A6 */	mtlr r0
/* 805F8724  38 21 00 10 */	addi r1, r1, 0x10
/* 805F8728  4E 80 00 20 */	blr 
