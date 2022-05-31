lbl_8050F444:
/* 8050F444  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050F448  7C 08 02 A6 */	mflr r0
/* 8050F44C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050F450  4B FF FE 9D */	bl mMck_check_key_get_hit_count
/* 8050F454  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050F458  1C 63 00 03 */	mulli r3, r3, 3
/* 8050F45C  7C 08 03 A6 */	mtlr r0
/* 8050F460  38 21 00 10 */	addi r1, r1, 0x10
/* 8050F464  4E 80 00 20 */	blr 
