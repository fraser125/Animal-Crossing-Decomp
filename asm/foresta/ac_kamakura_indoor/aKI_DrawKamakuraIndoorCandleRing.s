lbl_8042B65C:
/* 8042B65C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8042B660  7C 08 02 A6 */	mflr r0
/* 8042B664  90 01 00 64 */	stw r0, 0x64(r1)
/* 8042B668  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 8042B66C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 8042B670  39 61 00 50 */	addi r11, r1, 0x50
/* 8042B674  4B C6 F8 31 */	bl func_8009AEA4
/* 8042B678  7C 95 23 78 */	mr r21, r4
/* 8042B67C  7C 74 1B 78 */	mr r20, r3
/* 8042B680  80 64 00 00 */	lwz r3, 0(r4)
/* 8042B684  4B FB 9A D5 */	bl _texture_z_light_fog_prim_xlu
/* 8042B688  7E A3 AB 78 */	mr r3, r21
/* 8042B68C  4B F8 D0 8D */	bl Global_kankyo_set_room_prim
/* 8042B690  3C 60 80 64 */	lis r3, lit_464@ha /* 0x80644074@ha */
/* 8042B694  3C 80 DA 38 */	lis r4, 0xDA38 /* 0xDA380003@ha */
/* 8042B698  38 C3 40 74 */	addi r6, r3, lit_464@l /* 0x80644074@l */
/* 8042B69C  3C E0 80 ED */	lis r7, rom_kamakura_ring_modelT@ha /* 0x80ECBDB0@ha */
/* 8042B6A0  3C A0 80 68 */	lis r5, candle_ring_pos@ha /* 0x80684220@ha */
/* 8042B6A4  3C 60 FA 00 */	lis r3, 0xFA00 /* 0xFA0000FF@ha */
/* 8042B6A8  C3 E6 00 00 */	lfs f31, 0(r6)
/* 8042B6AC  3B 27 BD B0 */	addi r25, r7, rom_kamakura_ring_modelT@l /* 0x80ECBDB0@l */
/* 8042B6B0  3B 85 42 20 */	addi r28, r5, candle_ring_pos@l /* 0x80684220@l */
/* 8042B6B4  3B A4 00 03 */	addi r29, r4, 0x0003 /* 0xDA380003@l */
/* 8042B6B8  3B C4 00 01 */	addi r30, r4, 1
/* 8042B6BC  3B E3 00 FF */	addi r31, r3, 0x00FF /* 0xFA0000FF@l */
/* 8042B6C0  3A E0 00 00 */	li r23, 0
/* 8042B6C4  3A 60 00 00 */	li r19, 0
/* 8042B6C8  3A 40 00 00 */	li r18, 0
/* 8042B6CC  3F 60 E7 00 */	lis r27, 0xe700
/* 8042B6D0  3E 20 DE 00 */	lis r17, 0xde00
lbl_8042B6D4:
/* 8042B6D4  80 95 00 00 */	lwz r4, 0(r21)
/* 8042B6D8  7F 14 92 14 */	add r24, r20, r18
/* 8042B6DC  38 00 00 00 */	li r0, 0
/* 8042B6E0  7C DC 9A 14 */	add r6, r28, r19
/* 8042B6E4  80 64 02 D4 */	lwz r3, 0x2d4(r4)
/* 8042B6E8  3B 43 FF C0 */	addi r26, r3, -64
/* 8042B6EC  93 44 02 D4 */	stw r26, 0x2d4(r4)
/* 8042B6F0  7F 43 D3 78 */	mr r3, r26
/* 8042B6F4  82 D5 00 00 */	lwz r22, 0(r21)
/* 8042B6F8  C0 18 01 78 */	lfs f0, 0x178(r24)
/* 8042B6FC  80 B6 02 E0 */	lwz r5, 0x2e0(r22)
/* 8042B700  EC 3F 00 32 */	fmuls f1, f31, f0
/* 8042B704  38 85 00 08 */	addi r4, r5, 8
/* 8042B708  90 96 02 E0 */	stw r4, 0x2e0(r22)
/* 8042B70C  FC 40 08 90 */	fmr f2, f1
/* 8042B710  93 65 00 00 */	stw r27, 0(r5)
/* 8042B714  FC 60 08 90 */	fmr f3, f1
/* 8042B718  90 05 00 04 */	stw r0, 4(r5)
/* 8042B71C  C0 86 00 00 */	lfs f4, 0(r6)
/* 8042B720  C0 A6 00 04 */	lfs f5, 4(r6)
/* 8042B724  C0 C6 00 08 */	lfs f6, 8(r6)
/* 8042B728  4B FE 2B BD */	bl suMtxMakeTS
/* 8042B72C  80 76 02 E0 */	lwz r3, 0x2e0(r22)
/* 8042B730  3A F7 00 01 */	addi r23, r23, 1
/* 8042B734  2C 17 00 02 */	cmpwi r23, 2
/* 8042B738  3A 73 00 0C */	addi r19, r19, 0xc
/* 8042B73C  38 03 00 08 */	addi r0, r3, 8
/* 8042B740  3A 52 00 08 */	addi r18, r18, 8
/* 8042B744  90 16 02 E0 */	stw r0, 0x2e0(r22)
/* 8042B748  93 A3 00 00 */	stw r29, 0(r3)
/* 8042B74C  93 43 00 04 */	stw r26, 4(r3)
/* 8042B750  80 76 02 E0 */	lwz r3, 0x2e0(r22)
/* 8042B754  38 03 00 08 */	addi r0, r3, 8
/* 8042B758  90 16 02 E0 */	stw r0, 0x2e0(r22)
/* 8042B75C  93 C3 00 00 */	stw r30, 0(r3)
/* 8042B760  80 15 20 8C */	lwz r0, 0x208c(r21)
/* 8042B764  90 03 00 04 */	stw r0, 4(r3)
/* 8042B768  80 D6 02 E0 */	lwz r6, 0x2e0(r22)
/* 8042B76C  38 06 00 08 */	addi r0, r6, 8
/* 8042B770  90 16 02 E0 */	stw r0, 0x2e0(r22)
/* 8042B774  93 E6 00 00 */	stw r31, 0(r6)
/* 8042B778  88 18 01 75 */	lbz r0, 0x175(r24)
/* 8042B77C  88 78 01 74 */	lbz r3, 0x174(r24)
/* 8042B780  54 00 82 1E */	rlwinm r0, r0, 0x10, 8, 0xf
/* 8042B784  88 98 01 76 */	lbz r4, 0x176(r24)
/* 8042B788  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 8042B78C  88 B8 01 77 */	lbz r5, 0x177(r24)
/* 8042B790  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 8042B794  50 A0 06 3E */	rlwimi r0, r5, 0, 0x18, 0x1f
/* 8042B798  90 06 00 04 */	stw r0, 4(r6)
/* 8042B79C  80 76 02 E0 */	lwz r3, 0x2e0(r22)
/* 8042B7A0  38 03 00 08 */	addi r0, r3, 8
/* 8042B7A4  90 16 02 E0 */	stw r0, 0x2e0(r22)
/* 8042B7A8  92 23 00 00 */	stw r17, 0(r3)
/* 8042B7AC  93 23 00 04 */	stw r25, 4(r3)
/* 8042B7B0  41 80 FF 24 */	blt lbl_8042B6D4
/* 8042B7B4  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 8042B7B8  39 61 00 50 */	addi r11, r1, 0x50
/* 8042B7BC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 8042B7C0  4B C6 F7 31 */	bl func_8009AEF0
/* 8042B7C4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8042B7C8  7C 08 03 A6 */	mtlr r0
/* 8042B7CC  38 21 00 60 */	addi r1, r1, 0x60
/* 8042B7D0  4E 80 00 20 */	blr 
