lbl_803E5F8C:
/* 803E5F8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E5F90  7C 08 02 A6 */	mflr r0
/* 803E5F94  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803E5F98  3C 80 80 66 */	lis r4, data_8065C810@ha /* 0x8065C810@ha */
/* 803E5F9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E5FA0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803E5FA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E5FA8  93 C1 00 08 */	stw r30, 8(r1)
/* 803E5FAC  3B C4 C8 10 */	addi r30, r4, data_8065C810@l /* 0x8065C810@l */
/* 803E5FB0  80 A3 00 14 */	lwz r5, 0x14(r3)
/* 803E5FB4  38 05 FF D6 */	addi r0, r5, -42
/* 803E5FB8  28 00 00 02 */	cmplwi r0, 2
/* 803E5FBC  40 81 00 0C */	ble lbl_803E5FC8
/* 803E5FC0  2C 05 00 2D */	cmpwi r5, 0x2d
/* 803E5FC4  40 82 00 14 */	bne lbl_803E5FD8
lbl_803E5FC8:
/* 803E5FC8  38 7E 0A A8 */	addi r3, r30, 0xaa8
/* 803E5FCC  4B FF FF BD */	bl mRmTp_PrintFloorIndex
/* 803E5FD0  38 60 00 52 */	li r3, 0x52
/* 803E5FD4  48 00 01 F4 */	b lbl_803E61C8
lbl_803E5FD8:
/* 803E5FD8  38 05 FF EC */	addi r0, r5, -20
/* 803E5FDC  28 00 00 02 */	cmplwi r0, 2
/* 803E5FE0  40 81 00 14 */	ble lbl_803E5FF4
/* 803E5FE4  2C 05 00 28 */	cmpwi r5, 0x28
/* 803E5FE8  41 82 00 0C */	beq lbl_803E5FF4
/* 803E5FEC  2C 05 00 29 */	cmpwi r5, 0x29
/* 803E5FF0  40 82 00 84 */	bne lbl_803E6074
lbl_803E5FF4:
/* 803E5FF4  4B FB EC D9 */	bl mFI_GetFieldId
/* 803E5FF8  7C 7F 1B 78 */	mr r31, r3
/* 803E5FFC  4B FB FD D1 */	bl mFI_GetNowPlayerHouseFloorNo
/* 803E6000  2C 03 FF FF */	cmpwi r3, -1
/* 803E6004  57 E4 04 3E */	clrlwi r4, r31, 0x10
/* 803E6008  38 04 A0 00 */	addi r0, r4, -24576
/* 803E600C  40 82 00 0C */	bne lbl_803E6018
/* 803E6010  38 60 00 00 */	li r3, 0
/* 803E6014  48 00 01 B4 */	b lbl_803E61C8
lbl_803E6018:
/* 803E6018  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803E601C  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803E6020  1C 80 26 B0 */	mulli r4, r0, 0x26b0
/* 803E6024  3C A5 00 01 */	addis r5, r5, 1
/* 803E6028  1C 03 08 A8 */	mulli r0, r3, 0x8a8
/* 803E602C  7C 65 22 14 */	add r3, r5, r4
/* 803E6030  7C 63 02 14 */	add r3, r3, r0
/* 803E6034  88 63 A5 C0 */	lbz r3, -0x5a40(r3)
/* 803E6038  2C 03 00 00 */	cmpwi r3, 0
/* 803E603C  41 80 00 10 */	blt lbl_803E604C
/* 803E6040  2C 03 00 56 */	cmpwi r3, 0x56
/* 803E6044  40 80 00 08 */	bge lbl_803E604C
/* 803E6048  48 00 01 80 */	b lbl_803E61C8
lbl_803E604C:
/* 803E604C  2C 03 00 57 */	cmpwi r3, 0x57
/* 803E6050  41 80 00 1C */	blt lbl_803E606C
/* 803E6054  2C 03 00 5E */	cmpwi r3, 0x5e
/* 803E6058  41 81 00 14 */	bgt lbl_803E606C
/* 803E605C  38 7E 0A B8 */	addi r3, r30, 0xab8
/* 803E6060  4B FF FF 29 */	bl mRmTp_PrintFloorIndex
/* 803E6064  38 60 00 53 */	li r3, 0x53
/* 803E6068  48 00 01 60 */	b lbl_803E61C8
lbl_803E606C:
/* 803E606C  38 60 00 00 */	li r3, 0
/* 803E6070  48 00 01 58 */	b lbl_803E61C8
lbl_803E6074:
/* 803E6074  2C 05 00 2F */	cmpwi r5, 0x2f
/* 803E6078  40 82 00 10 */	bne lbl_803E6088
/* 803E607C  3C 63 00 02 */	addis r3, r3, 2
/* 803E6080  88 63 32 00 */	lbz r3, 0x3200(r3)
/* 803E6084  48 00 01 44 */	b lbl_803E61C8
lbl_803E6088:
/* 803E6088  38 05 FF FA */	addi r0, r5, -6
/* 803E608C  28 00 00 2D */	cmplwi r0, 0x2d
/* 803E6090  41 81 01 34 */	bgt lbl_803E61C4
/* 803E6094  3C 60 80 66 */	lis r3, lit_664@ha /* 0x8065D410@ha */
/* 803E6098  54 00 10 3A */	slwi r0, r0, 2
/* 803E609C  38 63 D4 10 */	addi r3, r3, lit_664@l /* 0x8065D410@l */
/* 803E60A0  7C 03 00 2E */	lwzx r0, r3, r0
/* 803E60A4  7C 09 03 A6 */	mtctr r0
/* 803E60A8  4E 80 04 20 */	bctr 
lbl_803E60AC:
/* 803E60AC  4B FE D8 59 */	bl mNpc_GetNpcFloorNo
/* 803E60B0  48 00 01 18 */	b lbl_803E61C8
lbl_803E60B4:
/* 803E60B4  38 7E 0A CC */	addi r3, r30, 0xacc
/* 803E60B8  4B FF FE D1 */	bl mRmTp_PrintFloorIndex
/* 803E60BC  38 60 00 43 */	li r3, 0x43
/* 803E60C0  48 00 01 08 */	b lbl_803E61C8
lbl_803E60C4:
/* 803E60C4  38 7E 0A D8 */	addi r3, r30, 0xad8
/* 803E60C8  4B FF FE C1 */	bl mRmTp_PrintFloorIndex
/* 803E60CC  38 60 00 44 */	li r3, 0x44
/* 803E60D0  48 00 00 F8 */	b lbl_803E61C8
lbl_803E60D4:
/* 803E60D4  38 7E 0A E4 */	addi r3, r30, 0xae4
/* 803E60D8  4B FF FE B1 */	bl mRmTp_PrintFloorIndex
/* 803E60DC  38 60 00 45 */	li r3, 0x45
/* 803E60E0  48 00 00 E8 */	b lbl_803E61C8
lbl_803E60E4:
/* 803E60E4  38 7E 0A F0 */	addi r3, r30, 0xaf0
/* 803E60E8  4B FF FE A1 */	bl mRmTp_PrintFloorIndex
/* 803E60EC  38 60 00 46 */	li r3, 0x46
/* 803E60F0  48 00 00 D8 */	b lbl_803E61C8
lbl_803E60F4:
/* 803E60F4  38 7E 0B 00 */	addi r3, r30, 0xb00
/* 803E60F8  4B FF FE 91 */	bl mRmTp_PrintFloorIndex
/* 803E60FC  38 60 00 47 */	li r3, 0x47
/* 803E6100  48 00 00 C8 */	b lbl_803E61C8
lbl_803E6104:
/* 803E6104  38 7E 0B 14 */	addi r3, r30, 0xb14
/* 803E6108  4B FF FE 81 */	bl mRmTp_PrintFloorIndex
/* 803E610C  38 60 00 48 */	li r3, 0x48
/* 803E6110  48 00 00 B8 */	b lbl_803E61C8
lbl_803E6114:
/* 803E6114  38 7E 0B 28 */	addi r3, r30, 0xb28
/* 803E6118  4B FF FE 71 */	bl mRmTp_PrintFloorIndex
/* 803E611C  38 60 00 49 */	li r3, 0x49
/* 803E6120  48 00 00 A8 */	b lbl_803E61C8
lbl_803E6124:
/* 803E6124  38 7E 0B 34 */	addi r3, r30, 0xb34
/* 803E6128  4B FF FE 61 */	bl mRmTp_PrintFloorIndex
/* 803E612C  38 60 00 4A */	li r3, 0x4a
/* 803E6130  48 00 00 98 */	b lbl_803E61C8
lbl_803E6134:
/* 803E6134  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 803E6138  4B FF FE 51 */	bl mRmTp_PrintFloorIndex
/* 803E613C  38 60 00 4B */	li r3, 0x4b
/* 803E6140  48 00 00 88 */	b lbl_803E61C8
lbl_803E6144:
/* 803E6144  38 7E 0B 58 */	addi r3, r30, 0xb58
/* 803E6148  4B FF FE 41 */	bl mRmTp_PrintFloorIndex
/* 803E614C  38 60 00 4C */	li r3, 0x4c
/* 803E6150  48 00 00 78 */	b lbl_803E61C8
lbl_803E6154:
/* 803E6154  38 7E 0B 70 */	addi r3, r30, 0xb70
/* 803E6158  4B FF FE 31 */	bl mRmTp_PrintFloorIndex
/* 803E615C  38 60 00 4D */	li r3, 0x4d
/* 803E6160  48 00 00 68 */	b lbl_803E61C8
lbl_803E6164:
/* 803E6164  38 7E 0B 84 */	addi r3, r30, 0xb84
/* 803E6168  4B FF FE 21 */	bl mRmTp_PrintFloorIndex
/* 803E616C  38 60 00 4E */	li r3, 0x4e
/* 803E6170  48 00 00 58 */	b lbl_803E61C8
lbl_803E6174:
/* 803E6174  38 7E 0B 9C */	addi r3, r30, 0xb9c
/* 803E6178  4B FF FE 11 */	bl mRmTp_PrintFloorIndex
/* 803E617C  38 60 00 4F */	li r3, 0x4f
/* 803E6180  48 00 00 48 */	b lbl_803E61C8
lbl_803E6184:
/* 803E6184  38 7E 0B B0 */	addi r3, r30, 0xbb0
/* 803E6188  4B FF FE 01 */	bl mRmTp_PrintFloorIndex
/* 803E618C  38 60 00 50 */	li r3, 0x50
/* 803E6190  48 00 00 38 */	b lbl_803E61C8
lbl_803E6194:
/* 803E6194  38 7E 0B C4 */	addi r3, r30, 0xbc4
/* 803E6198  4B FF FD F1 */	bl mRmTp_PrintFloorIndex
/* 803E619C  38 60 00 51 */	li r3, 0x51
/* 803E61A0  48 00 00 28 */	b lbl_803E61C8
lbl_803E61A4:
/* 803E61A4  38 7E 0B DC */	addi r3, r30, 0xbdc
/* 803E61A8  4B FF FD E1 */	bl mRmTp_PrintFloorIndex
/* 803E61AC  38 60 00 54 */	li r3, 0x54
/* 803E61B0  48 00 00 18 */	b lbl_803E61C8
lbl_803E61B4:
/* 803E61B4  38 7E 0B F0 */	addi r3, r30, 0xbf0
/* 803E61B8  4B FF FD D1 */	bl mRmTp_PrintFloorIndex
/* 803E61BC  38 60 00 55 */	li r3, 0x55
/* 803E61C0  48 00 00 08 */	b lbl_803E61C8
lbl_803E61C4:
/* 803E61C4  38 60 FF FF */	li r3, -1
lbl_803E61C8:
/* 803E61C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E61CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E61D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803E61D4  7C 08 03 A6 */	mtlr r0
/* 803E61D8  38 21 00 10 */	addi r1, r1, 0x10
/* 803E61DC  4E 80 00 20 */	blr 
