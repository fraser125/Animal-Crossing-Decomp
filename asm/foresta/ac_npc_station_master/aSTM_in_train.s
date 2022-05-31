lbl_8057FD60:
/* 8057FD60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8057FD64  7C 08 02 A6 */	mflr r0
/* 8057FD68  90 01 00 24 */	stw r0, 0x24(r1)
/* 8057FD6C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8057FD70  7C 9F 23 78 */	mr r31, r4
/* 8057FD74  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8057FD78  7C 7E 1B 78 */	mr r30, r3
/* 8057FD7C  4B FF FA 1D */	bl aSTM_look_player
/* 8057FD80  7F E3 FB 78 */	mr r3, r31
/* 8057FD84  4B E5 98 ED */	bl mPlib_get_player_actor_main_index
/* 8057FD88  2C 03 00 4C */	cmpwi r3, 0x4c
/* 8057FD8C  41 82 00 60 */	beq lbl_8057FDEC
/* 8057FD90  3C 60 80 65 */	lis r3, lit_716@ha /* 0x80649A48@ha */
/* 8057FD94  3C 80 80 65 */	lis r4, lit_726@ha /* 0x80649A54@ha */
/* 8057FD98  38 A3 9A 48 */	addi r5, r3, lit_716@l /* 0x80649A48@l */
/* 8057FD9C  3C 60 80 65 */	lis r3, lit_717@ha /* 0x80649A4C@ha */
/* 8057FDA0  C0 25 00 00 */	lfs f1, 0(r5)
/* 8057FDA4  38 A4 9A 54 */	addi r5, r4, lit_726@l /* 0x80649A54@l */
/* 8057FDA8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8057FDAC  38 83 9A 4C */	addi r4, r3, lit_717@l /* 0x80649A4C@l */
/* 8057FDB0  C0 45 00 00 */	lfs f2, 0(r5)
/* 8057FDB4  7F E3 FB 78 */	mr r3, r31
/* 8057FDB8  EC 01 00 2A */	fadds f0, f1, f0
/* 8057FDBC  C0 24 00 00 */	lfs f1, 0(r4)
/* 8057FDC0  38 81 00 08 */	addi r4, r1, 8
/* 8057FDC4  D0 01 00 08 */	stfs f0, 8(r1)
/* 8057FDC8  80 BE 09 98 */	lwz r5, 0x998(r30)
/* 8057FDCC  C0 05 00 2C */	lfs f0, 0x2c(r5)
/* 8057FDD0  EC 02 00 2A */	fadds f0, f2, f0
/* 8057FDD4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8057FDD8  C0 05 00 30 */	lfs f0, 0x30(r5)
/* 8057FDDC  EC 01 00 2A */	fadds f0, f1, f0
/* 8057FDE0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8057FDE4  4B E5 B0 71 */	bl mPlib_request_main_demo_geton_train_type1
/* 8057FDE8  48 00 00 14 */	b lbl_8057FDFC
lbl_8057FDEC:
/* 8057FDEC  7F C3 F3 78 */	mr r3, r30
/* 8057FDF0  7F E4 FB 78 */	mr r4, r31
/* 8057FDF4  38 A0 00 13 */	li r5, 0x13
/* 8057FDF8  48 00 05 AD */	bl aSTM_setup_think_proc
lbl_8057FDFC:
/* 8057FDFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057FE00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8057FE04  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8057FE08  7C 08 03 A6 */	mtlr r0
/* 8057FE0C  38 21 00 20 */	addi r1, r1, 0x20
/* 8057FE10  4E 80 00 20 */	blr 
