lbl_804FF5F0:
/* 804FF5F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FF5F4  7C 08 02 A6 */	mflr r0
/* 804FF5F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FF5FC  39 61 00 20 */	addi r11, r1, 0x20
/* 804FF600  4B B9 B8 D5 */	bl func_8009AED4
/* 804FF604  3C E0 80 64 */	lis r7, lit_603@ha /* 0x80646564@ha */
/* 804FF608  3C C0 80 64 */	lis r6, lit_4067@ha /* 0x80647A8C@ha */
/* 804FF60C  C0 43 0D 24 */	lfs f2, 0xd24(r3)
/* 804FF610  7C 7D 1B 78 */	mr r29, r3
/* 804FF614  C0 27 65 64 */	lfs f1, lit_603@l(r7)  /* 0x80646564@l */
/* 804FF618  3B FD 0D 24 */	addi r31, r29, 0xd24
/* 804FF61C  C0 06 7A 8C */	lfs f0, lit_4067@l(r6)  /* 0x80647A8C@l */
/* 804FF620  7C 9E 23 78 */	mr r30, r4
/* 804FF624  EC 22 08 2A */	fadds f1, f2, f1
/* 804FF628  D0 23 0D 24 */	stfs f1, 0xd24(r3)
/* 804FF62C  C0 23 0D 24 */	lfs f1, 0xd24(r3)
/* 804FF630  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804FF634  4C 41 13 82 */	cror 2, 1, 2
/* 804FF638  40 82 00 60 */	bne lbl_804FF698
/* 804FF63C  2C 05 00 00 */	cmpwi r5, 0
/* 804FF640  41 82 00 58 */	beq lbl_804FF698
/* 804FF644  4B FD 5D 29 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804FF648  80 1D 0D 1C */	lwz r0, 0xd1c(r29)
/* 804FF64C  2C 00 00 00 */	cmpwi r0, 0
/* 804FF650  40 82 00 2C */	bne lbl_804FF67C
/* 804FF654  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804FF658  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804FF65C  38 A3 83 54 */	addi r5, r3, lit_7381@l /* 0x80648354@l */
/* 804FF660  C0 44 65 68 */	lfs f2, lit_604@l(r4)  /* 0x80646568@l */
/* 804FF664  C0 25 00 00 */	lfs f1, 0(r5)
/* 804FF668  7F C3 F3 78 */	mr r3, r30
/* 804FF66C  38 80 00 00 */	li r4, 0
/* 804FF670  38 A0 00 01 */	li r5, 1
/* 804FF674  4B FE 65 89 */	bl func_804E5BFC
/* 804FF678  48 00 00 14 */	b lbl_804FF68C
lbl_804FF67C:
/* 804FF67C  7F C3 F3 78 */	mr r3, r30
/* 804FF680  38 80 00 03 */	li r4, 3
/* 804FF684  38 A0 00 22 */	li r5, 0x22
/* 804FF688  48 00 8E 15 */	bl Player_actor_request_main_demo_get_golden_item_all
lbl_804FF68C:
/* 804FF68C  3C 60 80 64 */	lis r3, lit_4067@ha /* 0x80647A8C@ha */
/* 804FF690  C0 03 7A 8C */	lfs f0, lit_4067@l(r3)  /* 0x80647A8C@l */
/* 804FF694  D0 1F 00 00 */	stfs f0, 0(r31)
lbl_804FF698:
/* 804FF698  39 61 00 20 */	addi r11, r1, 0x20
/* 804FF69C  4B B9 B8 85 */	bl func_8009AF20
/* 804FF6A0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FF6A4  7C 08 03 A6 */	mtlr r0
/* 804FF6A8  38 21 00 20 */	addi r1, r1, 0x20
/* 804FF6AC  4E 80 00 20 */	blr 
