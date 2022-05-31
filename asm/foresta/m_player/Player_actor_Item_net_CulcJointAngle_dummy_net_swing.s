lbl_804E1B1C:
/* 804E1B1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1B20  7C 08 02 A6 */	mflr r0
/* 804E1B24  3C 80 80 64 */	lis r4, lit_6257@ha /* 0x80647E60@ha */
/* 804E1B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1B2C  C0 04 7E 60 */	lfs f0, lit_6257@l(r4)  /* 0x80647E60@l */
/* 804E1B30  C0 23 01 84 */	lfs f1, 0x184(r3)
/* 804E1B34  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804E1B38  4C 41 13 82 */	cror 2, 1, 2
/* 804E1B3C  40 82 00 0C */	bne lbl_804E1B48
/* 804E1B40  4B FF FE F5 */	bl Player_actor_Item_net_CulcJointAngle_dummy_net_zero
/* 804E1B44  48 00 00 08 */	b lbl_804E1B4C
lbl_804E1B48:
/* 804E1B48  4B FF FB C5 */	bl Player_actor_Item_net_CulcJointAngle_dummy_net_ready
lbl_804E1B4C:
/* 804E1B4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1B50  7C 08 03 A6 */	mtlr r0
/* 804E1B54  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1B58  4E 80 00 20 */	blr 
