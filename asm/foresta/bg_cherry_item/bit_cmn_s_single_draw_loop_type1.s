lbl_804B3FA4:
/* 804B3FA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804B3FA8  7C 08 02 A6 */	mflr r0
/* 804B3FAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B3FB0  39 61 00 20 */	addi r11, r1, 0x20
/* 804B3FB4  4B BE 6F 15 */	bl func_8009AEC8
/* 804B3FB8  88 08 00 44 */	lbz r0, 0x44(r8)
/* 804B3FBC  7C 7A 1B 78 */	mr r26, r3
/* 804B3FC0  88 65 00 05 */	lbz r3, 5(r5)
/* 804B3FC4  7C 9E 23 78 */	mr r30, r4
/* 804B3FC8  7C 00 07 74 */	extsb r0, r0
/* 804B3FCC  7C DB 33 78 */	mr r27, r6
/* 804B3FD0  7C 03 02 14 */	add r0, r3, r0
/* 804B3FD4  7C FF 3B 78 */	mr r31, r7
/* 804B3FD8  54 00 10 3A */	slwi r0, r0, 2
/* 804B3FDC  7D 03 43 78 */	mr r3, r8
/* 804B3FE0  7F 89 00 2E */	lwzx r28, r9, r0
/* 804B3FE4  4B F5 82 75 */	bl Matrix_put
/* 804B3FE8  83 BE 00 00 */	lwz r29, 0(r30)
/* 804B3FEC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804B3FF0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804B3FF4  7F 43 D3 78 */	mr r3, r26
/* 804B3FF8  38 9D 00 08 */	addi r4, r29, 8
/* 804B3FFC  90 9E 00 00 */	stw r4, 0(r30)
/* 804B4000  90 1D 00 00 */	stw r0, 0(r29)
/* 804B4004  4B F5 93 D1 */	bl _Matrix_to_Mtx_new
/* 804B4008  90 7D 00 04 */	stw r3, 4(r29)
/* 804B400C  57 60 63 26 */	rlwinm r0, r27, 0xc, 0xc, 0x13
/* 804B4010  64 03 01 00 */	oris r3, r0, 0x100
/* 804B4014  39 61 00 20 */	addi r11, r1, 0x20
/* 804B4018  80 BE 00 00 */	lwz r5, 0(r30)
/* 804B401C  57 60 0E 3C */	rlwinm r0, r27, 1, 0x18, 0x1e
/* 804B4020  7C 63 03 78 */	or r3, r3, r0
/* 804B4024  38 85 00 08 */	addi r4, r5, 8
/* 804B4028  3C 00 DE 00 */	lis r0, 0xde00
/* 804B402C  90 9E 00 00 */	stw r4, 0(r30)
/* 804B4030  90 65 00 00 */	stw r3, 0(r5)
/* 804B4034  93 E5 00 04 */	stw r31, 4(r5)
/* 804B4038  80 9E 00 00 */	lwz r4, 0(r30)
/* 804B403C  38 64 00 08 */	addi r3, r4, 8
/* 804B4040  90 7E 00 00 */	stw r3, 0(r30)
/* 804B4044  90 04 00 00 */	stw r0, 0(r4)
/* 804B4048  93 84 00 04 */	stw r28, 4(r4)
/* 804B404C  4B BE 6E C9 */	bl func_8009AF14
/* 804B4050  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B4054  7C 08 03 A6 */	mtlr r0
/* 804B4058  38 21 00 20 */	addi r1, r1, 0x20
/* 804B405C  4E 80 00 20 */	blr 
