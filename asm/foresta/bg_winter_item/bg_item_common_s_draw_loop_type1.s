lbl_804C557C:
/* 804C557C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C5580  7C 08 02 A6 */	mflr r0
/* 804C5584  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C5588  39 61 00 30 */	addi r11, r1, 0x30
/* 804C558C  4B BD 59 39 */	bl func_8009AEC4
/* 804C5590  7D 1D 43 78 */	mr r29, r8
/* 804C5594  54 C8 63 26 */	rlwinm r8, r6, 0xc, 0xc, 0x13
/* 804C5598  88 1D 00 47 */	lbz r0, 0x47(r29)
/* 804C559C  65 08 01 00 */	oris r8, r8, 0x100
/* 804C55A0  88 A5 00 05 */	lbz r5, 5(r5)
/* 804C55A4  54 C6 0E 3C */	rlwinm r6, r6, 1, 0x18, 0x1e
/* 804C55A8  7C 00 07 74 */	extsb r0, r0
/* 804C55AC  7C 7A 1B 78 */	mr r26, r3
/* 804C55B0  7C 05 02 14 */	add r0, r5, r0
/* 804C55B4  7C 9B 23 78 */	mr r27, r4
/* 804C55B8  54 00 10 3A */	slwi r0, r0, 2
/* 804C55BC  7C FC 3B 78 */	mr r28, r7
/* 804C55C0  7F C9 00 2E */	lwzx r30, r9, r0
/* 804C55C4  7D 1F 33 78 */	or r31, r8, r6
/* 804C55C8  48 00 00 74 */	b lbl_804C563C
lbl_804C55CC:
/* 804C55CC  88 1D 00 46 */	lbz r0, 0x46(r29)
/* 804C55D0  28 00 00 00 */	cmplwi r0, 0
/* 804C55D4  40 82 00 5C */	bne lbl_804C5630
/* 804C55D8  7F A3 EB 78 */	mr r3, r29
/* 804C55DC  4B F4 6C 7D */	bl Matrix_put
/* 804C55E0  83 3B 00 00 */	lwz r25, 0(r27)
/* 804C55E4  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804C55E8  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804C55EC  7F 43 D3 78 */	mr r3, r26
/* 804C55F0  38 99 00 08 */	addi r4, r25, 8
/* 804C55F4  90 9B 00 00 */	stw r4, 0(r27)
/* 804C55F8  90 19 00 00 */	stw r0, 0(r25)
/* 804C55FC  4B F4 7D D9 */	bl _Matrix_to_Mtx_new
/* 804C5600  90 79 00 04 */	stw r3, 4(r25)
/* 804C5604  3C 00 DE 00 */	lis r0, 0xde00
/* 804C5608  80 9B 00 00 */	lwz r4, 0(r27)
/* 804C560C  38 64 00 08 */	addi r3, r4, 8
/* 804C5610  90 7B 00 00 */	stw r3, 0(r27)
/* 804C5614  93 E4 00 00 */	stw r31, 0(r4)
/* 804C5618  93 84 00 04 */	stw r28, 4(r4)
/* 804C561C  80 9B 00 00 */	lwz r4, 0(r27)
/* 804C5620  38 64 00 08 */	addi r3, r4, 8
/* 804C5624  90 7B 00 00 */	stw r3, 0(r27)
/* 804C5628  90 04 00 00 */	stw r0, 0(r4)
/* 804C562C  93 C4 00 04 */	stw r30, 4(r4)
lbl_804C5630:
/* 804C5630  A8 1D 00 44 */	lha r0, 0x44(r29)
/* 804C5634  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804C5638  7F BD 02 14 */	add r29, r29, r0
lbl_804C563C:
/* 804C563C  A8 1D 00 44 */	lha r0, 0x44(r29)
/* 804C5640  2C 00 01 00 */	cmpwi r0, 0x100
/* 804C5644  40 82 FF 88 */	bne lbl_804C55CC
/* 804C5648  39 61 00 30 */	addi r11, r1, 0x30
/* 804C564C  4B BD 58 C5 */	bl func_8009AF10
/* 804C5650  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C5654  7C 08 03 A6 */	mtlr r0
/* 804C5658  38 21 00 30 */	addi r1, r1, 0x30
/* 804C565C  4E 80 00 20 */	blr 
