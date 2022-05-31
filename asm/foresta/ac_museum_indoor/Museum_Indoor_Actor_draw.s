lbl_8045A22C:
/* 8045A22C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8045A230  7C 08 02 A6 */	mflr r0
/* 8045A234  90 01 00 34 */	stw r0, 0x34(r1)
/* 8045A238  39 61 00 30 */	addi r11, r1, 0x30
/* 8045A23C  4B C4 0C 91 */	bl func_8009AECC
/* 8045A240  80 03 01 78 */	lwz r0, 0x178(r3)
/* 8045A244  7C 9C 23 78 */	mr r28, r4
/* 8045A248  2C 00 FF FF */	cmpwi r0, -1
/* 8045A24C  41 82 00 F4 */	beq lbl_8045A340
/* 8045A250  C0 03 01 74 */	lfs f0, 0x174(r3)
/* 8045A254  3C 60 80 68 */	lis r3, aMI_museum_indoor_cull_info@ha /* 0x8068632C@ha */
/* 8045A258  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8045A25C  7F 86 E3 78 */	mr r6, r28
/* 8045A260  FC 00 00 1E */	fctiwz f0, f0
/* 8045A264  38 83 63 2C */	addi r4, r3, aMI_museum_indoor_cull_info@l /* 0x8068632C@l */
/* 8045A268  38 61 00 0A */	addi r3, r1, 0xa
/* 8045A26C  7C A4 02 14 */	add r5, r4, r0
/* 8045A270  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 8045A274  38 81 00 09 */	addi r4, r1, 9
/* 8045A278  83 E5 00 08 */	lwz r31, 8(r5)
/* 8045A27C  38 A1 00 08 */	addi r5, r1, 8
/* 8045A280  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045A284  54 1E 06 3E */	clrlwi r30, r0, 0x18
/* 8045A288  4B F5 E3 31 */	bl mEnv_GetRoomPrimColor
/* 8045A28C  3C 60 80 64 */	lis r3, lit_446@ha /* 0x80644588@ha */
/* 8045A290  83 BC 00 00 */	lwz r29, 0(r28)
/* 8045A294  38 83 45 88 */	addi r4, r3, lit_446@l /* 0x80644588@l */
/* 8045A298  38 60 00 00 */	li r3, 0
/* 8045A29C  C0 24 00 00 */	lfs f1, 0(r4)
/* 8045A2A0  FC 40 08 90 */	fmr f2, f1
/* 8045A2A4  FC 60 08 90 */	fmr f3, f1
/* 8045A2A8  4B FB 20 59 */	bl Matrix_translate
/* 8045A2AC  38 60 00 00 */	li r3, 0
/* 8045A2B0  38 80 00 01 */	li r4, 1
/* 8045A2B4  4B FB 23 A9 */	bl Matrix_RotateY
/* 8045A2B8  3C 80 80 64 */	lis r4, lit_501@ha /* 0x80644590@ha */
/* 8045A2BC  38 60 00 01 */	li r3, 1
/* 8045A2C0  C0 24 45 90 */	lfs f1, lit_501@l(r4)  /* 0x80644590@l */
/* 8045A2C4  FC 40 08 90 */	fmr f2, f1
/* 8045A2C8  FC 60 08 90 */	fmr f3, f1
/* 8045A2CC  4B FB 21 21 */	bl Matrix_scale
/* 8045A2D0  83 7D 02 E0 */	lwz r27, 0x2e0(r29)
/* 8045A2D4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8045A2D8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8045A2DC  38 7B 00 08 */	addi r3, r27, 8
/* 8045A2E0  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 8045A2E4  90 1B 00 00 */	stw r0, 0(r27)
/* 8045A2E8  80 7C 00 00 */	lwz r3, 0(r28)
/* 8045A2EC  4B FB 30 E9 */	bl _Matrix_to_Mtx_new
/* 8045A2F0  90 7B 00 04 */	stw r3, 4(r27)
/* 8045A2F4  3C 60 FA 00 */	lis r3, 0xfa00
/* 8045A2F8  3C 00 DE 00 */	lis r0, 0xde00
/* 8045A2FC  80 DD 02 E0 */	lwz r6, 0x2e0(r29)
/* 8045A300  38 86 00 08 */	addi r4, r6, 8
/* 8045A304  90 9D 02 E0 */	stw r4, 0x2e0(r29)
/* 8045A308  90 66 00 00 */	stw r3, 0(r6)
/* 8045A30C  88 61 00 09 */	lbz r3, 9(r1)
/* 8045A310  88 81 00 0A */	lbz r4, 0xa(r1)
/* 8045A314  54 63 82 1E */	rlwinm r3, r3, 0x10, 8, 0xf
/* 8045A318  88 A1 00 08 */	lbz r5, 8(r1)
/* 8045A31C  50 83 C0 0E */	rlwimi r3, r4, 0x18, 0, 7
/* 8045A320  50 A3 44 2E */	rlwimi r3, r5, 8, 0x10, 0x17
/* 8045A324  7F C3 1B 78 */	or r3, r30, r3
/* 8045A328  90 66 00 04 */	stw r3, 4(r6)
/* 8045A32C  80 9D 02 E0 */	lwz r4, 0x2e0(r29)
/* 8045A330  38 64 00 08 */	addi r3, r4, 8
/* 8045A334  90 7D 02 E0 */	stw r3, 0x2e0(r29)
/* 8045A338  90 04 00 00 */	stw r0, 0(r4)
/* 8045A33C  93 E4 00 04 */	stw r31, 4(r4)
lbl_8045A340:
/* 8045A340  39 61 00 30 */	addi r11, r1, 0x30
/* 8045A344  4B C4 0B D5 */	bl func_8009AF18
/* 8045A348  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8045A34C  7C 08 03 A6 */	mtlr r0
/* 8045A350  38 21 00 30 */	addi r1, r1, 0x30
/* 8045A354  4E 80 00 20 */	blr 
