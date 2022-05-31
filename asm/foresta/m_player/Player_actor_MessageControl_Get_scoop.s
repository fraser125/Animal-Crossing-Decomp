lbl_804FA578:
/* 804FA578  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FA57C  7C 08 02 A6 */	mflr r0
/* 804FA580  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FA584  39 61 00 20 */	addi r11, r1, 0x20
/* 804FA588  4B BA 09 4D */	bl func_8009AED4
/* 804FA58C  7C 7F 1B 78 */	mr r31, r3
/* 804FA590  7C 9D 23 78 */	mr r29, r4
/* 804FA594  4B EC 51 15 */	bl func_803BF6A8
/* 804FA598  3C 80 80 65 */	lis r4, lit_13279@ha /* 0x80648558@ha */
/* 804FA59C  C0 3F 0D 30 */	lfs f1, 0xd30(r31)
/* 804FA5A0  C0 04 85 58 */	lfs f0, lit_13279@l(r4)  /* 0x80648558@l */
/* 804FA5A4  7C 7E 1B 78 */	mr r30, r3
/* 804FA5A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FA5AC  40 80 00 1C */	bge lbl_804FA5C8
/* 804FA5B0  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804FA5B4  38 60 FF FF */	li r3, -1
/* 804FA5B8  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 804FA5BC  EC 01 00 2A */	fadds f0, f1, f0
/* 804FA5C0  D0 1F 0D 30 */	stfs f0, 0xd30(r31)
/* 804FA5C4  48 00 01 30 */	b lbl_804FA6F4
lbl_804FA5C8:
/* 804FA5C8  80 1F 0D 34 */	lwz r0, 0xd34(r31)
/* 804FA5CC  2C 00 00 01 */	cmpwi r0, 1
/* 804FA5D0  41 82 00 5C */	beq lbl_804FA62C
/* 804FA5D4  40 80 00 10 */	bge lbl_804FA5E4
/* 804FA5D8  2C 00 00 00 */	cmpwi r0, 0
/* 804FA5DC  40 80 00 14 */	bge lbl_804FA5F0
/* 804FA5E0  48 00 00 D4 */	b lbl_804FA6B4
lbl_804FA5E4:
/* 804FA5E4  2C 00 00 03 */	cmpwi r0, 3
/* 804FA5E8  40 80 00 CC */	bge lbl_804FA6B4
/* 804FA5EC  48 00 00 84 */	b lbl_804FA670
lbl_804FA5F0:
/* 804FA5F0  7F E4 FB 78 */	mr r4, r31
/* 804FA5F4  38 60 00 09 */	li r3, 9
/* 804FA5F8  4B E9 FC 6D */	bl mDemo_Check
/* 804FA5FC  2C 03 00 00 */	cmpwi r3, 0
/* 804FA600  40 82 00 1C */	bne lbl_804FA61C
/* 804FA604  3C 60 80 50 */	lis r3, Player_actor_Get_scoop_demo_ct@ha /* 0x804FA4B0@ha */
/* 804FA608  7F E4 FB 78 */	mr r4, r31
/* 804FA60C  38 A3 A4 B0 */	addi r5, r3, Player_actor_Get_scoop_demo_ct@l /* 0x804FA4B0@l */
/* 804FA610  38 60 00 09 */	li r3, 9
/* 804FA614  4B E9 FB 49 */	bl mDemo_Request
/* 804FA618  48 00 00 0C */	b lbl_804FA624
lbl_804FA61C:
/* 804FA61C  38 00 00 01 */	li r0, 1
/* 804FA620  90 1F 0D 34 */	stw r0, 0xd34(r31)
lbl_804FA624:
/* 804FA624  38 60 FF FF */	li r3, -1
/* 804FA628  48 00 00 CC */	b lbl_804FA6F4
lbl_804FA62C:
/* 804FA62C  2C 1D 00 00 */	cmpwi r29, 0
/* 804FA630  41 82 00 38 */	beq lbl_804FA668
/* 804FA634  80 1F 0D 2C */	lwz r0, 0xd2c(r31)
/* 804FA638  2C 00 00 00 */	cmpwi r0, 0
/* 804FA63C  41 82 00 14 */	beq lbl_804FA650
/* 804FA640  4B EC 66 D1 */	bl mMsg_Set_CancelNormalContinue
/* 804FA644  38 00 00 03 */	li r0, 3
/* 804FA648  90 1F 0D 34 */	stw r0, 0xd34(r31)
/* 804FA64C  48 00 00 14 */	b lbl_804FA660
lbl_804FA650:
/* 804FA650  38 80 17 B3 */	li r4, 0x17b3
/* 804FA654  4B EC 59 71 */	bl mMsg_Set_continue_msg_num
/* 804FA658  38 00 00 02 */	li r0, 2
/* 804FA65C  90 1F 0D 34 */	stw r0, 0xd34(r31)
lbl_804FA660:
/* 804FA660  7F C3 F3 78 */	mr r3, r30
/* 804FA664  4B EC 66 E9 */	bl mMsg_Unset_LockContinue
lbl_804FA668:
/* 804FA668  38 60 FF FF */	li r3, -1
/* 804FA66C  48 00 00 88 */	b lbl_804FA6F4
lbl_804FA670:
/* 804FA670  4B E8 8E D1 */	bl func_80383540
/* 804FA674  4B E8 94 F9 */	bl mChoice_Get_ChoseNum
/* 804FA678  2C 03 00 00 */	cmpwi r3, 0
/* 804FA67C  40 82 00 18 */	bne lbl_804FA694
/* 804FA680  38 60 00 01 */	li r3, 1
/* 804FA684  38 00 00 03 */	li r0, 3
/* 804FA688  90 7F 0D 38 */	stw r3, 0xd38(r31)
/* 804FA68C  90 1F 0D 34 */	stw r0, 0xd34(r31)
/* 804FA690  48 00 00 1C */	b lbl_804FA6AC
lbl_804FA694:
/* 804FA694  2C 03 00 01 */	cmpwi r3, 1
/* 804FA698  40 82 00 14 */	bne lbl_804FA6AC
/* 804FA69C  38 60 00 00 */	li r3, 0
/* 804FA6A0  38 00 00 03 */	li r0, 3
/* 804FA6A4  90 7F 0D 38 */	stw r3, 0xd38(r31)
/* 804FA6A8  90 1F 0D 34 */	stw r0, 0xd34(r31)
lbl_804FA6AC:
/* 804FA6AC  38 60 FF FF */	li r3, -1
/* 804FA6B0  48 00 00 44 */	b lbl_804FA6F4
lbl_804FA6B4:
/* 804FA6B4  7F E4 FB 78 */	mr r4, r31
/* 804FA6B8  38 60 00 09 */	li r3, 9
/* 804FA6BC  4B E9 FB A9 */	bl mDemo_Check
/* 804FA6C0  2C 03 00 00 */	cmpwi r3, 0
/* 804FA6C4  40 82 00 2C */	bne lbl_804FA6F0
/* 804FA6C8  80 1F 0D 2C */	lwz r0, 0xd2c(r31)
/* 804FA6CC  2C 00 00 00 */	cmpwi r0, 0
/* 804FA6D0  41 82 00 0C */	beq lbl_804FA6DC
/* 804FA6D4  38 60 00 3F */	li r3, 0x3f
/* 804FA6D8  48 00 00 1C */	b lbl_804FA6F4
lbl_804FA6DC:
/* 804FA6DC  80 1F 0D 38 */	lwz r0, 0xd38(r31)
/* 804FA6E0  7C 00 00 34 */	cntlzw r0, r0
/* 804FA6E4  54 03 D9 7E */	srwi r3, r0, 5
/* 804FA6E8  38 63 00 3F */	addi r3, r3, 0x3f
/* 804FA6EC  48 00 00 08 */	b lbl_804FA6F4
lbl_804FA6F0:
/* 804FA6F0  38 60 FF FF */	li r3, -1
lbl_804FA6F4:
/* 804FA6F4  39 61 00 20 */	addi r11, r1, 0x20
/* 804FA6F8  4B BA 08 29 */	bl func_8009AF20
/* 804FA6FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FA700  7C 08 03 A6 */	mtlr r0
/* 804FA704  38 21 00 20 */	addi r1, r1, 0x20
/* 804FA708  4E 80 00 20 */	blr 
