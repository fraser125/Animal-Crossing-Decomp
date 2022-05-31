lbl_805E39C0:
/* 805E39C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805E39C4  7C 08 02 A6 */	mflr r0
/* 805E39C8  38 C0 00 01 */	li r6, 1
/* 805E39CC  38 E0 00 01 */	li r7, 1
/* 805E39D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805E39D4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805E39D8  93 C1 00 08 */	stw r30, 8(r1)
/* 805E39DC  7C BE 2B 78 */	mr r30, r5
/* 805E39E0  81 03 00 2C */	lwz r8, 0x2c(r3)
/* 805E39E4  83 E8 09 88 */	lwz r31, 0x988(r8)
/* 805E39E8  4B FF FD D9 */	bl mIV_set_base_frame_dl
/* 805E39EC  80 7E 02 D0 */	lwz r3, 0x2d0(r30)
/* 805E39F0  3C C0 DE 00 */	lis r6, 0xde00
/* 805E39F4  3C A0 80 A9 */	lis r5, inv_mwin_item_frame_mode@ha /* 0x80A8C150@ha */
/* 805E39F8  3C 80 80 6D */	lis r4, item_frame_disp@ha /* 0x806CD5DC@ha */
/* 805E39FC  90 C3 00 00 */	stw r6, 0(r3)
/* 805E3A00  38 A5 C1 50 */	addi r5, r5, inv_mwin_item_frame_mode@l /* 0x80A8C150@l */
/* 805E3A04  38 84 D5 DC */	addi r4, r4, item_frame_disp@l /* 0x806CD5DC@l */
/* 805E3A08  38 00 00 0F */	li r0, 0xf
/* 805E3A0C  90 A3 00 04 */	stw r5, 4(r3)
/* 805E3A10  7C 87 23 78 */	mr r7, r4
/* 805E3A14  39 00 00 00 */	li r8, 0
/* 805E3A18  3C A0 E7 00 */	lis r5, 0xe700
/* 805E3A1C  7C 09 03 A6 */	mtctr r0
/* 805E3A20  38 63 00 08 */	addi r3, r3, 8
lbl_805E3A24:
/* 805E3A24  90 A3 00 00 */	stw r5, 0(r3)
/* 805E3A28  38 80 00 00 */	li r4, 0
/* 805E3A2C  38 00 00 01 */	li r0, 1
/* 805E3A30  90 83 00 04 */	stw r4, 4(r3)
/* 805E3A34  7C 00 40 30 */	slw r0, r0, r8
/* 805E3A38  A0 9F 03 BC */	lhz r4, 0x3bc(r31)
/* 805E3A3C  7C 80 00 39 */	and. r0, r4, r0
/* 805E3A40  41 82 00 20 */	beq lbl_805E3A60
/* 805E3A44  3C 00 FB 00 */	lis r0, 0xfb00
/* 805E3A48  3C 80 64 65 */	lis r4, 0x6465 /* 0x6464FFFF@ha */
/* 805E3A4C  90 03 00 08 */	stw r0, 8(r3)
/* 805E3A50  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x6464FFFF@l */
/* 805E3A54  90 03 00 0C */	stw r0, 0xc(r3)
/* 805E3A58  38 63 00 10 */	addi r3, r3, 0x10
/* 805E3A5C  48 00 00 1C */	b lbl_805E3A78
lbl_805E3A60:
/* 805E3A60  3C 00 FB 00 */	lis r0, 0xfb00
/* 805E3A64  3C 80 78 8D */	lis r4, 0x788D /* 0x788CFFFF@ha */
/* 805E3A68  90 03 00 08 */	stw r0, 8(r3)
/* 805E3A6C  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x788CFFFF@l */
/* 805E3A70  90 03 00 0C */	stw r0, 0xc(r3)
/* 805E3A74  38 63 00 10 */	addi r3, r3, 0x10
lbl_805E3A78:
/* 805E3A78  90 C3 00 00 */	stw r6, 0(r3)
/* 805E3A7C  39 08 00 01 */	addi r8, r8, 1
/* 805E3A80  80 07 00 00 */	lwz r0, 0(r7)
/* 805E3A84  38 E7 00 04 */	addi r7, r7, 4
/* 805E3A88  90 03 00 04 */	stw r0, 4(r3)
/* 805E3A8C  38 63 00 08 */	addi r3, r3, 8
/* 805E3A90  42 00 FF 94 */	bdnz lbl_805E3A24
/* 805E3A94  3C 80 80 6D */	lis r4, letter_frame_disp@ha /* 0x806CD618@ha */
/* 805E3A98  38 00 00 0A */	li r0, 0xa
/* 805E3A9C  38 E4 D6 18 */	addi r7, r4, letter_frame_disp@l /* 0x806CD618@l */
/* 805E3AA0  39 00 00 00 */	li r8, 0
/* 805E3AA4  3C C0 E7 00 */	lis r6, 0xe700
/* 805E3AA8  3C 80 DE 00 */	lis r4, 0xde00
/* 805E3AAC  7C 09 03 A6 */	mtctr r0
lbl_805E3AB0:
/* 805E3AB0  90 C3 00 00 */	stw r6, 0(r3)
/* 805E3AB4  38 A0 00 00 */	li r5, 0
/* 805E3AB8  38 00 00 01 */	li r0, 1
/* 805E3ABC  90 A3 00 04 */	stw r5, 4(r3)
/* 805E3AC0  7C 00 40 30 */	slw r0, r0, r8
/* 805E3AC4  A0 BF 03 BE */	lhz r5, 0x3be(r31)
/* 805E3AC8  7C A0 00 39 */	and. r0, r5, r0
/* 805E3ACC  41 82 00 20 */	beq lbl_805E3AEC
/* 805E3AD0  3C 00 FB 00 */	lis r0, 0xfb00
/* 805E3AD4  3C A0 FF 3C */	lis r5, 0xFF3C /* 0xFF3C3CFF@ha */
/* 805E3AD8  90 03 00 08 */	stw r0, 8(r3)
/* 805E3ADC  38 05 3C FF */	addi r0, r5, 0x3CFF /* 0xFF3C3CFF@l */
/* 805E3AE0  90 03 00 0C */	stw r0, 0xc(r3)
/* 805E3AE4  38 63 00 10 */	addi r3, r3, 0x10
/* 805E3AE8  48 00 00 1C */	b lbl_805E3B04
lbl_805E3AEC:
/* 805E3AEC  3C 00 FB 00 */	lis r0, 0xfb00
/* 805E3AF0  3C A0 FF 5A */	lis r5, 0xFF5A /* 0xFF5A5AFF@ha */
/* 805E3AF4  90 03 00 08 */	stw r0, 8(r3)
/* 805E3AF8  38 05 5A FF */	addi r0, r5, 0x5AFF /* 0xFF5A5AFF@l */
/* 805E3AFC  90 03 00 0C */	stw r0, 0xc(r3)
/* 805E3B00  38 63 00 10 */	addi r3, r3, 0x10
lbl_805E3B04:
/* 805E3B04  90 83 00 00 */	stw r4, 0(r3)
/* 805E3B08  39 08 00 01 */	addi r8, r8, 1
/* 805E3B0C  80 07 00 00 */	lwz r0, 0(r7)
/* 805E3B10  38 E7 00 04 */	addi r7, r7, 4
/* 805E3B14  90 03 00 04 */	stw r0, 4(r3)
/* 805E3B18  38 63 00 08 */	addi r3, r3, 8
/* 805E3B1C  42 00 FF 94 */	bdnz lbl_805E3AB0
/* 805E3B20  3C A0 DE 00 */	lis r5, 0xde00
/* 805E3B24  3C 80 80 A9 */	lis r4, inv_mwin_kuni_model@ha /* 0x80A8B6F0@ha */
/* 805E3B28  90 A3 00 00 */	stw r5, 0(r3)
/* 805E3B2C  38 04 B6 F0 */	addi r0, r4, inv_mwin_kuni_model@l /* 0x80A8B6F0@l */
/* 805E3B30  3C 80 80 A9 */	lis r4, inv_mwin_kuni2_model@ha /* 0x80A8B748@ha */
/* 805E3B34  90 03 00 04 */	stw r0, 4(r3)
/* 805E3B38  38 63 00 08 */	addi r3, r3, 8
/* 805E3B3C  7C 66 1B 78 */	mr r6, r3
/* 805E3B40  38 04 B7 48 */	addi r0, r4, inv_mwin_kuni2_model@l /* 0x80A8B748@l */
/* 805E3B44  90 A3 00 00 */	stw r5, 0(r3)
/* 805E3B48  38 63 00 08 */	addi r3, r3, 8
/* 805E3B4C  90 06 00 04 */	stw r0, 4(r6)
/* 805E3B50  90 7E 02 D0 */	stw r3, 0x2d0(r30)
/* 805E3B54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805E3B58  83 C1 00 08 */	lwz r30, 8(r1)
/* 805E3B5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805E3B60  7C 08 03 A6 */	mtlr r0
/* 805E3B64  38 21 00 10 */	addi r1, r1, 0x10
/* 805E3B68  4E 80 00 20 */	blr 
