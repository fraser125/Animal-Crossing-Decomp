lbl_803C9E94:
/* 803C9E94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C9E98  7C 08 02 A6 */	mflr r0
/* 803C9E9C  3C 60 81 17 */	lis r3, mNtc_auto_nwrite_data@ha /* 0x8116B2B8@ha */
/* 803C9EA0  3C 80 80 66 */	lis r4, data_8065AD30@ha /* 0x8065AD30@ha */
/* 803C9EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C9EA8  38 63 B2 B8 */	addi r3, r3, mNtc_auto_nwrite_data@l /* 0x8116B2B8@l */
/* 803C9EAC  38 A0 00 AC */	li r5, 0xac
/* 803C9EB0  38 84 AD 30 */	addi r4, r4, data_8065AD30@l /* 0x8065AD30@l */
/* 803C9EB4  4B FF 0B 71 */	bl func_803BAA24
/* 803C9EB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C9EBC  7C 08 03 A6 */	mtlr r0
/* 803C9EC0  38 21 00 10 */	addi r1, r1, 0x10
/* 803C9EC4  4E 80 00 20 */	blr 
