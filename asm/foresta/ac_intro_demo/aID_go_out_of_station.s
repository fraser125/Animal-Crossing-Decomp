lbl_8042ACF8:
/* 8042ACF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042ACFC  7C 08 02 A6 */	mflr r0
/* 8042AD00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042AD04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042AD08  7C 9F 23 78 */	mr r31, r4
/* 8042AD0C  93 C1 00 08 */	stw r30, 8(r1)
/* 8042AD10  7C 7E 1B 78 */	mr r30, r3
/* 8042AD14  7F E3 FB 78 */	mr r3, r31
/* 8042AD18  4B FA E9 29 */	bl get_player_actor_withoutCheck
/* 8042AD1C  28 03 00 00 */	cmplwi r3, 0
/* 8042AD20  41 82 00 44 */	beq lbl_8042AD64
/* 8042AD24  3C 80 80 64 */	lis r4, lit_538@ha /* 0x80644048@ha */
/* 8042AD28  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 8042AD2C  C0 04 40 48 */	lfs f0, lit_538@l(r4)  /* 0x80644048@l */
/* 8042AD30  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8042AD34  4C 41 13 82 */	cror 2, 1, 2
/* 8042AD38  40 82 00 2C */	bne lbl_8042AD64
/* 8042AD3C  7F E3 FB 78 */	mr r3, r31
/* 8042AD40  38 80 00 00 */	li r4, 0
/* 8042AD44  38 A0 00 00 */	li r5, 0
/* 8042AD48  4B FB 00 3D */	bl mPlib_request_main_demo_wait_type1
/* 8042AD4C  38 00 00 07 */	li r0, 7
/* 8042AD50  7F C3 F3 78 */	mr r3, r30
/* 8042AD54  90 1E 01 78 */	stw r0, 0x178(r30)
/* 8042AD58  7F E4 FB 78 */	mr r4, r31
/* 8042AD5C  38 A0 00 06 */	li r5, 6
/* 8042AD60  48 00 07 B5 */	bl aID_setupAction
lbl_8042AD64:
/* 8042AD64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042AD68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042AD6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042AD70  7C 08 03 A6 */	mtlr r0
/* 8042AD74  38 21 00 10 */	addi r1, r1, 0x10
/* 8042AD78  4E 80 00 20 */	blr 
