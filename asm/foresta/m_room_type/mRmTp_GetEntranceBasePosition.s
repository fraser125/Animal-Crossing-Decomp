lbl_803E7060:
/* 803E7060  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E7064  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803E7068  80 04 00 14 */	lwz r0, 0x14(r4)
/* 803E706C  2C 00 00 23 */	cmpwi r0, 0x23
/* 803E7070  40 82 00 34 */	bne lbl_803E70A4
/* 803E7074  3C 80 80 64 */	lis r4, lit_999@ha /* 0x8064316C@ha */
/* 803E7078  3C A0 80 64 */	lis r5, lit_1000@ha /* 0x80643170@ha */
/* 803E707C  38 C4 31 6C */	addi r6, r4, lit_999@l /* 0x8064316C@l */
/* 803E7080  C0 25 31 70 */	lfs f1, lit_1000@l(r5)  /* 0x80643170@l */
/* 803E7084  C0 06 00 00 */	lfs f0, 0(r6)
/* 803E7088  3C 80 80 64 */	lis r4, data_80643154@ha /* 0x80643154@ha */
/* 803E708C  D0 03 00 00 */	stfs f0, 0(r3)
/* 803E7090  C0 04 31 54 */	lfs f0, data_80643154@l(r4)  /* 0x80643154@l */
/* 803E7094  D0 23 00 04 */	stfs f1, 4(r3)
/* 803E7098  D0 03 00 08 */	stfs f0, 8(r3)
/* 803E709C  38 60 00 01 */	li r3, 1
/* 803E70A0  4E 80 00 20 */	blr 
lbl_803E70A4:
/* 803E70A4  38 60 00 00 */	li r3, 0
/* 803E70A8  4E 80 00 20 */	blr 
