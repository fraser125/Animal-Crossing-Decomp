lbl_804EFAD4:
/* 804EFAD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EFAD8  7C 08 02 A6 */	mflr r0
/* 804EFADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EFAE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EFAE4  7C 9F 23 78 */	mr r31, r4
/* 804EFAE8  93 C1 00 08 */	stw r30, 8(r1)
/* 804EFAEC  7C 7E 1B 78 */	mr r30, r3
/* 804EFAF0  38 7E 0D 60 */	addi r3, r30, 0xd60
/* 804EFAF4  38 9E 0D 18 */	addi r4, r30, 0xd18
/* 804EFAF8  4B FF FF 91 */	bl Player_actor_setup_main_Swing_axe_common
/* 804EFAFC  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804EFB00  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804EFB04  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804EFB08  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804EFB0C  C0 25 00 00 */	lfs f1, 0(r5)
/* 804EFB10  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804EFB14  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804EFB18  7F C3 F3 78 */	mr r3, r30
/* 804EFB1C  FC 40 08 90 */	fmr f2, f1
/* 804EFB20  7F E4 FB 78 */	mr r4, r31
/* 804EFB24  38 A0 00 1F */	li r5, 0x1f
/* 804EFB28  38 C0 00 1F */	li r6, 0x1f
/* 804EFB2C  38 E0 00 00 */	li r7, 0
/* 804EFB30  39 00 00 00 */	li r8, 0
/* 804EFB34  4B FE 6C DD */	bl Player_actor_InitAnimation_Base2
/* 804EFB38  7F C3 F3 78 */	mr r3, r30
/* 804EFB3C  7F E4 FB 78 */	mr r4, r31
/* 804EFB40  4B FE 5D B9 */	bl Player_actor_setup_main_Base
/* 804EFB44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EFB48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EFB4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EFB50  7C 08 03 A6 */	mtlr r0
/* 804EFB54  38 21 00 10 */	addi r1, r1, 0x10
/* 804EFB58  4E 80 00 20 */	blr 
