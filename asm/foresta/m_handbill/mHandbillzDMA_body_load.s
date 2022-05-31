lbl_803B297C:
/* 803B297C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B2980  7C 08 02 A6 */	mflr r0
/* 803B2984  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B2988  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B298C  93 C1 00 08 */	stw r30, 8(r1)
/* 803B2990  7C 7E 1B 78 */	mr r30, r3
/* 803B2994  4B FF FF 6D */	bl mHandbillzDMA_body_addr_set
/* 803B2998  2C 03 00 00 */	cmpwi r3, 0
/* 803B299C  41 82 00 7C */	beq lbl_803B2A18
/* 803B29A0  80 7E 00 08 */	lwz r3, 8(r30)
/* 803B29A4  38 A0 00 20 */	li r5, 0x20
/* 803B29A8  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 803B29AC  48 00 80 9D */	bl mem_clear
/* 803B29B0  80 BE 00 14 */	lwz r5, 0x14(r30)
/* 803B29B4  28 05 00 00 */	cmplwi r5, 0
/* 803B29B8  41 82 00 58 */	beq lbl_803B2A10
/* 803B29BC  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 803B29C0  80 9E 00 08 */	lwz r4, 8(r30)
/* 803B29C4  54 1F 06 FE */	clrlwi r31, r0, 0x1b
/* 803B29C8  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 803B29CC  38 1F 00 1F */	addi r0, r31, 0x1f
/* 803B29D0  7C 05 02 14 */	add r0, r5, r0
/* 803B29D4  54 05 00 34 */	rlwinm r5, r0, 0, 0, 0x1a
/* 803B29D8  4B C5 42 9D */	bl _JW_GetResourceAram
/* 803B29DC  28 1F 00 00 */	cmplwi r31, 0
/* 803B29E0  41 82 00 30 */	beq lbl_803B2A10
/* 803B29E4  80 9E 00 08 */	lwz r4, 8(r30)
/* 803B29E8  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 803B29EC  7C 64 FA 14 */	add r3, r4, r31
/* 803B29F0  7C 09 03 A6 */	mtctr r0
/* 803B29F4  2C 00 00 00 */	cmpwi r0, 0
/* 803B29F8  40 81 00 18 */	ble lbl_803B2A10
lbl_803B29FC:
/* 803B29FC  88 03 00 00 */	lbz r0, 0(r3)
/* 803B2A00  38 63 00 01 */	addi r3, r3, 1
/* 803B2A04  98 04 00 00 */	stb r0, 0(r4)
/* 803B2A08  38 84 00 01 */	addi r4, r4, 1
/* 803B2A0C  42 00 FF F0 */	bdnz lbl_803B29FC
lbl_803B2A10:
/* 803B2A10  38 60 00 01 */	li r3, 1
/* 803B2A14  48 00 00 08 */	b lbl_803B2A1C
lbl_803B2A18:
/* 803B2A18  38 60 00 00 */	li r3, 0
lbl_803B2A1C:
/* 803B2A1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B2A20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B2A24  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B2A28  7C 08 03 A6 */	mtlr r0
/* 803B2A2C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B2A30  4E 80 00 20 */	blr 
