lbl_80424078:
/* 80424078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042407C  7C 08 02 A6 */	mflr r0
/* 80424080  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80424084  90 01 00 14 */	stw r0, 0x14(r1)
/* 80424088  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 8042408C  3C A5 00 02 */	addis r5, r5, 2
/* 80424090  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80424094  7C 7F 1B 78 */	mr r31, r3
/* 80424098  38 64 1D EC */	addi r3, r4, 0x1dec
/* 8042409C  38 80 00 17 */	li r4, 0x17
/* 804240A0  88 C5 60 03 */	lbz r6, 0x6003(r5)
/* 804240A4  38 A0 00 00 */	li r5, 0
/* 804240A8  4B FC B6 35 */	bl mSM_open_submenu
/* 804240AC  7F E3 FB 78 */	mr r3, r31
/* 804240B0  38 80 00 04 */	li r4, 4
/* 804240B4  48 00 07 65 */	bl aFLAG_setup_action
/* 804240B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804240BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804240C0  7C 08 03 A6 */	mtlr r0
/* 804240C4  38 21 00 10 */	addi r1, r1, 0x10
/* 804240C8  4E 80 00 20 */	blr 
