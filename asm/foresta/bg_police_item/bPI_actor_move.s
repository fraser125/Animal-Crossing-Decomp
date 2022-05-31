lbl_804BE5AC:
/* 804BE5AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804BE5B0  7C 08 02 A6 */	mflr r0
/* 804BE5B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 804BE5B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804BE5BC  7C 7F 1B 78 */	mr r31, r3
/* 804BE5C0  93 C1 00 08 */	stw r30, 8(r1)
/* 804BE5C4  7C 9E 23 78 */	mr r30, r4
/* 804BE5C8  4B EE 98 29 */	bl mFI_FGisUpDate
/* 804BE5CC  2C 03 00 01 */	cmpwi r3, 1
/* 804BE5D0  41 82 00 10 */	beq lbl_804BE5E0
/* 804BE5D4  4B EE 98 D9 */	bl mFI_ItemisBorn
/* 804BE5D8  2C 03 00 01 */	cmpwi r3, 1
/* 804BE5DC  40 82 00 10 */	bne lbl_804BE5EC
lbl_804BE5E0:
/* 804BE5E0  7F E3 FB 78 */	mr r3, r31
/* 804BE5E4  7F C4 F3 78 */	mr r4, r30
/* 804BE5E8  4B FF FF 55 */	bl bPI_renew_draw_and_crs_data
lbl_804BE5EC:
/* 804BE5EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804BE5F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804BE5F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804BE5F8  7C 08 03 A6 */	mtlr r0
/* 804BE5FC  38 21 00 10 */	addi r1, r1, 0x10
/* 804BE600  4E 80 00 20 */	blr 
