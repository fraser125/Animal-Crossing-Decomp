lbl_803E61E0:
/* 803E61E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E61E4  7C 08 02 A6 */	mflr r0
/* 803E61E8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E61EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E61F0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E61F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E61F8  80 83 00 14 */	lwz r4, 0x14(r3)
/* 803E61FC  38 04 FF EC */	addi r0, r4, -20
/* 803E6200  28 00 00 02 */	cmplwi r0, 2
/* 803E6204  40 81 00 14 */	ble lbl_803E6218
/* 803E6208  2C 04 00 28 */	cmpwi r4, 0x28
/* 803E620C  41 82 00 0C */	beq lbl_803E6218
/* 803E6210  2C 04 00 29 */	cmpwi r4, 0x29
/* 803E6214  40 82 00 4C */	bne lbl_803E6260
lbl_803E6218:
/* 803E6218  4B FB EA B5 */	bl mFI_GetFieldId
/* 803E621C  7C 7F 1B 78 */	mr r31, r3
/* 803E6220  4B FB FB AD */	bl mFI_GetNowPlayerHouseFloorNo
/* 803E6224  2C 03 FF FF */	cmpwi r3, -1
/* 803E6228  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 803E622C  38 04 A0 00 */	addi r0, r4, -24576
/* 803E6230  40 82 00 0C */	bne lbl_803E623C
/* 803E6234  38 60 FF FF */	li r3, -1
/* 803E6238  48 00 00 58 */	b lbl_803E6290
lbl_803E623C:
/* 803E623C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E6240  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803E6244  1C 80 26 B0 */	mulli r4, r0, 0x26b0
/* 803E6248  3C A5 00 01 */	addis r5, r5, 1
/* 803E624C  1C 03 08 A8 */	mulli r0, r3, 0x8a8
/* 803E6250  7C 65 22 14 */	add r3, r5, r4
/* 803E6254  7C 63 02 14 */	add r3, r3, r0
/* 803E6258  88 63 A5 C1 */	lbz r3, -0x5a3f(r3)
/* 803E625C  48 00 00 34 */	b lbl_803E6290
lbl_803E6260:
/* 803E6260  2C 04 00 2F */	cmpwi r4, 0x2f
/* 803E6264  40 82 00 10 */	bne lbl_803E6274
/* 803E6268  3C 63 00 02 */	addis r3, r3, 2
/* 803E626C  88 63 32 01 */	lbz r3, 0x3201(r3)
/* 803E6270  48 00 00 20 */	b lbl_803E6290
lbl_803E6274:
/* 803E6274  2C 04 00 06 */	cmpwi r4, 6
/* 803E6278  41 82 00 0C */	beq lbl_803E6284
/* 803E627C  2C 04 00 30 */	cmpwi r4, 0x30
/* 803E6280  40 82 00 0C */	bne lbl_803E628C
lbl_803E6284:
/* 803E6284  4B FE D6 F9 */	bl mNpc_GetNpcWallNo
/* 803E6288  48 00 00 08 */	b lbl_803E6290
lbl_803E628C:
/* 803E628C  38 60 FF FF */	li r3, -1
lbl_803E6290:
/* 803E6290  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E6294  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E6298  7C 08 03 A6 */	mtlr r0
/* 803E629C  38 21 00 10 */	addi r1, r1, 0x10
/* 803E62A0  4E 80 00 20 */	blr 
