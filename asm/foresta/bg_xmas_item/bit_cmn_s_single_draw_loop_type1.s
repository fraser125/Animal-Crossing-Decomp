lbl_804CA238:
/* 804CA238  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804CA23C  7C 08 02 A6 */	mflr r0
/* 804CA240  90 01 00 24 */	stw r0, 0x24(r1)
/* 804CA244  39 61 00 20 */	addi r11, r1, 0x20
/* 804CA248  4B BD 0C 81 */	bl func_8009AEC8
/* 804CA24C  88 08 00 44 */	lbz r0, 0x44(r8)
/* 804CA250  7C 7A 1B 78 */	mr r26, r3
/* 804CA254  88 65 00 05 */	lbz r3, 5(r5)
/* 804CA258  7C 9E 23 78 */	mr r30, r4
/* 804CA25C  7C 00 07 74 */	extsb r0, r0
/* 804CA260  7C DB 33 78 */	mr r27, r6
/* 804CA264  7C 03 02 14 */	add r0, r3, r0
/* 804CA268  7C FF 3B 78 */	mr r31, r7
/* 804CA26C  54 00 10 3A */	slwi r0, r0, 2
/* 804CA270  7D 03 43 78 */	mr r3, r8
/* 804CA274  7F 89 00 2E */	lwzx r28, r9, r0
/* 804CA278  4B F4 1F E1 */	bl Matrix_put
/* 804CA27C  83 BE 00 00 */	lwz r29, 0(r30)
/* 804CA280  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804CA284  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804CA288  7F 43 D3 78 */	mr r3, r26
/* 804CA28C  38 9D 00 08 */	addi r4, r29, 8
/* 804CA290  90 9E 00 00 */	stw r4, 0(r30)
/* 804CA294  90 1D 00 00 */	stw r0, 0(r29)
/* 804CA298  4B F4 31 3D */	bl _Matrix_to_Mtx_new
/* 804CA29C  90 7D 00 04 */	stw r3, 4(r29)
/* 804CA2A0  57 60 63 26 */	rlwinm r0, r27, 0xc, 0xc, 0x13
/* 804CA2A4  64 03 01 00 */	oris r3, r0, 0x100
/* 804CA2A8  39 61 00 20 */	addi r11, r1, 0x20
/* 804CA2AC  80 BE 00 00 */	lwz r5, 0(r30)
/* 804CA2B0  57 60 0E 3C */	rlwinm r0, r27, 1, 0x18, 0x1e
/* 804CA2B4  7C 63 03 78 */	or r3, r3, r0
/* 804CA2B8  38 85 00 08 */	addi r4, r5, 8
/* 804CA2BC  3C 00 DE 00 */	lis r0, 0xde00
/* 804CA2C0  90 9E 00 00 */	stw r4, 0(r30)
/* 804CA2C4  90 65 00 00 */	stw r3, 0(r5)
/* 804CA2C8  93 E5 00 04 */	stw r31, 4(r5)
/* 804CA2CC  80 9E 00 00 */	lwz r4, 0(r30)
/* 804CA2D0  38 64 00 08 */	addi r3, r4, 8
/* 804CA2D4  90 7E 00 00 */	stw r3, 0(r30)
/* 804CA2D8  90 04 00 00 */	stw r0, 0(r4)
/* 804CA2DC  93 84 00 04 */	stw r28, 4(r4)
/* 804CA2E0  4B BD 0C 35 */	bl func_8009AF14
/* 804CA2E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CA2E8  7C 08 03 A6 */	mtlr r0
/* 804CA2EC  38 21 00 20 */	addi r1, r1, 0x20
/* 804CA2F0  4E 80 00 20 */	blr 
