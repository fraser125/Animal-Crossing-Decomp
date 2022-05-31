lbl_803FD5B4:
/* 803FD5B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FD5B8  7C 08 02 A6 */	mflr r0
/* 803FD5BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FD5C0  4B FB 65 49 */	bl mLd_PlayerManKindCheck
/* 803FD5C4  2C 03 00 00 */	cmpwi r3, 0
/* 803FD5C8  40 82 00 08 */	bne lbl_803FD5D0
/* 803FD5CC  4B C4 8D 05 */	bl famicom_internal_data_save
lbl_803FD5D0:
/* 803FD5D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FD5D4  7C 08 03 A6 */	mtlr r0
/* 803FD5D8  38 21 00 10 */	addi r1, r1, 0x10
/* 803FD5DC  4E 80 00 20 */	blr 
