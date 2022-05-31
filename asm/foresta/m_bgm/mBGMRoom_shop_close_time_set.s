lbl_80378CF4:
/* 80378CF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80378CF8  7C 08 02 A6 */	mflr r0
/* 80378CFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80378D00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80378D04  7C 7F 1B 78 */	mr r31, r3
/* 80378D08  48 02 BF 89 */	bl mFI_CheckFieldData
/* 80378D0C  2C 03 00 00 */	cmpwi r3, 0
/* 80378D10  41 82 00 90 */	beq lbl_80378DA0
/* 80378D14  48 02 BF B9 */	bl mFI_GetFieldId
/* 80378D18  54 64 04 3E */	clrlwi r4, r3, 0x10
/* 80378D1C  28 04 30 01 */	cmplwi r4, 0x3001
/* 80378D20  41 82 00 1C */	beq lbl_80378D3C
/* 80378D24  38 03 CF FA */	addi r0, r3, -12294
/* 80378D28  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 80378D2C  28 00 00 02 */	cmplwi r0, 2
/* 80378D30  40 81 00 0C */	ble lbl_80378D3C
/* 80378D34  28 04 30 09 */	cmplwi r4, 0x3009
/* 80378D38  40 82 00 68 */	bne lbl_80378DA0
lbl_80378D3C:
/* 80378D3C  38 61 00 08 */	addi r3, r1, 8
/* 80378D40  38 80 00 08 */	li r4, 8
/* 80378D44  4B CE 43 25 */	bl bzero
/* 80378D48  48 07 19 05 */	bl mSP_GetShopCloseTime_Bgm
/* 80378D4C  98 61 00 0A */	stb r3, 0xa(r1)
/* 80378D50  38 61 00 08 */	addi r3, r1, 8
/* 80378D54  38 80 00 05 */	li r4, 5
/* 80378D58  48 08 E3 79 */	bl lbRTC_Sub_mm
/* 80378D5C  88 01 00 09 */	lbz r0, 9(r1)
/* 80378D60  38 61 00 08 */	addi r3, r1, 8
/* 80378D64  88 A1 00 0A */	lbz r5, 0xa(r1)
/* 80378D68  38 80 00 05 */	li r4, 5
/* 80378D6C  54 00 35 32 */	rlwinm r0, r0, 6, 0x14, 0x19
/* 80378D70  88 C1 00 08 */	lbz r6, 8(r1)
/* 80378D74  50 A0 63 E6 */	rlwimi r0, r5, 0xc, 0xf, 0x13
/* 80378D78  50 C0 06 BE */	rlwimi r0, r6, 0, 0x1a, 0x1f
/* 80378D7C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80378D80  48 08 E3 CD */	bl lbRTC_Sub_ss
/* 80378D84  88 01 00 09 */	lbz r0, 9(r1)
/* 80378D88  88 61 00 0A */	lbz r3, 0xa(r1)
/* 80378D8C  54 00 35 32 */	rlwinm r0, r0, 6, 0x14, 0x19
/* 80378D90  88 81 00 08 */	lbz r4, 8(r1)
/* 80378D94  50 60 63 E6 */	rlwimi r0, r3, 0xc, 0xf, 0x13
/* 80378D98  50 80 06 BE */	rlwimi r0, r4, 0, 0x1a, 0x1f
/* 80378D9C  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80378DA0:
/* 80378DA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80378DA4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80378DA8  7C 08 03 A6 */	mtlr r0
/* 80378DAC  38 21 00 20 */	addi r1, r1, 0x20
/* 80378DB0  4E 80 00 20 */	blr 
