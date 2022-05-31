lbl_805C11A8:
/* 805C11A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C11AC  7C 08 02 A6 */	mflr r0
/* 805C11B0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805C11B4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805C11B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C11BC  3C 63 00 02 */	addis r3, r3, 2
/* 805C11C0  80 03 61 24 */	lwz r0, 0x6124(r3)
/* 805C11C4  80 63 61 20 */	lwz r3, 0x6120(r3)
/* 805C11C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 805C11CC  88 01 00 0D */	lbz r0, 0xd(r1)
/* 805C11D0  90 61 00 08 */	stw r3, 8(r1)
/* 805C11D4  28 00 00 06 */	cmplwi r0, 6
/* 805C11D8  40 82 00 14 */	bne lbl_805C11EC
/* 805C11DC  38 60 00 1D */	li r3, 0x1d
/* 805C11E0  38 80 00 00 */	li r4, 0
/* 805C11E4  4B DD CB E9 */	bl mEv_get_save_area
/* 805C11E8  48 00 00 10 */	b lbl_805C11F8
lbl_805C11EC:
/* 805C11EC  38 60 00 36 */	li r3, 0x36
/* 805C11F0  38 80 00 00 */	li r4, 0
/* 805C11F4  4B DD CB D9 */	bl mEv_get_save_area
lbl_805C11F8:
/* 805C11F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C11FC  7C 08 03 A6 */	mtlr r0
/* 805C1200  38 21 00 10 */	addi r1, r1, 0x10
/* 805C1204  4E 80 00 20 */	blr 
