lbl_805AF3DC:
/* 805AF3DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AF3E0  7C 08 02 A6 */	mflr r0
/* 805AF3E4  38 80 00 00 */	li r4, 0
/* 805AF3E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AF3EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805AF3F0  7C 7F 1B 78 */	mr r31, r3
/* 805AF3F4  A0 A3 00 06 */	lhz r5, 6(r3)
/* 805AF3F8  38 05 A7 D6 */	addi r0, r5, -22570
/* 805AF3FC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 805AF400  90 03 02 BC */	stw r0, 0x2bc(r3)
/* 805AF404  48 00 01 79 */	bl aGOZ_setup_action
/* 805AF408  7F E3 FB 78 */	mr r3, r31
/* 805AF40C  38 80 00 01 */	li r4, 1
/* 805AF410  48 00 00 19 */	bl func_805AF428
/* 805AF414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AF418  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805AF41C  7C 08 03 A6 */	mtlr r0
/* 805AF420  38 21 00 10 */	addi r1, r1, 0x10
/* 805AF424  4E 80 00 20 */	blr 
