lbl_805182AC:
/* 805182AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805182B0  7C 08 02 A6 */	mflr r0
/* 805182B4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805182B8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805182BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805182C0  3C 63 00 02 */	addis r3, r3, 2
/* 805182C4  80 03 61 24 */	lwz r0, 0x6124(r3)
/* 805182C8  80 63 61 20 */	lwz r3, 0x6120(r3)
/* 805182CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 805182D0  88 01 00 0D */	lbz r0, 0xd(r1)
/* 805182D4  90 61 00 08 */	stw r3, 8(r1)
/* 805182D8  28 00 00 06 */	cmplwi r0, 6
/* 805182DC  40 82 00 14 */	bne lbl_805182F0
/* 805182E0  38 60 00 1D */	li r3, 0x1d
/* 805182E4  38 80 00 00 */	li r4, 0
/* 805182E8  4B E8 5A E5 */	bl mEv_get_save_area
/* 805182EC  48 00 00 10 */	b lbl_805182FC
lbl_805182F0:
/* 805182F0  38 60 00 36 */	li r3, 0x36
/* 805182F4  38 80 00 00 */	li r4, 0
/* 805182F8  4B E8 5A D5 */	bl mEv_get_save_area
lbl_805182FC:
/* 805182FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80518300  7C 08 03 A6 */	mtlr r0
/* 80518304  38 21 00 10 */	addi r1, r1, 0x10
/* 80518308  4E 80 00 20 */	blr 
