lbl_803E70AC:
/* 803E70AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E70B0  7C 08 02 A6 */	mflr r0
/* 803E70B4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E70B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E70BC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E70C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E70C4  83 E3 00 14 */	lwz r31, 0x14(r3)
/* 803E70C8  4B FB DC 05 */	bl mFI_GetFieldId
/* 803E70CC  2C 1F 00 32 */	cmpwi r31, 0x32
/* 803E70D0  40 82 00 0C */	bne lbl_803E70DC
/* 803E70D4  38 60 00 0B */	li r3, 0xb
/* 803E70D8  48 00 00 74 */	b lbl_803E714C
lbl_803E70DC:
/* 803E70DC  2C 1F 00 33 */	cmpwi r31, 0x33
/* 803E70E0  40 82 00 0C */	bne lbl_803E70EC
/* 803E70E4  38 60 00 0C */	li r3, 0xc
/* 803E70E8  48 00 00 64 */	b lbl_803E714C
lbl_803E70EC:
/* 803E70EC  2C 1F 00 2F */	cmpwi r31, 0x2f
/* 803E70F0  40 82 00 0C */	bne lbl_803E70FC
/* 803E70F4  38 60 00 08 */	li r3, 8
/* 803E70F8  48 00 00 54 */	b lbl_803E714C
lbl_803E70FC:
/* 803E70FC  2C 1F 00 06 */	cmpwi r31, 6
/* 803E7100  41 82 00 0C */	beq lbl_803E710C
/* 803E7104  2C 1F 00 30 */	cmpwi r31, 0x30
/* 803E7108  40 82 00 0C */	bne lbl_803E7114
lbl_803E710C:
/* 803E710C  38 60 00 0A */	li r3, 0xa
/* 803E7110  48 00 00 3C */	b lbl_803E714C
lbl_803E7114:
/* 803E7114  54 60 04 26 */	rlwinm r0, r3, 0, 0x10, 0x13
/* 803E7118  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 803E711C  2C 00 60 00 */	cmpwi r0, 0x6000
/* 803E7120  40 82 00 28 */	bne lbl_803E7148
/* 803E7124  38 03 A0 00 */	addi r0, r3, -24576
/* 803E7128  54 1F 07 BE */	clrlwi r31, r0, 0x1e
/* 803E712C  4B FB EC A1 */	bl mFI_GetNowPlayerHouseFloorNo
/* 803E7130  20 63 00 02 */	subfic r3, r3, 2
/* 803E7134  57 E0 08 3C */	slwi r0, r31, 1
/* 803E7138  7C 63 00 34 */	cntlzw r3, r3
/* 803E713C  54 63 D9 7E */	srwi r3, r3, 5
/* 803E7140  7C 63 02 14 */	add r3, r3, r0
/* 803E7144  48 00 00 08 */	b lbl_803E714C
lbl_803E7148:
/* 803E7148  38 60 FF FF */	li r3, -1
lbl_803E714C:
/* 803E714C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E7150  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E7154  7C 08 03 A6 */	mtlr r0
/* 803E7158  38 21 00 10 */	addi r1, r1, 0x10
/* 803E715C  4E 80 00 20 */	blr 
