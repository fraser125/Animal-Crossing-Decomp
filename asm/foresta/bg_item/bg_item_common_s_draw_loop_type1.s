lbl_804BDA84:
/* 804BDA84  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804BDA88  7C 08 02 A6 */	mflr r0
/* 804BDA8C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804BDA90  39 61 00 30 */	addi r11, r1, 0x30
/* 804BDA94  4B BD D4 31 */	bl func_8009AEC4
/* 804BDA98  7D 1D 43 78 */	mr r29, r8
/* 804BDA9C  54 C8 63 26 */	rlwinm r8, r6, 0xc, 0xc, 0x13
/* 804BDAA0  88 1D 00 47 */	lbz r0, 0x47(r29)
/* 804BDAA4  65 08 01 00 */	oris r8, r8, 0x100
/* 804BDAA8  88 A5 00 05 */	lbz r5, 5(r5)
/* 804BDAAC  54 C6 0E 3C */	rlwinm r6, r6, 1, 0x18, 0x1e
/* 804BDAB0  7C 00 07 74 */	extsb r0, r0
/* 804BDAB4  7C 7A 1B 78 */	mr r26, r3
/* 804BDAB8  7C 05 02 14 */	add r0, r5, r0
/* 804BDABC  7C 9B 23 78 */	mr r27, r4
/* 804BDAC0  54 00 10 3A */	slwi r0, r0, 2
/* 804BDAC4  7C FC 3B 78 */	mr r28, r7
/* 804BDAC8  7F C9 00 2E */	lwzx r30, r9, r0
/* 804BDACC  7D 1F 33 78 */	or r31, r8, r6
/* 804BDAD0  48 00 00 74 */	b lbl_804BDB44
lbl_804BDAD4:
/* 804BDAD4  88 1D 00 46 */	lbz r0, 0x46(r29)
/* 804BDAD8  28 00 00 00 */	cmplwi r0, 0
/* 804BDADC  40 82 00 5C */	bne lbl_804BDB38
/* 804BDAE0  7F A3 EB 78 */	mr r3, r29
/* 804BDAE4  4B F4 E7 75 */	bl Matrix_put
/* 804BDAE8  83 3B 00 00 */	lwz r25, 0(r27)
/* 804BDAEC  3C 60 DA 38 */	lis r3, 0xDA38 /* 0xDA380003@ha */
/* 804BDAF0  38 03 00 03 */	addi r0, r3, 0x0003 /* 0xDA380003@l */
/* 804BDAF4  7F 43 D3 78 */	mr r3, r26
/* 804BDAF8  38 99 00 08 */	addi r4, r25, 8
/* 804BDAFC  90 9B 00 00 */	stw r4, 0(r27)
/* 804BDB00  90 19 00 00 */	stw r0, 0(r25)
/* 804BDB04  4B F4 F8 D1 */	bl _Matrix_to_Mtx_new
/* 804BDB08  90 79 00 04 */	stw r3, 4(r25)
/* 804BDB0C  3C 00 DE 00 */	lis r0, 0xde00
/* 804BDB10  80 9B 00 00 */	lwz r4, 0(r27)
/* 804BDB14  38 64 00 08 */	addi r3, r4, 8
/* 804BDB18  90 7B 00 00 */	stw r3, 0(r27)
/* 804BDB1C  93 E4 00 00 */	stw r31, 0(r4)
/* 804BDB20  93 84 00 04 */	stw r28, 4(r4)
/* 804BDB24  80 9B 00 00 */	lwz r4, 0(r27)
/* 804BDB28  38 64 00 08 */	addi r3, r4, 8
/* 804BDB2C  90 7B 00 00 */	stw r3, 0(r27)
/* 804BDB30  90 04 00 00 */	stw r0, 0(r4)
/* 804BDB34  93 C4 00 04 */	stw r30, 4(r4)
lbl_804BDB38:
/* 804BDB38  A8 1D 00 44 */	lha r0, 0x44(r29)
/* 804BDB3C  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804BDB40  7F BD 02 14 */	add r29, r29, r0
lbl_804BDB44:
/* 804BDB44  A8 1D 00 44 */	lha r0, 0x44(r29)
/* 804BDB48  2C 00 01 00 */	cmpwi r0, 0x100
/* 804BDB4C  40 82 FF 88 */	bne lbl_804BDAD4
/* 804BDB50  39 61 00 30 */	addi r11, r1, 0x30
/* 804BDB54  4B BD D3 BD */	bl func_8009AF10
/* 804BDB58  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804BDB5C  7C 08 03 A6 */	mtlr r0
/* 804BDB60  38 21 00 30 */	addi r1, r1, 0x30
/* 804BDB64  4E 80 00 20 */	blr 
