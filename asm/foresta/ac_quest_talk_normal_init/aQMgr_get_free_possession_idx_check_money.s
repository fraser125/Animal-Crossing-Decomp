lbl_8049187C:
/* 8049187C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80491880  7C 08 02 A6 */	mflr r0
/* 80491884  90 01 00 14 */	stw r0, 0x14(r1)
/* 80491888  4B FF FF C1 */	bl aQMgr_get_free_possession_idx
/* 8049188C  2C 03 FF FF */	cmpwi r3, -1
/* 80491890  41 82 00 24 */	beq lbl_804918B4
/* 80491894  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80491898  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8049189C  3C 84 00 02 */	addis r4, r4, 2
/* 804918A0  80 84 61 3C */	lwz r4, 0x613c(r4)
/* 804918A4  80 04 00 8C */	lwz r0, 0x8c(r4)
/* 804918A8  28 00 0B B8 */	cmplwi r0, 0xbb8
/* 804918AC  40 80 00 08 */	bge lbl_804918B4
/* 804918B0  38 60 FF FF */	li r3, -1
lbl_804918B4:
/* 804918B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804918B8  7C 08 03 A6 */	mtlr r0
/* 804918BC  38 21 00 10 */	addi r1, r1, 0x10
/* 804918C0  4E 80 00 20 */	blr 
