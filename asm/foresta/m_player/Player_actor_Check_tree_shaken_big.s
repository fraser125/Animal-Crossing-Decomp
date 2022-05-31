lbl_804DC774:
/* 804DC774  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804DC778  7C 08 02 A6 */	mflr r0
/* 804DC77C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804DC780  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804DC784  7C 9F 23 78 */	mr r31, r4
/* 804DC788  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804DC78C  7C 7E 1B 78 */	mr r30, r3
/* 804DC790  4B FF FE 51 */	bl Player_actor_Get_tree_shaken_table_index
/* 804DC794  2C 03 00 00 */	cmpwi r3, 0
/* 804DC798  41 80 00 28 */	blt lbl_804DC7C0
/* 804DC79C  2C 03 00 03 */	cmpwi r3, 3
/* 804DC7A0  40 80 00 20 */	bge lbl_804DC7C0
/* 804DC7A4  54 60 10 3A */	slwi r0, r3, 2
/* 804DC7A8  7C 7E 02 14 */	add r3, r30, r0
/* 804DC7AC  80 03 11 D8 */	lwz r0, 0x11d8(r3)
/* 804DC7B0  2C 00 00 00 */	cmpwi r0, 0
/* 804DC7B4  40 82 00 0C */	bne lbl_804DC7C0
/* 804DC7B8  38 60 00 01 */	li r3, 1
/* 804DC7BC  48 00 00 70 */	b lbl_804DC82C
lbl_804DC7C0:
/* 804DC7C0  7F C3 F3 78 */	mr r3, r30
/* 804DC7C4  38 81 00 20 */	addi r4, r1, 0x20
/* 804DC7C8  4B FF E1 1D */	bl Player_actor_Check_HitAxe
/* 804DC7CC  2C 03 00 00 */	cmpwi r3, 0
/* 804DC7D0  41 82 00 58 */	beq lbl_804DC828
/* 804DC7D4  80 DF 00 00 */	lwz r6, 0(r31)
/* 804DC7D8  38 61 00 14 */	addi r3, r1, 0x14
/* 804DC7DC  80 BF 00 04 */	lwz r5, 4(r31)
/* 804DC7E0  38 81 00 08 */	addi r4, r1, 8
/* 804DC7E4  80 1F 00 08 */	lwz r0, 8(r31)
/* 804DC7E8  90 C1 00 08 */	stw r6, 8(r1)
/* 804DC7EC  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804DC7F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DC7F4  4B EC 8D 49 */	bl mFI_Wpos2UtCenterWpos
/* 804DC7F8  2C 03 00 00 */	cmpwi r3, 0
/* 804DC7FC  41 82 00 2C */	beq lbl_804DC828
/* 804DC800  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 804DC804  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804DC808  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804DC80C  40 82 00 1C */	bne lbl_804DC828
/* 804DC810  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 804DC814  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804DC818  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804DC81C  40 82 00 0C */	bne lbl_804DC828
/* 804DC820  38 60 00 01 */	li r3, 1
/* 804DC824  48 00 00 08 */	b lbl_804DC82C
lbl_804DC828:
/* 804DC828  38 60 00 00 */	li r3, 0
lbl_804DC82C:
/* 804DC82C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804DC830  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804DC834  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804DC838  7C 08 03 A6 */	mtlr r0
/* 804DC83C  38 21 00 40 */	addi r1, r1, 0x40
/* 804DC840  4E 80 00 20 */	blr 
