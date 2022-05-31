lbl_804DC6A4:
/* 804DC6A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804DC6A8  7C 08 02 A6 */	mflr r0
/* 804DC6AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804DC6B0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804DC6B4  7C 9F 23 78 */	mr r31, r4
/* 804DC6B8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804DC6BC  7C 7E 1B 78 */	mr r30, r3
/* 804DC6C0  4B FF FF 21 */	bl Player_actor_Get_tree_shaken_table_index
/* 804DC6C4  2C 03 00 00 */	cmpwi r3, 0
/* 804DC6C8  41 80 00 28 */	blt lbl_804DC6F0
/* 804DC6CC  2C 03 00 03 */	cmpwi r3, 3
/* 804DC6D0  40 80 00 20 */	bge lbl_804DC6F0
/* 804DC6D4  54 60 10 3A */	slwi r0, r3, 2
/* 804DC6D8  7C 7E 02 14 */	add r3, r30, r0
/* 804DC6DC  80 03 11 D8 */	lwz r0, 0x11d8(r3)
/* 804DC6E0  2C 00 00 00 */	cmpwi r0, 0
/* 804DC6E4  41 82 00 0C */	beq lbl_804DC6F0
/* 804DC6E8  38 60 00 01 */	li r3, 1
/* 804DC6EC  48 00 00 70 */	b lbl_804DC75C
lbl_804DC6F0:
/* 804DC6F0  7F C3 F3 78 */	mr r3, r30
/* 804DC6F4  38 81 00 20 */	addi r4, r1, 0x20
/* 804DC6F8  4B FF E3 B9 */	bl Player_actor_Check_HitScoop
/* 804DC6FC  2C 03 00 00 */	cmpwi r3, 0
/* 804DC700  41 82 00 58 */	beq lbl_804DC758
/* 804DC704  80 DF 00 00 */	lwz r6, 0(r31)
/* 804DC708  38 61 00 14 */	addi r3, r1, 0x14
/* 804DC70C  80 BF 00 04 */	lwz r5, 4(r31)
/* 804DC710  38 81 00 08 */	addi r4, r1, 8
/* 804DC714  80 1F 00 08 */	lwz r0, 8(r31)
/* 804DC718  90 C1 00 08 */	stw r6, 8(r1)
/* 804DC71C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804DC720  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DC724  4B EC 8E 19 */	bl mFI_Wpos2UtCenterWpos
/* 804DC728  2C 03 00 00 */	cmpwi r3, 0
/* 804DC72C  41 82 00 2C */	beq lbl_804DC758
/* 804DC730  C0 21 00 20 */	lfs f1, 0x20(r1)
/* 804DC734  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 804DC738  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804DC73C  40 82 00 1C */	bne lbl_804DC758
/* 804DC740  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 804DC744  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 804DC748  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804DC74C  40 82 00 0C */	bne lbl_804DC758
/* 804DC750  38 60 00 01 */	li r3, 1
/* 804DC754  48 00 00 08 */	b lbl_804DC75C
lbl_804DC758:
/* 804DC758  38 60 00 00 */	li r3, 0
lbl_804DC75C:
/* 804DC75C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804DC760  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804DC764  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804DC768  7C 08 03 A6 */	mtlr r0
/* 804DC76C  38 21 00 40 */	addi r1, r1, 0x40
/* 804DC770  4E 80 00 20 */	blr 
