lbl_803C2414:
/* 803C2414  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C2418  7C 08 02 A6 */	mflr r0
/* 803C241C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803C2420  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C2424  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803C2428  3C 84 00 02 */	addis r4, r4, 2
/* 803C242C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C2430  80 03 04 0C */	lwz r0, 0x40c(r3)
/* 803C2434  8B E4 0F 11 */	lbz r31, 0xf11(r4)
/* 803C2438  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 803C243C  41 82 00 08 */	beq lbl_803C2444
/* 803C2440  3B E0 00 02 */	li r31, 2
lbl_803C2444:
/* 803C2444  4B FF FA 4D */	bl mMsg_check_sound_animal
/* 803C2448  2C 03 00 00 */	cmpwi r3, 0
/* 803C244C  41 82 00 14 */	beq lbl_803C2460
/* 803C2450  3C 60 80 65 */	lis r3, mode_table@ha /* 0x8065724C@ha */
/* 803C2454  38 63 72 4C */	addi r3, r3, mode_table@l /* 0x8065724C@l */
/* 803C2458  7C 63 F8 AE */	lbzx r3, r3, r31
/* 803C245C  48 00 00 18 */	b lbl_803C2474
lbl_803C2460:
/* 803C2460  2C 1F 00 02 */	cmpwi r31, 2
/* 803C2464  40 82 00 0C */	bne lbl_803C2470
/* 803C2468  38 60 00 02 */	li r3, 2
/* 803C246C  48 00 00 08 */	b lbl_803C2474
lbl_803C2470:
/* 803C2470  38 60 00 01 */	li r3, 1
lbl_803C2474:
/* 803C2474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C2478  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C247C  7C 08 03 A6 */	mtlr r0
/* 803C2480  38 21 00 10 */	addi r1, r1, 0x10
/* 803C2484  4E 80 00 20 */	blr 
