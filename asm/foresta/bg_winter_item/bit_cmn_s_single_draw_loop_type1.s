lbl_804C2E20:
/* 804C2E20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C2E24  7C 08 02 A6 */	mflr r0
/* 804C2E28  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C2E2C  39 61 00 20 */	addi r11, r1, 0x20
/* 804C2E30  4B BD 80 99 */	bl func_8009AEC8
/* 804C2E34  88 08 00 44 */	lbz r0, 0x44(r8)
/* 804C2E38  7C 7A 1B 78 */	mr r26, r3
/* 804C2E3C  88 65 00 05 */	lbz r3, 5(r5)
/* 804C2E40  7C 9E 23 78 */	mr r30, r4
/* 804C2E44  7C 00 07 74 */	extsb r0, r0
/* 804C2E48  7C DB 33 78 */	mr r27, r6
/* 804C2E4C  7C 03 02 14 */	add r0, r3, r0
/* 804C2E50  7C FF 3B 78 */	mr r31, r7
/* 804C2E54  54 00 10 3A */	slwi r0, r0, 2
/* 804C2E58  7D 03 43 78 */	mr r3, r8
/* 804C2E5C  7F 89 00 2E */	lwzx r28, r9, r0
/* 804C2E60  4B F4 93 F9 */	bl Matrix_put
/* 804C2E64  83 BE 00 00 */	lwz r29, 0(r30)
/* 804C2E68  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804C2E6C  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804C2E70  7F 43 D3 78 */	mr r3, r26
/* 804C2E74  38 9D 00 08 */	addi r4, r29, 8
/* 804C2E78  90 9E 00 00 */	stw r4, 0(r30)
/* 804C2E7C  90 1D 00 00 */	stw r0, 0(r29)
/* 804C2E80  4B F4 A5 55 */	bl _Matrix_to_Mtx_new
/* 804C2E84  90 7D 00 04 */	stw r3, 4(r29)
/* 804C2E88  57 60 63 26 */	rlwinm r0, r27, 0xc, 0xc, 0x13
/* 804C2E8C  64 03 01 00 */	oris r3, r0, 0x100
/* 804C2E90  39 61 00 20 */	addi r11, r1, 0x20
/* 804C2E94  80 BE 00 00 */	lwz r5, 0(r30)
/* 804C2E98  57 60 0E 3C */	rlwinm r0, r27, 1, 0x18, 0x1e
/* 804C2E9C  7C 63 03 78 */	or r3, r3, r0
/* 804C2EA0  38 85 00 08 */	addi r4, r5, 8
/* 804C2EA4  3C 00 DE 00 */	lis r0, 0xde00
/* 804C2EA8  90 9E 00 00 */	stw r4, 0(r30)
/* 804C2EAC  90 65 00 00 */	stw r3, 0(r5)
/* 804C2EB0  93 E5 00 04 */	stw r31, 4(r5)
/* 804C2EB4  80 9E 00 00 */	lwz r4, 0(r30)
/* 804C2EB8  38 64 00 08 */	addi r3, r4, 8
/* 804C2EBC  90 7E 00 00 */	stw r3, 0(r30)
/* 804C2EC0  90 04 00 00 */	stw r0, 0(r4)
/* 804C2EC4  93 84 00 04 */	stw r28, 4(r4)
/* 804C2EC8  4B BD 80 4D */	bl func_8009AF14
/* 804C2ECC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C2ED0  7C 08 03 A6 */	mtlr r0
/* 804C2ED4  38 21 00 20 */	addi r1, r1, 0x20
/* 804C2ED8  4E 80 00 20 */	blr 
