lbl_8042E488:
/* 8042E488  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8042E48C  7C 08 02 A6 */	mflr r0
/* 8042E490  90 01 00 34 */	stw r0, 0x34(r1)
/* 8042E494  39 61 00 30 */	addi r11, r1, 0x30
/* 8042E498  4B C6 CA 2D */	bl func_8009AEC4
/* 8042E49C  80 04 00 A0 */	lwz r0, 0xa0(r4)
/* 8042E4A0  7C 7A 1B 78 */	mr r26, r3
/* 8042E4A4  7C 9B 23 78 */	mr r27, r4
/* 8042E4A8  54 05 55 6A */	rlwinm r5, r0, 0xa, 0x15, 0x15
/* 8042E4AC  3B DA 00 28 */	addi r30, r26, 0x28
/* 8042E4B0  3B A5 01 68 */	addi r29, r5, 0x168
/* 8042E4B4  7F BA EA 14 */	add r29, r26, r29
/* 8042E4B8  4B FF FF 7D */	bl aMSN_MakeBeltGFX
/* 8042E4BC  7C 7F 1B 78 */	mr r31, r3
/* 8042E4C0  80 7B 00 00 */	lwz r3, 0(r27)
/* 8042E4C4  4B FB 6C 45 */	bl _texture_z_light_fog_prim
/* 8042E4C8  28 1F 00 00 */	cmplwi r31, 0
/* 8042E4CC  41 82 00 A4 */	beq lbl_8042E570
/* 8042E4D0  83 9B 00 00 */	lwz r28, 0(r27)
/* 8042E4D4  38 60 00 00 */	li r3, 0
/* 8042E4D8  C0 3A 00 08 */	lfs f1, 8(r26)
/* 8042E4DC  C0 5A 00 0C */	lfs f2, 0xc(r26)
/* 8042E4E0  C0 7A 00 10 */	lfs f3, 0x10(r26)
/* 8042E4E4  4B FD DE 1D */	bl Matrix_translate
/* 8042E4E8  38 60 00 00 */	li r3, 0
/* 8042E4EC  38 80 00 01 */	li r4, 1
/* 8042E4F0  4B FD E1 6D */	bl Matrix_RotateY
/* 8042E4F4  3C 80 80 64 */	lis r4, lit_521@ha /* 0x80644164@ha */
/* 8042E4F8  38 60 00 01 */	li r3, 1
/* 8042E4FC  C0 24 41 64 */	lfs f1, lit_521@l(r4)  /* 0x80644164@l */
/* 8042E500  FC 40 08 90 */	fmr f2, f1
/* 8042E504  FC 60 08 90 */	fmr f3, f1
/* 8042E508  4B FD DE E5 */	bl Matrix_scale
/* 8042E50C  83 3C 02 D0 */	lwz r25, 0x2d0(r28)
/* 8042E510  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 8042E514  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 8042E518  38 79 00 08 */	addi r3, r25, 8
/* 8042E51C  90 7C 02 D0 */	stw r3, 0x2d0(r28)
/* 8042E520  90 19 00 00 */	stw r0, 0(r25)
/* 8042E524  80 7B 00 00 */	lwz r3, 0(r27)
/* 8042E528  4B FD EE AD */	bl _Matrix_to_Mtx_new
/* 8042E52C  90 79 00 04 */	stw r3, 4(r25)
/* 8042E530  3C 80 80 43 */	lis r4, aMSN_DrawMisinBefore@ha /* 0x8042E338@ha */
/* 8042E534  3C A0 DB 06 */	lis r5, 0xDB06 /* 0xDB060024@ha */
/* 8042E538  3C 60 80 43 */	lis r3, aMSN_DrawMisinAfter@ha /* 0x8042E350@ha */
/* 8042E53C  81 3C 02 D0 */	lwz r9, 0x2d0(r28)
/* 8042E540  38 C4 E3 38 */	addi r6, r4, aMSN_DrawMisinBefore@l /* 0x8042E338@l */
/* 8042E544  38 05 00 24 */	addi r0, r5, 0x0024 /* 0xDB060024@l */
/* 8042E548  38 E3 E3 50 */	addi r7, r3, aMSN_DrawMisinAfter@l /* 0x8042E350@l */
/* 8042E54C  38 89 00 08 */	addi r4, r9, 8
/* 8042E550  7F 63 DB 78 */	mr r3, r27
/* 8042E554  90 9C 02 D0 */	stw r4, 0x2d0(r28)
/* 8042E558  7F C4 F3 78 */	mr r4, r30
/* 8042E55C  7F A5 EB 78 */	mr r5, r29
/* 8042E560  7F 48 D3 78 */	mr r8, r26
/* 8042E564  90 09 00 00 */	stw r0, 0(r9)
/* 8042E568  93 E9 00 04 */	stw r31, 4(r9)
/* 8042E56C  4B F4 31 CD */	bl cKF_Si3_draw_R_SV
lbl_8042E570:
/* 8042E570  39 61 00 30 */	addi r11, r1, 0x30
/* 8042E574  4B C6 C9 9D */	bl func_8009AF10
/* 8042E578  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8042E57C  7C 08 03 A6 */	mtlr r0
/* 8042E580  38 21 00 30 */	addi r1, r1, 0x30
/* 8042E584  4E 80 00 20 */	blr 
