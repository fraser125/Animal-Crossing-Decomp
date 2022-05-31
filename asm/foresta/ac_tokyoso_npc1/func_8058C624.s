lbl_8058C624:
/* 8058C624  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058C628  7C 08 02 A6 */	mflr r0
/* 8058C62C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058C630  39 61 00 20 */	addi r11, r1, 0x20
/* 8058C634  4B B0 E8 A1 */	bl func_8009AED4
/* 8058C638  7C 7D 1B 78 */	mr r29, r3
/* 8058C63C  7C 9E 23 78 */	mr r30, r4
/* 8058C640  7C BF 2B 78 */	mr r31, r5
/* 8058C644  38 60 00 0F */	li r3, 0xf
/* 8058C648  38 80 00 08 */	li r4, 8
/* 8058C64C  4B E1 17 81 */	bl mEv_get_save_area
/* 8058C650  3C 80 80 65 */	lis r4, data_80649BAC@ha /* 0x80649BAC@ha */
/* 8058C654  38 1F 00 0D */	addi r0, r31, 0xd
/* 8058C658  C0 04 9B AC */	lfs f0, data_80649BAC@l(r4)  /* 0x80649BAC@l */
/* 8058C65C  7C 7F 1B 78 */	mr r31, r3
/* 8058C660  7F A3 EB 78 */	mr r3, r29
/* 8058C664  7F C4 F3 78 */	mr r4, r30
/* 8058C668  D0 1D 00 74 */	stfs f0, 0x74(r29)
/* 8058C66C  54 05 06 3E */	clrlwi r5, r0, 0x18
/* 8058C670  48 00 0E AD */	bl aTKN1_setup_think_proc
/* 8058C674  88 1D 09 AD */	lbz r0, 0x9ad(r29)
/* 8058C678  38 80 20 00 */	li r4, 0x2000
/* 8058C67C  39 61 00 20 */	addi r11, r1, 0x20
/* 8058C680  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 8058C684  98 1D 09 AD */	stb r0, 0x9ad(r29)
/* 8058C688  A0 7D 00 06 */	lhz r3, 6(r29)
/* 8058C68C  A0 BF 00 02 */	lhz r5, 2(r31)
/* 8058C690  3C 63 FF FF */	addis r3, r3, 0xffff
/* 8058C694  38 03 2F D3 */	addi r0, r3, 0x2fd3
/* 8058C698  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8058C69C  7C 80 00 30 */	slw r0, r4, r0
/* 8058C6A0  7C A0 03 78 */	or r0, r5, r0
/* 8058C6A4  B0 1F 00 02 */	sth r0, 2(r31)
/* 8058C6A8  4B B0 E8 79 */	bl func_8009AF20
/* 8058C6AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058C6B0  7C 08 03 A6 */	mtlr r0
/* 8058C6B4  38 21 00 20 */	addi r1, r1, 0x20
/* 8058C6B8  4E 80 00 20 */	blr 
