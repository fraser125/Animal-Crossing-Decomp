lbl_804E995C:
/* 804E995C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E9960  7C 08 02 A6 */	mflr r0
/* 804E9964  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E9968  38 00 00 00 */	li r0, 0
/* 804E996C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E9970  7C 9F 23 78 */	mr r31, r4
/* 804E9974  93 C1 00 08 */	stw r30, 8(r1)
/* 804E9978  7C 7E 1B 78 */	mr r30, r3
/* 804E997C  80 A3 0D 64 */	lwz r5, 0xd64(r3)
/* 804E9980  80 63 0D 60 */	lwz r3, 0xd60(r3)
/* 804E9984  2C 05 00 00 */	cmpwi r5, 0
/* 804E9988  90 1E 0D 18 */	stw r0, 0xd18(r30)
/* 804E998C  40 82 00 28 */	bne lbl_804E99B4
/* 804E9990  2C 03 00 00 */	cmpwi r3, 0
/* 804E9994  38 A0 00 39 */	li r5, 0x39
/* 804E9998  41 82 00 10 */	beq lbl_804E99A8
/* 804E999C  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E99A0  C0 23 65 64 */	lfs f1, lit_603@l(r3)  /* 0x80646564@l */
/* 804E99A4  48 00 00 1C */	b lbl_804E99C0
lbl_804E99A8:
/* 804E99A8  3C 60 80 65 */	lis r3, lit_8613@ha /* 0x806484A4@ha */
/* 804E99AC  C0 23 84 A4 */	lfs f1, lit_8613@l(r3)  /* 0x806484A4@l */
/* 804E99B0  48 00 00 10 */	b lbl_804E99C0
lbl_804E99B4:
/* 804E99B4  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E99B8  38 A0 00 3A */	li r5, 0x3a
/* 804E99BC  C0 23 65 64 */	lfs f1, lit_603@l(r3)  /* 0x80646564@l */
lbl_804E99C0:
/* 804E99C0  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804E99C4  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E99C8  38 C4 6C 4C */	addi r6, r4, lit_2671@l /* 0x80646C4C@l */
/* 804E99CC  FC 40 08 90 */	fmr f2, f1
/* 804E99D0  38 83 65 68 */	addi r4, r3, lit_604@l /* 0x80646568@l */
/* 804E99D4  C0 66 00 00 */	lfs f3, 0(r6)
/* 804E99D8  C0 84 00 00 */	lfs f4, 0(r4)
/* 804E99DC  7F C3 F3 78 */	mr r3, r30
/* 804E99E0  7F E4 FB 78 */	mr r4, r31
/* 804E99E4  7C A6 2B 78 */	mr r6, r5
/* 804E99E8  38 E0 00 00 */	li r7, 0
/* 804E99EC  39 00 00 00 */	li r8, 0
/* 804E99F0  4B FE CE 21 */	bl Player_actor_InitAnimation_Base2
/* 804E99F4  7F C3 F3 78 */	mr r3, r30
/* 804E99F8  7F E4 FB 78 */	mr r4, r31
/* 804E99FC  4B FE BE FD */	bl Player_actor_setup_main_Base
/* 804E9A00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E9A04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E9A08  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E9A0C  7C 08 03 A6 */	mtlr r0
/* 804E9A10  38 21 00 10 */	addi r1, r1, 0x10
/* 804E9A14  4E 80 00 20 */	blr 
