lbl_804BB328:
/* 804BB328  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BB32C  7C 08 02 A6 */	mflr r0
/* 804BB330  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BB334  39 61 00 20 */	addi r11, r1, 0x20
/* 804BB338  4B BD FB 91 */	bl func_8009AEC8
/* 804BB33C  88 08 00 44 */	lbz r0, 0x44(r8)
/* 804BB340  7C 7A 1B 78 */	mr r26, r3
/* 804BB344  88 65 00 05 */	lbz r3, 5(r5)
/* 804BB348  7C 9E 23 78 */	mr r30, r4
/* 804BB34C  7C 00 07 74 */	extsb r0, r0
/* 804BB350  7C DB 33 78 */	mr r27, r6
/* 804BB354  7C 03 02 14 */	add r0, r3, r0
/* 804BB358  7C FF 3B 78 */	mr r31, r7
/* 804BB35C  54 00 10 3A */	slwi r0, r0, 2
/* 804BB360  7D 03 43 78 */	mr r3, r8
/* 804BB364  7F 89 00 2E */	lwzx r28, r9, r0
/* 804BB368  4B F5 0E F1 */	bl Matrix_put
/* 804BB36C  83 BE 00 00 */	lwz r29, 0(r30)
/* 804BB370  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804BB374  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804BB378  7F 43 D3 78 */	mr r3, r26
/* 804BB37C  38 9D 00 08 */	addi r4, r29, 8
/* 804BB380  90 9E 00 00 */	stw r4, 0(r30)
/* 804BB384  90 1D 00 00 */	stw r0, 0(r29)
/* 804BB388  4B F5 20 4D */	bl _Matrix_to_Mtx_new
/* 804BB38C  90 7D 00 04 */	stw r3, 4(r29)
/* 804BB390  57 60 63 26 */	rlwinm r0, r27, 0xc, 0xc, 0x13
/* 804BB394  64 03 01 00 */	oris r3, r0, 0x100
/* 804BB398  39 61 00 20 */	addi r11, r1, 0x20
/* 804BB39C  80 BE 00 00 */	lwz r5, 0(r30)
/* 804BB3A0  57 60 0E 3C */	rlwinm r0, r27, 1, 0x18, 0x1e
/* 804BB3A4  7C 63 03 78 */	or r3, r3, r0
/* 804BB3A8  38 85 00 08 */	addi r4, r5, 8
/* 804BB3AC  3C 00 DE 00 */	lis r0, 0xde00
/* 804BB3B0  90 9E 00 00 */	stw r4, 0(r30)
/* 804BB3B4  90 65 00 00 */	stw r3, 0(r5)
/* 804BB3B8  93 E5 00 04 */	stw r31, 4(r5)
/* 804BB3BC  80 9E 00 00 */	lwz r4, 0(r30)
/* 804BB3C0  38 64 00 08 */	addi r3, r4, 8
/* 804BB3C4  90 7E 00 00 */	stw r3, 0(r30)
/* 804BB3C8  90 04 00 00 */	stw r0, 0(r4)
/* 804BB3CC  93 84 00 04 */	stw r28, 4(r4)
/* 804BB3D0  4B BD FB 45 */	bl func_8009AF14
/* 804BB3D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BB3D8  7C 08 03 A6 */	mtlr r0
/* 804BB3DC  38 21 00 20 */	addi r1, r1, 0x20
/* 804BB3E0  4E 80 00 20 */	blr 
