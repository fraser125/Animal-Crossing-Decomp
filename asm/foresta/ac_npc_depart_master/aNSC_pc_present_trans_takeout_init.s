lbl_805526C4:
/* 805526C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805526C8  7C 08 02 A6 */	mflr r0
/* 805526CC  38 80 00 01 */	li r4, 1
/* 805526D0  38 A0 00 00 */	li r5, 0
/* 805526D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805526D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805526DC  7C 7F 1B 78 */	mr r31, r3
/* 805526E0  38 60 00 04 */	li r3, 4
/* 805526E4  4B E4 5D 55 */	bl mDemo_Set_OrderValue
/* 805526E8  38 9F 00 28 */	addi r4, r31, 0x28
/* 805526EC  38 60 00 69 */	li r3, 0x69
/* 805526F0  48 0D B8 B9 */	bl sAdo_OngenTrgStart
/* 805526F4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805526F8  A0 9F 09 F8 */	lhz r4, 0x9f8(r31)
/* 805526FC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80552700  38 A0 00 01 */	li r5, 1
/* 80552704  3C 63 00 02 */	addis r3, r3, 2
/* 80552708  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8055270C  4B E8 E7 FD */	bl mPr_SetFreePossessionItem
/* 80552710  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80552714  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80552718  3C 83 00 03 */	addis r4, r3, 3
/* 8055271C  80 64 DB EC */	lwz r3, -0x2414(r4)
/* 80552720  38 03 00 01 */	addi r0, r3, 1
/* 80552724  90 04 DB EC */	stw r0, -0x2414(r4)
/* 80552728  4B E6 CF 81 */	bl func_803BF6A8
/* 8055272C  4B E6 E6 15 */	bl mMsg_Set_LockContinue
/* 80552730  38 00 00 01 */	li r0, 1
/* 80552734  98 1F 08 BE */	stb r0, 0x8be(r31)
/* 80552738  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055273C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80552740  7C 08 03 A6 */	mtlr r0
/* 80552744  38 21 00 10 */	addi r1, r1, 0x10
/* 80552748  4E 80 00 20 */	blr 
