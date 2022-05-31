lbl_8042E350:
/* 8042E350  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042E354  7C 08 02 A6 */	mflr r0
/* 8042E358  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042E35C  39 61 00 20 */	addi r11, r1, 0x20
/* 8042E360  4B C6 CB 75 */	bl func_8009AED4
/* 8042E364  2C 05 00 03 */	cmpwi r5, 3
/* 8042E368  7C 7D 1B 78 */	mr r29, r3
/* 8042E36C  40 82 00 AC */	bne lbl_8042E418
/* 8042E370  3C 60 80 64 */	lis r3, lit_552@ha /* 0x8064416C@ha */
/* 8042E374  C0 08 00 1C */	lfs f0, 0x1c(r8)
/* 8042E378  38 83 41 6C */	addi r4, r3, lit_552@l /* 0x8064416C@l */
/* 8042E37C  3C A0 80 64 */	lis r5, lit_551@ha /* 0x80644168@ha */
/* 8042E380  C0 24 00 00 */	lfs f1, 0(r4)
/* 8042E384  3C 60 80 64 */	lis r3, lit_553@ha /* 0x80644170@ha */
/* 8042E388  38 83 41 70 */	addi r4, r3, lit_553@l /* 0x80644170@l */
/* 8042E38C  83 DD 00 00 */	lwz r30, 0(r29)
/* 8042E390  EC 41 00 2A */	fadds f2, f1, f0
/* 8042E394  C0 25 41 68 */	lfs f1, lit_551@l(r5)  /* 0x80644168@l */
/* 8042E398  C0 64 00 00 */	lfs f3, 0(r4)
/* 8042E39C  38 60 00 00 */	li r3, 0
/* 8042E3A0  4B FD DF 61 */	bl Matrix_translate
/* 8042E3A4  38 60 00 00 */	li r3, 0
/* 8042E3A8  38 80 00 01 */	li r4, 1
/* 8042E3AC  4B FD E2 B1 */	bl Matrix_RotateY
/* 8042E3B0  38 60 C0 00 */	li r3, -16384
/* 8042E3B4  38 80 00 01 */	li r4, 1
/* 8042E3B8  4B FD E4 39 */	bl Matrix_RotateZ
/* 8042E3BC  3C 80 80 64 */	lis r4, lit_521@ha /* 0x80644164@ha */
/* 8042E3C0  38 60 00 01 */	li r3, 1
/* 8042E3C4  C0 24 41 64 */	lfs f1, lit_521@l(r4)  /* 0x80644164@l */
/* 8042E3C8  FC 40 08 90 */	fmr f2, f1
/* 8042E3CC  FC 60 08 90 */	fmr f3, f1
/* 8042E3D0  4B FD E0 1D */	bl Matrix_scale
/* 8042E3D4  83 FE 02 D0 */	lwz r31, 0x2d0(r30)
/* 8042E3D8  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8042E3DC  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8042E3E0  38 7F 00 08 */	addi r3, r31, 8
/* 8042E3E4  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8042E3E8  90 1F 00 00 */	stw r0, 0(r31)
/* 8042E3EC  80 7D 00 00 */	lwz r3, 0(r29)
/* 8042E3F0  4B FD EF E5 */	bl _Matrix_to_Mtx_new
/* 8042E3F4  90 7F 00 04 */	stw r3, 4(r31)
/* 8042E3F8  3C 60 80 8F */	lis r3, obj_misin_hari_model@ha /* 0x808F6BC8@ha */
/* 8042E3FC  3C 80 DE 00 */	lis r4, 0xde00
/* 8042E400  80 BE 02 D0 */	lwz r5, 0x2d0(r30)
/* 8042E404  38 03 6B C8 */	addi r0, r3, obj_misin_hari_model@l /* 0x808F6BC8@l */
/* 8042E408  38 65 00 08 */	addi r3, r5, 8
/* 8042E40C  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 8042E410  90 85 00 00 */	stw r4, 0(r5)
/* 8042E414  90 05 00 04 */	stw r0, 4(r5)
lbl_8042E418:
/* 8042E418  38 60 00 01 */	li r3, 1
/* 8042E41C  39 61 00 20 */	addi r11, r1, 0x20
/* 8042E420  4B C6 CB 01 */	bl func_8009AF20
/* 8042E424  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042E428  7C 08 03 A6 */	mtlr r0
/* 8042E42C  38 21 00 20 */	addi r1, r1, 0x20
/* 8042E430  4E 80 00 20 */	blr 
