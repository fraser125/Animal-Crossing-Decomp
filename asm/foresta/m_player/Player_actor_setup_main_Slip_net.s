lbl_804F1AD0:
/* 804F1AD0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804F1AD4  7C 08 02 A6 */	mflr r0
/* 804F1AD8  3C C0 80 64 */	lis r6, lit_604@ha /* 0x80646568@ha */
/* 804F1ADC  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804F1AE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 804F1AE4  C0 06 65 68 */	lfs f0, lit_604@l(r6)  /* 0x80646568@l */
/* 804F1AE8  38 C1 00 08 */	addi r6, r1, 8
/* 804F1AEC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804F1AF0  7C 7F 1B 78 */	mr r31, r3
/* 804F1AF4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804F1AF8  7C 9E 23 78 */	mr r30, r4
/* 804F1AFC  38 85 83 54 */	addi r4, r5, lit_7381@l /* 0x80648354@l */
/* 804F1B00  38 A1 00 0C */	addi r5, r1, 0xc
/* 804F1B04  C0 24 00 00 */	lfs f1, 0(r4)
/* 804F1B08  38 80 00 20 */	li r4, 0x20
/* 804F1B0C  D0 03 0D 18 */	stfs f0, 0xd18(r3)
/* 804F1B10  4B FE 84 51 */	bl Player_actor_SetupItem_Base1
/* 804F1B14  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F1B18  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F1B1C  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804F1B20  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804F1B24  C0 25 00 00 */	lfs f1, 0(r5)
/* 804F1B28  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F1B2C  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804F1B30  7F E3 FB 78 */	mr r3, r31
/* 804F1B34  FC 40 08 90 */	fmr f2, f1
/* 804F1B38  7F C4 F3 78 */	mr r4, r30
/* 804F1B3C  38 A0 00 20 */	li r5, 0x20
/* 804F1B40  38 C0 00 20 */	li r6, 0x20
/* 804F1B44  38 E0 00 00 */	li r7, 0
/* 804F1B48  4B FE 4B B1 */	bl Player_actor_InitAnimation_Base1
/* 804F1B4C  7F E3 FB 78 */	mr r3, r31
/* 804F1B50  7F C4 F3 78 */	mr r4, r30
/* 804F1B54  4B FE 3D A5 */	bl Player_actor_setup_main_Base
/* 804F1B58  7F E3 FB 78 */	mr r3, r31
/* 804F1B5C  4B FE DC B1 */	bl Player_actor_sound_slip
/* 804F1B60  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 804F1B64  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804F1B68  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 804F1B6C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804F1B70  3C 63 00 02 */	addis r3, r3, 2
/* 804F1B74  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804F1B78  90 81 00 10 */	stw r4, 0x10(r1)
/* 804F1B7C  7F C7 F3 78 */	mr r7, r30
/* 804F1B80  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804F1B84  38 81 00 10 */	addi r4, r1, 0x10
/* 804F1B88  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F1B8C  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804F1B90  38 60 00 2F */	li r3, 0x2f
/* 804F1B94  38 A0 00 02 */	li r5, 2
/* 804F1B98  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 804F1B9C  39 40 00 01 */	li r10, 1
/* 804F1BA0  90 01 00 18 */	stw r0, 0x18(r1)
/* 804F1BA4  80 1F 00 98 */	lwz r0, 0x98(r31)
/* 804F1BA8  81 86 00 00 */	lwz r12, 0(r6)
/* 804F1BAC  54 00 AE BE */	rlwinm r0, r0, 0x15, 0x1a, 0x1f
/* 804F1BB0  A8 DF 00 36 */	lha r6, 0x36(r31)
/* 804F1BB4  7C 09 07 34 */	extsh r9, r0
/* 804F1BB8  7D 89 03 A6 */	mtctr r12
/* 804F1BBC  4E 80 04 21 */	bctrl 
/* 804F1BC0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804F1BC4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804F1BC8  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804F1BCC  7C 08 03 A6 */	mtlr r0
/* 804F1BD0  38 21 00 30 */	addi r1, r1, 0x30
/* 804F1BD4  4E 80 00 20 */	blr 
