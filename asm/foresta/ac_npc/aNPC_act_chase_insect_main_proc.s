lbl_80531E04:
/* 80531E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80531E08  7C 08 02 A6 */	mflr r0
/* 80531E0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80531E10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80531E14  93 C1 00 08 */	stw r30, 8(r1)
/* 80531E18  7C 7E 1B 78 */	mr r30, r3
/* 80531E1C  4B FF FD D5 */	bl func_80531BF0
/* 80531E20  2C 03 00 01 */	cmpwi r3, 1
/* 80531E24  40 82 00 10 */	bne lbl_80531E34
/* 80531E28  38 00 00 FF */	li r0, 0xff
/* 80531E2C  98 1E 07 F6 */	stb r0, 0x7f6(r30)
/* 80531E30  48 00 00 60 */	b lbl_80531E90
lbl_80531E34:
/* 80531E34  80 1E 01 98 */	lwz r0, 0x198(r30)
/* 80531E38  2C 00 00 02 */	cmpwi r0, 2
/* 80531E3C  41 82 00 08 */	beq lbl_80531E44
/* 80531E40  48 00 00 2C */	b lbl_80531E6C
lbl_80531E44:
/* 80531E44  C0 3E 09 04 */	lfs f1, 0x904(r30)
/* 80531E48  C0 1E 09 0C */	lfs f0, 0x90c(r30)
/* 80531E4C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80531E50  40 82 00 1C */	bne lbl_80531E6C
/* 80531E54  C0 3E 09 08 */	lfs f1, 0x908(r30)
/* 80531E58  C0 1E 09 10 */	lfs f0, 0x910(r30)
/* 80531E5C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80531E60  40 82 00 0C */	bne lbl_80531E6C
/* 80531E64  7F C3 F3 78 */	mr r3, r30
/* 80531E68  4B FF FE 21 */	bl aNPC_act_chase_insect_chg_step
lbl_80531E6C:
/* 80531E6C  8B FE 07 F6 */	lbz r31, 0x7f6(r30)
/* 80531E70  3C 60 80 6A */	lis r3, act_proc_2439@ha /* 0x806A2500@ha */
/* 80531E74  38 83 25 00 */	addi r4, r3, act_proc_2439@l /* 0x806A2500@l */
/* 80531E78  7F C3 F3 78 */	mr r3, r30
/* 80531E7C  57 E0 15 BA */	rlwinm r0, r31, 2, 0x16, 0x1d
/* 80531E80  7D 84 00 2E */	lwzx r12, r4, r0
/* 80531E84  7D 89 03 A6 */	mtctr r12
/* 80531E88  4E 80 04 21 */	bctrl 
/* 80531E8C  9B FE 07 F6 */	stb r31, 0x7f6(r30)
lbl_80531E90:
/* 80531E90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80531E94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80531E98  83 C1 00 08 */	lwz r30, 8(r1)
/* 80531E9C  7C 08 03 A6 */	mtlr r0
/* 80531EA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80531EA4  4E 80 00 20 */	blr 
