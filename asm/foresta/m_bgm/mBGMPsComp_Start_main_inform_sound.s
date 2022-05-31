lbl_8037B5DC:
/* 8037B5DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037B5E0  7C 08 02 A6 */	mflr r0
/* 8037B5E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037B5E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037B5EC  7C 7F 1B 78 */	mr r31, r3
/* 8037B5F0  88 03 00 00 */	lbz r0, 0(r3)
/* 8037B5F4  28 00 00 00 */	cmplwi r0, 0
/* 8037B5F8  41 82 00 60 */	beq lbl_8037B658
/* 8037B5FC  88 1F 00 02 */	lbz r0, 2(r31)
/* 8037B600  28 00 00 00 */	cmplwi r0, 0
/* 8037B604  41 82 00 10 */	beq lbl_8037B614
/* 8037B608  88 7F 00 01 */	lbz r3, 1(r31)
/* 8037B60C  48 2B 2D 21 */	bl sAdo_BgmCrossfadeStart
/* 8037B610  48 00 00 40 */	b lbl_8037B650
lbl_8037B614:
/* 8037B614  88 7F 00 01 */	lbz r3, 1(r31)
/* 8037B618  48 2B 26 AD */	bl sAdo_BgmStart
/* 8037B61C  88 1F 00 01 */	lbz r0, 1(r31)
/* 8037B620  28 00 00 2B */	cmplwi r0, 0x2b
/* 8037B624  40 82 00 2C */	bne lbl_8037B650
/* 8037B628  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8037B62C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8037B630  80 03 00 14 */	lwz r0, 0x14(r3)
/* 8037B634  2C 00 00 1B */	cmpwi r0, 0x1b
/* 8037B638  40 82 00 10 */	bne lbl_8037B648
/* 8037B63C  38 60 00 01 */	li r3, 1
/* 8037B640  48 00 12 01 */	bl mBGMPsComp_arm_make
/* 8037B644  48 00 00 0C */	b lbl_8037B650
lbl_8037B648:
/* 8037B648  38 60 00 00 */	li r3, 0
/* 8037B64C  48 00 11 F5 */	bl mBGMPsComp_arm_make
lbl_8037B650:
/* 8037B650  38 00 00 00 */	li r0, 0
/* 8037B654  98 1F 00 00 */	stb r0, 0(r31)
lbl_8037B658:
/* 8037B658  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037B65C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037B660  7C 08 03 A6 */	mtlr r0
/* 8037B664  38 21 00 10 */	addi r1, r1, 0x10
/* 8037B668  4E 80 00 20 */	blr 
