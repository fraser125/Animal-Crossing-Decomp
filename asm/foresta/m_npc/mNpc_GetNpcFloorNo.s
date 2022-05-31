lbl_803D3904:
/* 803D3904  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D3908  7C 08 02 A6 */	mflr r0
/* 803D390C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D3910  4B FD 13 BD */	bl mFI_GetFieldId
/* 803D3914  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D3918  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 803D391C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803D3920  3C 65 00 02 */	addis r3, r5, 2
/* 803D3924  2C 00 40 00 */	cmpwi r0, 0x4000
/* 803D3928  A0 83 65 1C */	lhz r4, 0x651c(r3)
/* 803D392C  38 60 FF FF */	li r3, -1
/* 803D3930  40 82 00 3C */	bne lbl_803D396C
/* 803D3934  28 04 00 00 */	cmplwi r4, 0
/* 803D3938  41 82 00 34 */	beq lbl_803D396C
/* 803D393C  28 04 FF FF */	cmplwi r4, 0xffff
/* 803D3940  41 82 00 2C */	beq lbl_803D396C
/* 803D3944  3C 65 00 01 */	addis r3, r5, 1
/* 803D3948  38 A0 00 0F */	li r5, 0xf
/* 803D394C  38 63 74 38 */	addi r3, r3, 0x7438
/* 803D3950  4B FF 8D 8D */	bl mNpc_SearchAnimalinfo
/* 803D3954  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D3958  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D395C  1C 03 00 38 */	mulli r0, r3, 0x38
/* 803D3960  3C 64 00 02 */	addis r3, r4, 2
/* 803D3964  7C 63 02 14 */	add r3, r3, r0
/* 803D3968  88 63 61 93 */	lbz r3, 0x6193(r3)
lbl_803D396C:
/* 803D396C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D3970  7C 08 03 A6 */	mtlr r0
/* 803D3974  38 21 00 10 */	addi r1, r1, 0x10
/* 803D3978  4E 80 00 20 */	blr 
