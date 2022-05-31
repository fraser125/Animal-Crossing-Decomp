lbl_8039F4AC:
/* 8039F4AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8039F4B0  7C 08 02 A6 */	mflr r0
/* 8039F4B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8039F4B8  39 61 00 20 */	addi r11, r1, 0x20
/* 8039F4BC  4B CF BA 19 */	bl func_8009AED4
/* 8039F4C0  3C 60 80 65 */	lis r3, data_806521F8@ha /* 0x806521F8@ha */
/* 8039F4C4  3B C0 FF FF */	li r30, -1
/* 8039F4C8  38 03 21 F8 */	addi r0, r3, data_806521F8@l /* 0x806521F8@l */
/* 8039F4CC  3B A0 00 00 */	li r29, 0
/* 8039F4D0  7C 1F 03 78 */	mr r31, r0
lbl_8039F4D4:
/* 8039F4D4  80 7F 00 00 */	lwz r3, 0(r31)
/* 8039F4D8  38 80 00 01 */	li r4, 1
/* 8039F4DC  4B FF E6 25 */	bl mEv_check_status
/* 8039F4E0  2C 03 00 00 */	cmpwi r3, 0
/* 8039F4E4  41 82 00 0C */	beq lbl_8039F4F0
/* 8039F4E8  83 DF 00 00 */	lwz r30, 0(r31)
/* 8039F4EC  48 00 00 14 */	b lbl_8039F500
lbl_8039F4F0:
/* 8039F4F0  3B BD 00 01 */	addi r29, r29, 1
/* 8039F4F4  3B FF 00 04 */	addi r31, r31, 4
/* 8039F4F8  2C 1D 00 11 */	cmpwi r29, 0x11
/* 8039F4FC  41 80 FF D8 */	blt lbl_8039F4D4
lbl_8039F500:
/* 8039F500  7F C3 F3 78 */	mr r3, r30
/* 8039F504  39 61 00 20 */	addi r11, r1, 0x20
/* 8039F508  4B CF BA 19 */	bl func_8009AF20
/* 8039F50C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8039F510  7C 08 03 A6 */	mtlr r0
/* 8039F514  38 21 00 20 */	addi r1, r1, 0x20
/* 8039F518  4E 80 00 20 */	blr 
