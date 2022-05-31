lbl_804F7320:
/* 804F7320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F7324  7C 08 02 A6 */	mflr r0
/* 804F7328  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F732C  38 00 00 00 */	li r0, 0
/* 804F7330  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F7334  7C 9F 23 78 */	mr r31, r4
/* 804F7338  93 C1 00 08 */	stw r30, 8(r1)
/* 804F733C  7C 7E 1B 78 */	mr r30, r3
/* 804F7340  A1 03 0D 6C */	lhz r8, 0xd6c(r3)
/* 804F7344  28 08 00 01 */	cmplwi r8, 1
/* 804F7348  41 80 00 0C */	blt lbl_804F7354
/* 804F734C  28 08 00 04 */	cmplwi r8, 4
/* 804F7350  40 81 00 34 */	ble lbl_804F7384
lbl_804F7354:
/* 804F7354  28 08 00 70 */	cmplwi r8, 0x70
/* 804F7358  41 80 00 0C */	blt lbl_804F7364
/* 804F735C  28 08 00 73 */	cmplwi r8, 0x73
/* 804F7360  40 81 00 24 */	ble lbl_804F7384
lbl_804F7364:
/* 804F7364  28 08 00 74 */	cmplwi r8, 0x74
/* 804F7368  41 80 00 0C */	blt lbl_804F7374
/* 804F736C  28 08 00 77 */	cmplwi r8, 0x77
/* 804F7370  40 81 00 14 */	ble lbl_804F7384
lbl_804F7374:
/* 804F7374  28 08 00 7B */	cmplwi r8, 0x7b
/* 804F7378  41 80 00 10 */	blt lbl_804F7388
/* 804F737C  28 08 00 7E */	cmplwi r8, 0x7e
/* 804F7380  41 81 00 08 */	bgt lbl_804F7388
lbl_804F7384:
/* 804F7384  38 00 00 01 */	li r0, 1
lbl_804F7388:
/* 804F7388  2C 00 00 00 */	cmpwi r0, 0
/* 804F738C  38 A0 00 4E */	li r5, 0x4e
/* 804F7390  41 82 00 08 */	beq lbl_804F7398
/* 804F7394  38 A0 00 58 */	li r5, 0x58
lbl_804F7398:
/* 804F7398  80 DE 0D 60 */	lwz r6, 0xd60(r30)
/* 804F739C  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804F73A0  80 1E 0D 64 */	lwz r0, 0xd64(r30)
/* 804F73A4  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804F73A8  C0 23 65 64 */	lfs f1, lit_603@l(r3)  /* 0x80646564@l */
/* 804F73AC  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804F73B0  90 DE 0D 18 */	stw r6, 0xd18(r30)
/* 804F73B4  38 C4 6C 4C */	addi r6, r4, lit_2671@l /* 0x80646C4C@l */
/* 804F73B8  38 83 83 54 */	addi r4, r3, lit_7381@l /* 0x80648354@l */
/* 804F73BC  C0 66 00 00 */	lfs f3, 0(r6)
/* 804F73C0  90 1E 0D 1C */	stw r0, 0xd1c(r30)
/* 804F73C4  FC 40 08 90 */	fmr f2, f1
/* 804F73C8  C0 84 00 00 */	lfs f4, 0(r4)
/* 804F73CC  7F C3 F3 78 */	mr r3, r30
/* 804F73D0  80 1E 0D 68 */	lwz r0, 0xd68(r30)
/* 804F73D4  7F E4 FB 78 */	mr r4, r31
/* 804F73D8  7C A6 2B 78 */	mr r6, r5
/* 804F73DC  90 1E 0D 20 */	stw r0, 0xd20(r30)
/* 804F73E0  38 E0 00 00 */	li r7, 0
/* 804F73E4  B1 1E 0D 24 */	sth r8, 0xd24(r30)
/* 804F73E8  39 00 00 00 */	li r8, 0
/* 804F73EC  4B FD F4 25 */	bl Player_actor_InitAnimation_Base2
/* 804F73F0  7F C3 F3 78 */	mr r3, r30
/* 804F73F4  7F E4 FB 78 */	mr r4, r31
/* 804F73F8  4B FD E5 01 */	bl Player_actor_setup_main_Base
/* 804F73FC  38 60 00 01 */	li r3, 1
/* 804F7400  4B EB CC 19 */	bl mISL_SetNowPlayerAction
/* 804F7404  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F7408  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F740C  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F7410  7C 08 03 A6 */	mtlr r0
/* 804F7414  38 21 00 10 */	addi r1, r1, 0x10
/* 804F7418  4E 80 00 20 */	blr 
