lbl_8042EB40:
/* 8042EB40  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8042EB44  7C 08 02 A6 */	mflr r0
/* 8042EB48  90 01 00 84 */	stw r0, 0x84(r1)
/* 8042EB4C  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 8042EB50  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 8042EB54  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 8042EB58  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 8042EB5C  DB A1 00 50 */	stfd f29, 0x50(r1)
/* 8042EB60  F3 A1 00 58 */	psq_st f29, 88(r1), 0, 0 /* qr0 */
/* 8042EB64  39 61 00 50 */	addi r11, r1, 0x50
/* 8042EB68  4B C6 C3 41 */	bl func_8009AEA8
/* 8042EB6C  3C C0 80 64 */	lis r6, lit_510@ha /* 0x806441A0@ha */
/* 8042EB70  3C A0 80 64 */	lis r5, lit_513@ha /* 0x806441AC@ha */
/* 8042EB74  39 26 41 A0 */	addi r9, r6, lit_510@l /* 0x806441A0@l */
/* 8042EB78  3D 40 80 90 */	lis r10, obj_mural_model@ha /* 0x80904540@ha */
/* 8042EB7C  39 05 41 AC */	addi r8, r5, lit_513@l /* 0x806441AC@l */
/* 8042EB80  3C C0 DB 06 */	lis r6, 0xDB06 /* 0xDB060020@ha */
/* 8042EB84  3C E0 80 64 */	lis r7, lit_511@ha /* 0x806441A4@ha */
/* 8042EB88  3C A0 DA 38 */	lis r5, 0xDA38 /* 0xDA380003@ha */
/* 8042EB8C  C3 C9 00 00 */	lfs f30, 0(r9)
/* 8042EB90  7C 76 1B 78 */	mr r22, r3
/* 8042EB94  CB E8 00 00 */	lfd f31, 0(r8)
/* 8042EB98  7C 97 23 78 */	mr r23, r4
/* 8042EB9C  3B 6A 45 40 */	addi r27, r10, obj_mural_model@l /* 0x80904540@l */
/* 8042EBA0  3B A7 41 A4 */	addi r29, r7, lit_511@l /* 0x806441A4@l */
/* 8042EBA4  3B C6 00 20 */	addi r30, r6, 0x0020 /* 0xDB060020@l */
/* 8042EBA8  3B E6 00 24 */	addi r31, r6, 0x24
/* 8042EBAC  3A 65 00 03 */	addi r19, r5, 0x0003 /* 0xDA380003@l */
/* 8042EBB0  3A A0 00 00 */	li r21, 0
/* 8042EBB4  3B 40 00 00 */	li r26, 0
/* 8042EBB8  3F 80 43 30 */	lis r28, 0x4330
/* 8042EBBC  3E 80 DE 00 */	lis r20, 0xde00
lbl_8042EBC0:
/* 8042EBC0  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 8042EBC4  93 81 00 08 */	stw r28, 8(r1)
/* 8042EBC8  3B 20 00 00 */	li r25, 0
/* 8042EBCC  90 01 00 0C */	stw r0, 0xc(r1)
/* 8042EBD0  C8 01 00 08 */	lfd f0, 8(r1)
/* 8042EBD4  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8042EBD8  EF BE 00 32 */	fmuls f29, f30, f0
lbl_8042EBDC:
/* 8042EBDC  6F 20 80 00 */	xoris r0, r25, 0x8000
/* 8042EBE0  C0 16 00 2C */	lfs f0, 0x2c(r22)
/* 8042EBE4  90 01 00 0C */	stw r0, 0xc(r1)
/* 8042EBE8  38 60 00 00 */	li r3, 0
/* 8042EBEC  C0 36 00 28 */	lfs f1, 0x28(r22)
/* 8042EBF0  EC 40 E8 28 */	fsubs f2, f0, f29
/* 8042EBF4  93 81 00 08 */	stw r28, 8(r1)
/* 8042EBF8  83 17 00 00 */	lwz r24, 0(r23)
/* 8042EBFC  C8 01 00 08 */	lfd f0, 8(r1)
/* 8042EC00  C0 76 00 30 */	lfs f3, 0x30(r22)
/* 8042EC04  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8042EC08  EC 1E 00 32 */	fmuls f0, f30, f0
/* 8042EC0C  EC 21 00 2A */	fadds f1, f1, f0
/* 8042EC10  4B FD D6 F1 */	bl Matrix_translate
/* 8042EC14  C0 3D 00 00 */	lfs f1, 0(r29)
/* 8042EC18  38 60 00 01 */	li r3, 1
/* 8042EC1C  FC 40 08 90 */	fmr f2, f1
/* 8042EC20  FC 60 08 90 */	fmr f3, f1
/* 8042EC24  4B FD D7 C9 */	bl Matrix_scale
/* 8042EC28  80 78 02 D0 */	lwz r3, 0x2d0(r24)
/* 8042EC2C  7C 96 AA 14 */	add r4, r22, r21
/* 8042EC30  38 03 00 08 */	addi r0, r3, 8
/* 8042EC34  90 18 02 D0 */	stw r0, 0x2d0(r24)
/* 8042EC38  93 C3 00 00 */	stw r30, 0(r3)
/* 8042EC3C  80 04 01 78 */	lwz r0, 0x178(r4)
/* 8042EC40  90 03 00 04 */	stw r0, 4(r3)
/* 8042EC44  80 78 02 D0 */	lwz r3, 0x2d0(r24)
/* 8042EC48  38 03 00 08 */	addi r0, r3, 8
/* 8042EC4C  90 18 02 D0 */	stw r0, 0x2d0(r24)
/* 8042EC50  93 E3 00 00 */	stw r31, 0(r3)
/* 8042EC54  80 04 01 7C */	lwz r0, 0x17c(r4)
/* 8042EC58  90 03 00 04 */	stw r0, 4(r3)
/* 8042EC5C  82 58 02 D0 */	lwz r18, 0x2d0(r24)
/* 8042EC60  38 12 00 08 */	addi r0, r18, 8
/* 8042EC64  90 18 02 D0 */	stw r0, 0x2d0(r24)
/* 8042EC68  92 72 00 00 */	stw r19, 0(r18)
/* 8042EC6C  80 77 00 00 */	lwz r3, 0(r23)
/* 8042EC70  4B FD E7 65 */	bl _Matrix_to_Mtx_new
/* 8042EC74  90 72 00 04 */	stw r3, 4(r18)
/* 8042EC78  3B 39 00 01 */	addi r25, r25, 1
/* 8042EC7C  2C 19 00 04 */	cmpwi r25, 4
/* 8042EC80  3A B5 00 0C */	addi r21, r21, 0xc
/* 8042EC84  80 78 02 D0 */	lwz r3, 0x2d0(r24)
/* 8042EC88  38 03 00 08 */	addi r0, r3, 8
/* 8042EC8C  90 18 02 D0 */	stw r0, 0x2d0(r24)
/* 8042EC90  92 83 00 00 */	stw r20, 0(r3)
/* 8042EC94  93 63 00 04 */	stw r27, 4(r3)
/* 8042EC98  41 80 FF 44 */	blt lbl_8042EBDC
/* 8042EC9C  3B 5A 00 01 */	addi r26, r26, 1
/* 8042ECA0  2C 1A 00 04 */	cmpwi r26, 4
/* 8042ECA4  41 80 FF 1C */	blt lbl_8042EBC0
/* 8042ECA8  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8042ECAC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8042ECB0  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 8042ECB4  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 8042ECB8  E3 A1 00 58 */	psq_l f29, 88(r1), 0, 0 /* qr0 */
/* 8042ECBC  39 61 00 50 */	addi r11, r1, 0x50
/* 8042ECC0  CB A1 00 50 */	lfd f29, 0x50(r1)
/* 8042ECC4  4B C6 C2 31 */	bl func_8009AEF4
/* 8042ECC8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8042ECCC  7C 08 03 A6 */	mtlr r0
/* 8042ECD0  38 21 00 80 */	addi r1, r1, 0x80
/* 8042ECD4  4E 80 00 20 */	blr 
