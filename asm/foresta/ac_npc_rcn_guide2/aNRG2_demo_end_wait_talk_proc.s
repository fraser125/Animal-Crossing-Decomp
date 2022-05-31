lbl_80570BDC:
/* 80570BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80570BE0  7C 08 02 A6 */	mflr r0
/* 80570BE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80570BE8  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 80570BEC  28 00 00 0A */	cmplwi r0, 0xa
/* 80570BF0  40 82 00 28 */	bne lbl_80570C18
/* 80570BF4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80570BF8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80570BFC  3C 84 00 02 */	addis r4, r4, 2
/* 80570C00  80 84 60 94 */	lwz r4, 0x6094(r4)
/* 80570C04  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80570C08  28 00 00 00 */	cmplwi r0, 0
/* 80570C0C  41 82 00 0C */	beq lbl_80570C18
/* 80570C10  38 80 00 07 */	li r4, 7
/* 80570C14  48 00 06 A1 */	bl aNRG2_change_talk_proc
lbl_80570C18:
/* 80570C18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80570C1C  7C 08 03 A6 */	mtlr r0
/* 80570C20  38 21 00 10 */	addi r1, r1, 0x10
/* 80570C24  4E 80 00 20 */	blr 
