lbl_80378770:
/* 80378770  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80378774  7C 08 02 A6 */	mflr r0
/* 80378778  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037877C  39 61 00 20 */	addi r11, r1, 0x20
/* 80378780  4B D2 27 51 */	bl func_8009AED0
/* 80378784  3C 80 80 64 */	lis r4, data_806412F4@ha /* 0x806412F4@ha */
/* 80378788  7C 7C 1B 78 */	mr r28, r3
/* 8037878C  3B C4 12 F4 */	addi r30, r4, data_806412F4@l /* 0x806412F4@l */
/* 80378790  3B A0 00 00 */	li r29, 0
/* 80378794  3B E0 00 00 */	li r31, 0
lbl_80378798:
/* 80378798  7C 9E FA AE */	lhax r4, r30, r31
/* 8037879C  7F 83 E3 78 */	mr r3, r28
/* 803787A0  38 A0 00 01 */	li r5, 1
/* 803787A4  4B FF D5 3D */	bl Actor_info_name_search
/* 803787A8  28 03 00 00 */	cmplwi r3, 0
/* 803787AC  40 82 00 14 */	bne lbl_803787C0
/* 803787B0  3B BD 00 01 */	addi r29, r29, 1
/* 803787B4  3B FF 00 02 */	addi r31, r31, 2
/* 803787B8  2C 1D 00 04 */	cmpwi r29, 4
/* 803787BC  41 80 FF DC */	blt lbl_80378798
lbl_803787C0:
/* 803787C0  39 61 00 20 */	addi r11, r1, 0x20
/* 803787C4  4B D2 27 59 */	bl func_8009AF1C
/* 803787C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803787CC  7C 08 03 A6 */	mtlr r0
/* 803787D0  38 21 00 20 */	addi r1, r1, 0x20
/* 803787D4  4E 80 00 20 */	blr 
