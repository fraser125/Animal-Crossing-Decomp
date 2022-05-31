lbl_804FCB3C:
/* 804FCB3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FCB40  7C 08 02 A6 */	mflr r0
/* 804FCB44  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FCB48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FCB4C  7C 7F 1B 78 */	mr r31, r3
/* 804FCB50  4B FE 3D F1 */	bl Player_actor_Get_ItemKind_from_submenu
/* 804FCB54  7C 63 07 74 */	extsb r3, r3
/* 804FCB58  38 00 00 00 */	li r0, 0
/* 804FCB5C  2C 03 00 0B */	cmpwi r3, 0xb
/* 804FCB60  41 80 00 10 */	blt lbl_804FCB70
/* 804FCB64  2C 03 00 33 */	cmpwi r3, 0x33
/* 804FCB68  40 80 00 08 */	bge lbl_804FCB70
/* 804FCB6C  38 00 00 01 */	li r0, 1
lbl_804FCB70:
/* 804FCB70  2C 00 00 00 */	cmpwi r0, 0
/* 804FCB74  40 82 00 50 */	bne lbl_804FCBC4
/* 804FCB78  3C 60 80 64 */	lis r3, lit_1077@ha /* 0x80646A1C@ha */
/* 804FCB7C  C0 3F 0D 50 */	lfs f1, 0xd50(r31)
/* 804FCB80  C0 63 6A 1C */	lfs f3, lit_1077@l(r3)  /* 0x80646A1C@l */
/* 804FCB84  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 804FCB88  40 80 00 3C */	bge lbl_804FCBC4
/* 804FCB8C  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804FCB90  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804FCB94  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 804FCB98  C0 43 65 68 */	lfs f2, lit_604@l(r3)  /* 0x80646568@l */
/* 804FCB9C  EC 01 00 2A */	fadds f0, f1, f0
/* 804FCBA0  FC 80 10 90 */	fmr f4, f2
/* 804FCBA4  FC A0 10 90 */	fmr f5, f2
/* 804FCBA8  D0 1F 0D 50 */	stfs f0, 0xd50(r31)
/* 804FCBAC  C0 3F 0D 50 */	lfs f1, 0xd50(r31)
/* 804FCBB0  4B EB EA 4D */	bl get_percent_forAccelBrake
/* 804FCBB4  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804FCBB8  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 804FCBBC  EC 00 08 28 */	fsubs f0, f0, f1
/* 804FCBC0  D0 1F 0D F8 */	stfs f0, 0xdf8(r31)
lbl_804FCBC4:
/* 804FCBC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FCBC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FCBCC  7C 08 03 A6 */	mtlr r0
/* 804FCBD0  38 21 00 10 */	addi r1, r1, 0x10
/* 804FCBD4  4E 80 00 20 */	blr 
