lbl_8052CD08:
/* 8052CD08  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8052CD0C  7C 08 02 A6 */	mflr r0
/* 8052CD10  90 01 00 44 */	stw r0, 0x44(r1)
/* 8052CD14  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8052CD18  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8052CD1C  39 61 00 30 */	addi r11, r1, 0x30
/* 8052CD20  4B B6 E1 AD */	bl func_8009AECC
/* 8052CD24  3C A0 80 65 */	lis r5, data_80649274@ha /* 0x80649274@ha */
/* 8052CD28  C0 03 01 B4 */	lfs f0, 0x1b4(r3)
/* 8052CD2C  C0 25 92 74 */	lfs f1, data_80649274@l(r5)  /* 0x80649274@l */
/* 8052CD30  3B A3 01 A8 */	addi r29, r3, 0x1a8
/* 8052CD34  3B C0 00 00 */	li r30, 0
/* 8052CD38  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8052CD3C  41 82 00 5C */	beq lbl_8052CD98
/* 8052CD40  3C 60 80 65 */	lis r3, lit_818@ha /* 0x80649284@ha */
/* 8052CD44  83 84 00 04 */	lwz r28, 4(r4)
/* 8052CD48  83 64 00 00 */	lwz r27, 0(r4)
/* 8052CD4C  3F E0 43 30 */	lis r31, 0x4330
/* 8052CD50  CB E3 92 84 */	lfd f31, lit_818@l(r3)  /* 0x80649284@l */
/* 8052CD54  48 00 00 3C */	b lbl_8052CD90
lbl_8052CD58:
/* 8052CD58  80 1C 00 00 */	lwz r0, 0(r28)
/* 8052CD5C  7F A3 EB 78 */	mr r3, r29
/* 8052CD60  93 E1 00 08 */	stw r31, 8(r1)
/* 8052CD64  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8052CD68  90 01 00 0C */	stw r0, 0xc(r1)
/* 8052CD6C  C8 01 00 08 */	lfd f0, 8(r1)
/* 8052CD70  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8052CD74  4B E4 37 15 */	bl cKF_FrameControl_passCheck_now
/* 8052CD78  2C 03 00 01 */	cmpwi r3, 1
/* 8052CD7C  40 82 00 0C */	bne lbl_8052CD88
/* 8052CD80  3B C0 00 01 */	li r30, 1
/* 8052CD84  48 00 00 14 */	b lbl_8052CD98
lbl_8052CD88:
/* 8052CD88  3B 9C 00 04 */	addi r28, r28, 4
/* 8052CD8C  3B 7B FF FF */	addi r27, r27, -1
lbl_8052CD90:
/* 8052CD90  2C 1B 00 00 */	cmpwi r27, 0
/* 8052CD94  40 82 FF C4 */	bne lbl_8052CD58
lbl_8052CD98:
/* 8052CD98  7F C3 F3 78 */	mr r3, r30
/* 8052CD9C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8052CDA0  39 61 00 30 */	addi r11, r1, 0x30
/* 8052CDA4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8052CDA8  4B B6 E1 71 */	bl func_8009AF18
/* 8052CDAC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052CDB0  7C 08 03 A6 */	mtlr r0
/* 8052CDB4  38 21 00 40 */	addi r1, r1, 0x40
/* 8052CDB8  4E 80 00 20 */	blr 
