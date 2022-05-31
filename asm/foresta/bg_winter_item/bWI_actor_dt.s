lbl_804BEBD4:
/* 804BEBD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BEBD8  7C 08 02 A6 */	mflr r0
/* 804BEBDC  7C 65 1B 78 */	mr r5, r3
/* 804BEBE0  7C 83 23 78 */	mr r3, r4
/* 804BEBE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BEBE8  7C A4 2B 78 */	mr r4, r5
/* 804BEBEC  38 A5 01 74 */	addi r5, r5, 0x174
/* 804BEBF0  48 00 61 75 */	bl bg_item_common_destruct
/* 804BEBF4  48 00 03 41 */	bl bIT_clip_dt
/* 804BEBF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BEBFC  7C 08 03 A6 */	mtlr r0
/* 804BEC00  38 21 00 10 */	addi r1, r1, 0x10
/* 804BEC04  4E 80 00 20 */	blr 
