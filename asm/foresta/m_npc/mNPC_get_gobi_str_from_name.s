lbl_803D64A8:
/* 803D64A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803D64AC  7C 08 02 A6 */	mflr r0
/* 803D64B0  28 03 00 00 */	cmplwi r3, 0
/* 803D64B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803D64B8  41 82 00 44 */	beq lbl_803D64FC
/* 803D64BC  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 803D64C0  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 803D64C4  2C 00 00 0E */	cmpwi r0, 0xe
/* 803D64C8  40 82 00 34 */	bne lbl_803D64FC
/* 803D64CC  54 80 05 3F */	clrlwi. r0, r4, 0x14
/* 803D64D0  40 80 00 10 */	bge lbl_803D64E0
/* 803D64D4  2C 00 00 EC */	cmpwi r0, 0xec
/* 803D64D8  41 80 00 08 */	blt lbl_803D64E0
/* 803D64DC  38 00 00 00 */	li r0, 0
lbl_803D64E0:
/* 803D64E0  1C 00 00 06 */	mulli r0, r0, 6
/* 803D64E4  3C 80 80 97 */	lis r4, data_8096CC90@ha /* 0x8096CC90@ha */
/* 803D64E8  38 84 CC 90 */	addi r4, r4, data_8096CC90@l /* 0x8096CC90@l */
/* 803D64EC  7C A4 02 14 */	add r5, r4, r0
/* 803D64F0  A0 A5 00 02 */	lhz r5, 2(r5)
/* 803D64F4  38 80 00 0A */	li r4, 0xa
/* 803D64F8  48 01 87 D5 */	bl mString_Load_StringFromRom
lbl_803D64FC:
/* 803D64FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803D6500  7C 08 03 A6 */	mtlr r0
/* 803D6504  38 21 00 10 */	addi r1, r1, 0x10
/* 803D6508  4E 80 00 20 */	blr 
