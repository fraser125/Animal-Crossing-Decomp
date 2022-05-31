lbl_804E6EAC:
/* 804E6EAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E6EB0  7C 08 02 A6 */	mflr r0
/* 804E6EB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E6EB8  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 804E6EBC  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 804E6EC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E6EC4  93 C1 00 08 */	stw r30, 8(r1)
/* 804E6EC8  7C 7E 1B 78 */	mr r30, r3
/* 804E6ECC  7C 9F 23 78 */	mr r31, r4
/* 804E6ED0  4B EB 3F E9 */	bl mEv_CheckTitleDemo
/* 804E6ED4  7C 60 00 34 */	cntlzw r0, r3
/* 804E6ED8  38 60 00 01 */	li r3, 1
/* 804E6EDC  5C 65 07 FE */	rlwnm r5, r3, r0, 0x1f, 0x1f
/* 804E6EE0  7F E4 FB 78 */	mr r4, r31
/* 804E6EE4  7F C3 F3 78 */	mr r3, r30
/* 804E6EE8  4B FF 2B B5 */	bl Player_actor_Set_ScrollDemo_forWade
/* 804E6EEC  88 1E 00 98 */	lbz r0, 0x98(r30)
/* 804E6EF0  54 00 CF FF */	rlwinm. r0, r0, 0x19, 0x1f, 0x1f
/* 804E6EF4  40 82 00 20 */	bne lbl_804E6F14
/* 804E6EF8  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804E6EFC  7F E3 FB 78 */	mr r3, r31
/* 804E6F00  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804E6F04  38 80 00 01 */	li r4, 1
/* 804E6F08  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E6F0C  38 A0 00 01 */	li r5, 1
/* 804E6F10  48 00 1A 9D */	bl func_804E89AC
lbl_804E6F14:
/* 804E6F14  7F E3 FB 78 */	mr r3, r31
/* 804E6F18  38 80 00 04 */	li r4, 4
/* 804E6F1C  4B FF 25 CD */	bl Player_actor_CheckAndRequest_main_axe_all
/* 804E6F20  7F E3 FB 78 */	mr r3, r31
/* 804E6F24  4B FE D6 D5 */	bl Player_actor_CheckController_forNet
/* 804E6F28  2C 03 00 00 */	cmpwi r3, 0
/* 804E6F2C  41 82 00 10 */	beq lbl_804E6F3C
/* 804E6F30  7F E3 FB 78 */	mr r3, r31
/* 804E6F34  38 80 00 04 */	li r4, 4
/* 804E6F38  48 00 AF ED */	bl func_804F1F24
lbl_804E6F3C:
/* 804E6F3C  7F E3 FB 78 */	mr r3, r31
/* 804E6F40  4B FE D7 35 */	bl Player_actor_CheckController_forRod
/* 804E6F44  2C 03 00 00 */	cmpwi r3, 0
/* 804E6F48  41 82 00 10 */	beq lbl_804E6F58
/* 804E6F4C  7F E3 FB 78 */	mr r3, r31
/* 804E6F50  38 80 00 04 */	li r4, 4
/* 804E6F54  48 00 DC 95 */	bl func_804F4BE8
lbl_804E6F58:
/* 804E6F58  7F E3 FB 78 */	mr r3, r31
/* 804E6F5C  38 80 00 04 */	li r4, 4
/* 804E6F60  4B FF 36 B9 */	bl Player_actor_CheckAndRequest_main_scoop_all
/* 804E6F64  7F E3 FB 78 */	mr r3, r31
/* 804E6F68  38 80 00 04 */	li r4, 4
/* 804E6F6C  4B FF 27 35 */	bl Player_actor_CheckAndRequest_main_umbrella_all
/* 804E6F70  7F E3 FB 78 */	mr r3, r31
/* 804E6F74  38 80 00 01 */	li r4, 1
/* 804E6F78  38 A0 00 01 */	li r5, 1
/* 804E6F7C  38 C0 00 04 */	li r6, 4
/* 804E6F80  4B FF 27 85 */	bl Player_actor_CheckAndRequest_main_fan_all
/* 804E6F84  7F E3 FB 78 */	mr r3, r31
/* 804E6F88  4B FF 55 85 */	bl Player_actor_CheckAndRequest_main_shake_tree_all
/* 804E6F8C  7F E3 FB 78 */	mr r3, r31
/* 804E6F90  4B FF 6E 11 */	bl Player_actor_CheckAndRequest_main_pickup_all
/* 804E6F94  C0 1E 01 80 */	lfs f0, 0x180(r30)
/* 804E6F98  3C 60 80 65 */	lis r3, lit_7897@ha /* 0x80648378@ha */
/* 804E6F9C  38 83 83 78 */	addi r4, r3, lit_7897@l /* 0x80648378@l */
/* 804E6FA0  EC 40 00 32 */	fmuls f2, f0, f0
/* 804E6FA4  C0 24 00 00 */	lfs f1, 0(r4)
/* 804E6FA8  3C 60 80 65 */	lis r3, lit_7898@ha /* 0x8064837C@ha */
/* 804E6FAC  C0 03 83 7C */	lfs f0, lit_7898@l(r3)  /* 0x8064837C@l */
/* 804E6FB0  EF E2 08 24 */	fdivs f31, f2, f1
/* 804E6FB4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804E6FB8  40 80 00 24 */	bge lbl_804E6FDC
/* 804E6FBC  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804E6FC0  7F E3 FB 78 */	mr r3, r31
/* 804E6FC4  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804E6FC8  38 80 00 00 */	li r4, 0
/* 804E6FCC  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E6FD0  38 A0 00 00 */	li r5, 0
/* 804E6FD4  38 C0 00 01 */	li r6, 1
/* 804E6FD8  4B FF F0 79 */	bl func_804E6050
lbl_804E6FDC:
/* 804E6FDC  3C 60 80 65 */	lis r3, lit_7853@ha /* 0x80648370@ha */
/* 804E6FE0  C0 03 83 70 */	lfs f0, lit_7853@l(r3)  /* 0x80648370@l */
/* 804E6FE4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804E6FE8  4C 41 13 82 */	cror 2, 1, 2
/* 804E6FEC  40 82 00 20 */	bne lbl_804E700C
/* 804E6FF0  3C 80 80 65 */	lis r4, lit_7381@ha /* 0x80648354@ha */
/* 804E6FF4  7F E3 FB 78 */	mr r3, r31
/* 804E6FF8  38 A4 83 54 */	addi r5, r4, lit_7381@l /* 0x80648354@l */
/* 804E6FFC  38 80 00 00 */	li r4, 0
/* 804E7000  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E7004  38 A0 00 01 */	li r5, 1
/* 804E7008  48 00 00 E9 */	bl func_804E70F0
lbl_804E700C:
/* 804E700C  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 804E7010  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E7014  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 804E7018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E701C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E7020  7C 08 03 A6 */	mtlr r0
/* 804E7024  38 21 00 20 */	addi r1, r1, 0x20
/* 804E7028  4E 80 00 20 */	blr 
