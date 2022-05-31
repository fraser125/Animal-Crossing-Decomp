lbl_804768B8:
/* 804768B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804768BC  7C 08 02 A6 */	mflr r0
/* 804768C0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804768C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804768C8  38 00 00 F0 */	li r0, 0xf0
/* 804768CC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804768D0  B0 03 04 A4 */	sth r0, 0x4a4(r3)
/* 804768D4  3C 84 00 03 */	addis r4, r4, 3
/* 804768D8  80 04 DB AC */	lwz r0, -0x2454(r4)
/* 804768DC  54 00 EF FE */	rlwinm r0, r0, 0x1d, 0x1f, 0x1f
/* 804768E0  68 00 00 01 */	xori r0, r0, 1
/* 804768E4  B0 03 04 A6 */	sth r0, 0x4a6(r3)
/* 804768E8  80 04 DB AC */	lwz r0, -0x2454(r4)
/* 804768EC  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 804768F0  90 04 DB AC */	stw r0, -0x2454(r4)
/* 804768F4  80 04 DB AC */	lwz r0, -0x2454(r4)
/* 804768F8  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 804768FC  90 04 DB AC */	stw r0, -0x2454(r4)
/* 80476900  4B F4 8D A9 */	bl func_803BF6A8
/* 80476904  4B F4 A4 3D */	bl mMsg_Set_LockContinue
/* 80476908  4B FF D7 25 */	bl func_8047402C
/* 8047690C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80476910  7C 08 03 A6 */	mtlr r0
/* 80476914  38 21 00 10 */	addi r1, r1, 0x10
/* 80476918  4E 80 00 20 */	blr 
