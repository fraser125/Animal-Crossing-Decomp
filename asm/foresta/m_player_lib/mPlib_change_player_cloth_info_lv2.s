lbl_803D97A8:
/* 803D97A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D97AC  7C 08 02 A6 */	mflr r0
/* 803D97B0  38 63 10 88 */	addi r3, r3, 0x1088
/* 803D97B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D97B8  4B FF FF B5 */	bl mPlib_change_player_cloth_info
/* 803D97BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D97C0  7C 08 03 A6 */	mtlr r0
/* 803D97C4  38 21 00 10 */	addi r1, r1, 0x10
/* 803D97C8  4E 80 00 20 */	blr 
