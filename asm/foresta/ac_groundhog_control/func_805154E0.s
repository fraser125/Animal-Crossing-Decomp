lbl_805154E0:
/* 805154E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805154E4  7C 08 02 A6 */	mflr r0
/* 805154E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805154EC  39 61 00 20 */	addi r11, r1, 0x20
/* 805154F0  4B B8 59 E5 */	bl func_8009AED4
/* 805154F4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805154F8  3B A0 00 00 */	li r29, 0
/* 805154FC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80515500  7C 7E 1B 78 */	mr r30, r3
/* 80515504  3C 84 00 02 */	addis r4, r4, 2
/* 80515508  80 04 61 1C */	lwz r0, 0x611c(r4)
/* 8051550C  2C 00 70 80 */	cmpwi r0, 0x7080
/* 80515510  41 80 00 08 */	blt lbl_80515518
/* 80515514  3B A0 00 08 */	li r29, 8
lbl_80515518:
/* 80515518  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8051551C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80515520  3F E3 00 02 */	addis r31, r3, 2
/* 80515524  80 1F 61 00 */	lwz r0, 0x6100(r31)
/* 80515528  28 00 00 00 */	cmplwi r0, 0
/* 8051552C  40 82 00 18 */	bne lbl_80515544
/* 80515530  38 1E 01 84 */	addi r0, r30, 0x184
/* 80515534  90 1F 61 00 */	stw r0, 0x6100(r31)
/* 80515538  48 00 00 AD */	bl aGHC_get_now_term
/* 8051553C  80 9F 61 00 */	lwz r4, 0x6100(r31)
/* 80515540  90 64 00 00 */	stw r3, 0(r4)
lbl_80515544:
/* 80515544  38 60 00 07 */	li r3, 7
/* 80515548  38 80 00 00 */	li r4, 0
/* 8051554C  4B E8 8B 91 */	bl mEv_get_common_area
/* 80515550  28 03 00 00 */	cmplwi r3, 0
/* 80515554  40 82 00 14 */	bne lbl_80515568
/* 80515558  38 60 00 07 */	li r3, 7
/* 8051555C  38 80 00 00 */	li r4, 0
/* 80515560  4B E8 8A 95 */	bl mEv_reserve_common_area
/* 80515564  48 00 00 1C */	b lbl_80515580
lbl_80515568:
/* 80515568  80 03 00 00 */	lwz r0, 0(r3)
/* 8051556C  2C 00 00 01 */	cmpwi r0, 1
/* 80515570  40 82 00 10 */	bne lbl_80515580
/* 80515574  38 00 02 58 */	li r0, 0x258
/* 80515578  3B A0 00 01 */	li r29, 1
/* 8051557C  90 1E 01 80 */	stw r0, 0x180(r30)
lbl_80515580:
/* 80515580  90 7E 01 94 */	stw r3, 0x194(r30)
/* 80515584  7F C3 F3 78 */	mr r3, r30
/* 80515588  7F A4 EB 78 */	mr r4, r29
/* 8051558C  48 00 05 41 */	bl aGHC_setupAction
/* 80515590  39 61 00 20 */	addi r11, r1, 0x20
/* 80515594  4B B8 59 8D */	bl func_8009AF20
/* 80515598  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051559C  7C 08 03 A6 */	mtlr r0
/* 805155A0  38 21 00 20 */	addi r1, r1, 0x20
/* 805155A4  4E 80 00 20 */	blr 
