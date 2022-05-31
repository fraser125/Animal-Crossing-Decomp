lbl_804DA618:
/* 804DA618  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804DA61C  7C 08 02 A6 */	mflr r0
/* 804DA620  90 01 00 34 */	stw r0, 0x34(r1)
/* 804DA624  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804DA628  7C 9F 23 78 */	mr r31, r4
/* 804DA62C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804DA630  7C 7E 1B 78 */	mr r30, r3
/* 804DA634  4B FF A0 BD */	bl Player_actor_CheckController_forScoop
/* 804DA638  2C 03 00 00 */	cmpwi r3, 0
/* 804DA63C  41 82 01 0C */	beq lbl_804DA748
/* 804DA640  7F C3 F3 78 */	mr r3, r30
/* 804DA644  4B EF EF FD */	bl get_player_actor_withoutCheck
/* 804DA648  7C 64 1B 78 */	mr r4, r3
/* 804DA64C  7F C3 F3 78 */	mr r3, r30
/* 804DA650  88 04 11 2B */	lbz r0, 0x112b(r4)
/* 804DA654  38 81 00 10 */	addi r4, r1, 0x10
/* 804DA658  38 A1 00 08 */	addi r5, r1, 8
/* 804DA65C  38 C1 00 0C */	addi r6, r1, 0xc
/* 804DA660  7C 00 07 74 */	extsb r0, r0
/* 804DA664  20 00 00 36 */	subfic r0, r0, 0x36
/* 804DA668  7C 00 00 34 */	cntlzw r0, r0
/* 804DA66C  54 07 D9 7E */	srwi r7, r0, 5
/* 804DA670  4B FF FE C1 */	bl Player_actor_Check_scoop_after
/* 804DA674  2C 03 00 3A */	cmpwi r3, 0x3a
/* 804DA678  40 82 00 28 */	bne lbl_804DA6A0
/* 804DA67C  A0 A1 00 08 */	lhz r5, 8(r1)
/* 804DA680  7F C3 F3 78 */	mr r3, r30
/* 804DA684  7F E6 FB 78 */	mr r6, r31
/* 804DA688  38 81 00 10 */	addi r4, r1, 0x10
/* 804DA68C  48 01 CC 05 */	bl func_804F7290
/* 804DA690  2C 03 00 00 */	cmpwi r3, 0
/* 804DA694  41 82 00 B4 */	beq lbl_804DA748
/* 804DA698  38 60 00 01 */	li r3, 1
/* 804DA69C  48 00 00 B0 */	b lbl_804DA74C
lbl_804DA6A0:
/* 804DA6A0  2C 03 00 3B */	cmpwi r3, 0x3b
/* 804DA6A4  40 82 00 24 */	bne lbl_804DA6C8
/* 804DA6A8  7F C3 F3 78 */	mr r3, r30
/* 804DA6AC  7F E5 FB 78 */	mr r5, r31
/* 804DA6B0  38 81 00 10 */	addi r4, r1, 0x10
/* 804DA6B4  48 01 D6 21 */	bl func_804F7CD4
/* 804DA6B8  2C 03 00 00 */	cmpwi r3, 0
/* 804DA6BC  41 82 00 8C */	beq lbl_804DA748
/* 804DA6C0  38 60 00 01 */	li r3, 1
/* 804DA6C4  48 00 00 88 */	b lbl_804DA74C
lbl_804DA6C8:
/* 804DA6C8  2C 03 00 3C */	cmpwi r3, 0x3c
/* 804DA6CC  40 82 00 2C */	bne lbl_804DA6F8
/* 804DA6D0  A0 A1 00 08 */	lhz r5, 8(r1)
/* 804DA6D4  7F C3 F3 78 */	mr r3, r30
/* 804DA6D8  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804DA6DC  7F E7 FB 78 */	mr r7, r31
/* 804DA6E0  38 81 00 10 */	addi r4, r1, 0x10
/* 804DA6E4  48 01 DD A9 */	bl func_804F848C
/* 804DA6E8  2C 03 00 00 */	cmpwi r3, 0
/* 804DA6EC  41 82 00 5C */	beq lbl_804DA748
/* 804DA6F0  38 60 00 01 */	li r3, 1
/* 804DA6F4  48 00 00 58 */	b lbl_804DA74C
lbl_804DA6F8:
/* 804DA6F8  2C 03 00 3D */	cmpwi r3, 0x3d
/* 804DA6FC  40 82 00 20 */	bne lbl_804DA71C
/* 804DA700  7F C3 F3 78 */	mr r3, r30
/* 804DA704  7F E4 FB 78 */	mr r4, r31
/* 804DA708  48 01 EC 8D */	bl func_804F9394
/* 804DA70C  2C 03 00 00 */	cmpwi r3, 0
/* 804DA710  41 82 00 38 */	beq lbl_804DA748
/* 804DA714  38 60 00 01 */	li r3, 1
/* 804DA718  48 00 00 34 */	b lbl_804DA74C
lbl_804DA71C:
/* 804DA71C  2C 03 00 3E */	cmpwi r3, 0x3e
/* 804DA720  40 82 00 28 */	bne lbl_804DA748
/* 804DA724  A0 A1 00 08 */	lhz r5, 8(r1)
/* 804DA728  7F C3 F3 78 */	mr r3, r30
/* 804DA72C  7F E6 FB 78 */	mr r6, r31
/* 804DA730  38 81 00 10 */	addi r4, r1, 0x10
/* 804DA734  48 01 F7 71 */	bl func_804F9EA4
/* 804DA738  2C 03 00 00 */	cmpwi r3, 0
/* 804DA73C  41 82 00 0C */	beq lbl_804DA748
/* 804DA740  38 60 00 01 */	li r3, 1
/* 804DA744  48 00 00 08 */	b lbl_804DA74C
lbl_804DA748:
/* 804DA748  38 60 00 00 */	li r3, 0
lbl_804DA74C:
/* 804DA74C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804DA750  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804DA754  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804DA758  7C 08 03 A6 */	mtlr r0
/* 804DA75C  38 21 00 30 */	addi r1, r1, 0x30
/* 804DA760  4E 80 00 20 */	blr 
