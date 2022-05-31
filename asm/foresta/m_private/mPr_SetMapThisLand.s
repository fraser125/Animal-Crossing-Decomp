lbl_803E23D4:
/* 803E23D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E23D8  7C 08 02 A6 */	mflr r0
/* 803E23DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E23E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E23E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 803E23E8  41 82 00 2C */	beq lbl_803E2414
/* 803E23EC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E23F0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E23F4  3C 84 00 01 */	addis r4, r4, 1
/* 803E23F8  38 84 91 20 */	addi r4, r4, -28384
/* 803E23FC  4B FD 14 F5 */	bl mLd_CopyLandName
/* 803E2400  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E2404  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E2408  3C 63 00 01 */	addis r3, r3, 1
/* 803E240C  A0 03 91 2A */	lhz r0, -0x6ed6(r3)
/* 803E2410  B0 1F 00 08 */	sth r0, 8(r31)
lbl_803E2414:
/* 803E2414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E2418  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E241C  7C 08 03 A6 */	mtlr r0
/* 803E2420  38 21 00 10 */	addi r1, r1, 0x10
/* 803E2424  4E 80 00 20 */	blr 
