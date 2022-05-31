lbl_804CC994:
/* 804CC994  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804CC998  7C 08 02 A6 */	mflr r0
/* 804CC99C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804CC9A0  39 61 00 30 */	addi r11, r1, 0x30
/* 804CC9A4  4B BC E5 21 */	bl func_8009AEC4
/* 804CC9A8  7D 1D 43 78 */	mr r29, r8
/* 804CC9AC  54 C8 63 26 */	rlwinm r8, r6, 0xc, 0xc, 0x13
/* 804CC9B0  88 1D 00 47 */	lbz r0, 0x47(r29)
/* 804CC9B4  65 08 01 00 */	oris r8, r8, 0x100
/* 804CC9B8  88 A5 00 05 */	lbz r5, 5(r5)
/* 804CC9BC  54 C6 0E 3C */	rlwinm r6, r6, 1, 0x18, 0x1e
/* 804CC9C0  7C 00 07 74 */	extsb r0, r0
/* 804CC9C4  7C 7A 1B 78 */	mr r26, r3
/* 804CC9C8  7C 05 02 14 */	add r0, r5, r0
/* 804CC9CC  7C 9B 23 78 */	mr r27, r4
/* 804CC9D0  54 00 10 3A */	slwi r0, r0, 2
/* 804CC9D4  7C FC 3B 78 */	mr r28, r7
/* 804CC9D8  7F C9 00 2E */	lwzx r30, r9, r0
/* 804CC9DC  7D 1F 33 78 */	or r31, r8, r6
/* 804CC9E0  48 00 00 74 */	b lbl_804CCA54
lbl_804CC9E4:
/* 804CC9E4  88 1D 00 46 */	lbz r0, 0x46(r29)
/* 804CC9E8  28 00 00 00 */	cmplwi r0, 0
/* 804CC9EC  40 82 00 5C */	bne lbl_804CCA48
/* 804CC9F0  7F A3 EB 78 */	mr r3, r29
/* 804CC9F4  4B F3 F8 65 */	bl Matrix_put
/* 804CC9F8  83 3B 00 00 */	lwz r25, 0(r27)
/* 804CC9FC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804CCA00  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804CCA04  7F 43 D3 78 */	mr r3, r26
/* 804CCA08  38 99 00 08 */	addi r4, r25, 8
/* 804CCA0C  90 9B 00 00 */	stw r4, 0(r27)
/* 804CCA10  90 19 00 00 */	stw r0, 0(r25)
/* 804CCA14  4B F4 09 C1 */	bl _Matrix_to_Mtx_new
/* 804CCA18  90 79 00 04 */	stw r3, 4(r25)
/* 804CCA1C  3C 00 DE 00 */	lis r0, 0xde00
/* 804CCA20  80 9B 00 00 */	lwz r4, 0(r27)
/* 804CCA24  38 64 00 08 */	addi r3, r4, 8
/* 804CCA28  90 7B 00 00 */	stw r3, 0(r27)
/* 804CCA2C  93 E4 00 00 */	stw r31, 0(r4)
/* 804CCA30  93 84 00 04 */	stw r28, 4(r4)
/* 804CCA34  80 9B 00 00 */	lwz r4, 0(r27)
/* 804CCA38  38 64 00 08 */	addi r3, r4, 8
/* 804CCA3C  90 7B 00 00 */	stw r3, 0(r27)
/* 804CCA40  90 04 00 00 */	stw r0, 0(r4)
/* 804CCA44  93 C4 00 04 */	stw r30, 4(r4)
lbl_804CCA48:
/* 804CCA48  A8 1D 00 44 */	lha r0, 0x44(r29)
/* 804CCA4C  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804CCA50  7F BD 02 14 */	add r29, r29, r0
lbl_804CCA54:
/* 804CCA54  A8 1D 00 44 */	lha r0, 0x44(r29)
/* 804CCA58  2C 00 01 00 */	cmpwi r0, 0x100
/* 804CCA5C  40 82 FF 88 */	bne lbl_804CC9E4
/* 804CCA60  39 61 00 30 */	addi r11, r1, 0x30
/* 804CCA64  4B BC E4 AD */	bl func_8009AF10
/* 804CCA68  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804CCA6C  7C 08 03 A6 */	mtlr r0
/* 804CCA70  38 21 00 30 */	addi r1, r1, 0x30
/* 804CCA74  4E 80 00 20 */	blr 
