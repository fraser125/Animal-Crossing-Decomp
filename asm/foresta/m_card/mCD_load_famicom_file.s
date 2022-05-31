lbl_803FD5E0:
/* 803FD5E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803FD5E4  7C 08 02 A6 */	mflr r0
/* 803FD5E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803FD5EC  4B FB 65 1D */	bl mLd_PlayerManKindCheck
/* 803FD5F0  2C 03 00 00 */	cmpwi r3, 0
/* 803FD5F4  40 82 00 08 */	bne lbl_803FD5FC
/* 803FD5F8  4B C4 8B 95 */	bl famicom_internal_data_load
lbl_803FD5FC:
/* 803FD5FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803FD600  7C 08 03 A6 */	mtlr r0
/* 803FD604  38 21 00 10 */	addi r1, r1, 0x10
/* 803FD608  4E 80 00 20 */	blr 
